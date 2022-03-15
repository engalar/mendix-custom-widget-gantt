import { autorun, configure, makeObservable, observable } from "mobx";
import { GanttContainerProps } from "../../typings/GanttProps";
import { MxContext } from "./objects/MxContext";

configure({ enforceActions: "observed", isolateGlobalState: true, useProxies: "never" });

export class Store {
    $context?: MxContext;
    
    public dispose() {
        if (this.$context) {
            this.$context.dispose();
        }
    }

    constructor(public $mxOption: GanttContainerProps) {
        makeObservable(this, { $mxOption: observable, $context: observable });

        autorun(() => {
            console.log(this.$mxOption.mxObject);
            if (this.$mxOption.mxObject) {
                if (this.$context) {
                    this.$context.dispose();
                }
                this.$context = new MxContext(this.$mxOption.mxObject.getGuid(), this.$mxOption);
            }
        });
    }
}
