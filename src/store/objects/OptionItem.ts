import { makeObservable } from "mobx";
import { BaseMxObject } from "./BaseMxObject";

export class OptionItem extends BaseMxObject {
    /**
     *
     * @param guid mxobj guid
     * @param idx option index
     */
    constructor(guid: string, public idx: number) {
        super(guid);
        makeObservable(this, {});
        this.update();
        this.onChange = () => {
            this.update();
        };
    }
    update() {
        if (this.mxObject) {
            //todo
        }
    }
}
