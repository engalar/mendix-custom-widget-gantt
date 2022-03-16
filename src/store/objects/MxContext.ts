import { getReferencePart } from "@jeltemx/mendix-react-widget-utils";
import { Task } from "gantt-task-react";
import { computed, makeObservable, observable } from "mobx";
import { _W } from "../../../typings/GanttProps";
import { BaseMxObject } from "./BaseMxObject";
import { MxProject } from "./MxProject";
import { MxTask } from "./MxTask";

export class MxContext extends BaseMxObject {
    public dispose(): void {
        super.dispose();
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
            data: computed
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
