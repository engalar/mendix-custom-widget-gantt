import { makeObservable } from "mobx";
import { BaseMxObject } from "./BaseMxObject";

export class MxTask extends BaseMxObject {
    /**
     *
     * @param guid mxobj guid
     * @param idx option index
     */
    constructor(guid: string) {
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
