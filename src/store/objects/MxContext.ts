import { getReferencePart } from "@jeltemx/mendix-react-widget-utils";
import { Task, ViewMode } from "gantt-task-react";
import { computed, makeObservable, observable } from "mobx";
import { _W } from "../../../typings/GanttProps";
import { BaseMxObject } from "./BaseMxObject";
import { MxProject } from "./MxProject";
import { MxTask } from "./MxTask";

export class MxContext extends BaseMxObject {
    subViewMode: mx.Subscription;
    viewMode: ViewMode = ViewMode.Day;
    public dispose(): void {
        super.dispose();
        mx.data.unsubscribe(this.subViewMode);
    }
    projectMap = new Map<string, MxProject>();
    taskMap = new Map<string, MxTask>();
    get data(): Task[] {
        return Array.from(this.projectMap.values())
            .filter(d => d.data)
            .map(d => d.data!)
            .concat(
                Array.from(this.taskMap.values())
                    .filter(d => d.data)
                    .map(d => d.data!)
            );
    }
    constructor(guid: string, public option: _W) {
        super(guid);
        makeObservable(this, {
            projectMap: observable,
            taskMap: observable,
            viewMode: observable,
            data: computed
        });

        this.subViewMode = mx.data.subscribe({
            guid,
            attr: option.attTimeScale,
            callback: guid => {
                const enumString = this.mxObject!.get(option.attTimeScale) as string;
                if (Object.keys(ViewMode).includes(enumString)) {
                    this.viewMode = enumString as ViewMode;
                } else {
                    console.error(`obj[${guid}] ${enumString} 是一个非法值 不是 ${Object.keys(ViewMode)}`);
                }
            }
        });

        const taskGuids = this.mxObject!.getReferences(getReferencePart(option.entityTask, "referenceAttr"));
        taskGuids.forEach(d => {
            this.taskMap.set(d, new MxTask(d, option));
        });

        const projectGuids = this.mxObject!.getReferences(getReferencePart(option.entityProject, "referenceAttr"));
        projectGuids.forEach(d => {
            this.projectMap.set(d, new MxProject(d, option));
        });
    }
}
