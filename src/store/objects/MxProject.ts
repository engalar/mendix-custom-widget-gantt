import { getReferencePart } from "@jeltemx/mendix-react-widget-utils";
import { Big } from "big.js";
import { Task } from "@engalar/gantt-task-react";
import { makeObservable, observable } from "mobx";
import { _W } from "../../../typings/GanttProps";
import { BaseMxObject } from "./BaseMxObject";

export class MxProject extends BaseMxObject {
    data?: Task;
    /**
     *
     * @param guid mxobj guid
     * @param idx option index
     */
    constructor(guid: string, public option: _W) {
        super(guid);
        makeObservable(this, { data: observable });
        this.update();
        this.onChange = () => {
            this.update();
        };
    }
    update() {
        if (this.mxObject) {
            this.data = {
                id: this.guid,
                name: this.mxObject.get(this.option.attProjectName) as string,
                type: "project",
                start: new Date(this.mxObject.get(this.option.attProjectStart) as number),
                end: new Date(this.mxObject.get(this.option.attProjectEnd) as number),
                progress: (this.mxObject.get(this.option.attProjectProgress) as Big).toNumber(),
                isDisabled: this.mxObject.get(this.option.attProjectIsDisabled) as boolean,
                project: this.mxObject.get(
                    getReferencePart(this.option.entityProjectFromTask, "referenceAttr")
                ) as string,
                dependencies: [],
                hideChildren: false
            };
        }
    }
}
