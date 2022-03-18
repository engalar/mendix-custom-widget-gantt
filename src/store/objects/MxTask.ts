import { getReferencePart } from "@jeltemx/mendix-react-widget-utils";
import Big from "big.js";
import { Task } from "@engalar/gantt-task-react";
import { makeObservable, observable } from "mobx";
import { _W } from "../../../typings/GanttProps";
import { BaseMxObject } from "./BaseMxObject";

export class MxTask extends BaseMxObject {
    data?: Task;
    // dependency?: string;
    /**
     *
     * @param guid mxobj guid
     * @param idx option index
     */
    constructor(guid: string, public option: _W) {
        super(guid);
        makeObservable(this, { /* dependency: observable, */ data: observable });
        this.update();
        this.onChange = () => {
            this.update();
        };
    }
    update() {
        if (this.mxObject) {
            this.data = {
                id: this.guid,
                name: this.mxObject.get(this.option.attTaskName) as string,
                type: "task",
                start: new Date(this.mxObject.get(this.option.attTaskStart) as number),
                end: new Date(this.mxObject.get(this.option.attTaskEnd) as number),
                progress: Math.floor((this.mxObject.get(this.option.attTaskProgress) as Big).toNumber() * 100),
                isDisabled: this.mxObject.get(this.option.attTaskIsDisabled) as boolean,
                project: this.mxObject.get(
                    getReferencePart(this.option.entityProjectFromTask, "referenceAttr")
                ) as string,
                dependencies: this.mxObject.getReferences(
                    getReferencePart(this.option.entityTaskFromTask, "referenceAttr")
                )
            };
            /* this.dependency = this.mxObject.get(
                getReferencePart(this.option.entityTaskFromTask, "referenceAttr")
            ) as string; */
        }
    }
}
