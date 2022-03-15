import { configure, makeObservable, observable, reaction } from "mobx";
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

    constructor(public $option: GanttContainerProps) {
        makeObservable(this, { $option: observable, $context: observable });

        reaction(
            () => this.$option,
            () => {
                if (this.$option.mxObject) {
                    if (this.$context) {
                        this.$context.dispose();
                    }
                    this.$context = new MxContext(this.$option.mxObject.getGuid(), this.$option);
                }
            }
        );
    }
}
