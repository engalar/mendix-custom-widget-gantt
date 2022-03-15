import { getObjects } from "@jeltemx/mendix-react-widget-utils";

export class BaseMxObject {
    static pendingGuids = new Set<string>();
    static th: any;
    static pending(guid: string) {
        this.pendingGuids.add(guid);
        if (this.th) {
            clearTimeout(this.th);
            this.th = undefined;
        }

        this.th = setTimeout(() => {
            getObjects(Array.from(this.pendingGuids.values())).then(objs => {
                if (objs) {
                    objs.forEach(obj => {
                        mx.data.update({
                            guid: obj.getGuid()
                        });
                    });
                    this.pendingGuids.clear();
                }
            });
            this.th = undefined;
        }, 200);
    }
    sub?: mx.Subscription;
    constructor(public guid: string) {
        if (!this.mxObject) {
            BaseMxObject.pending(guid);
        }
        this.sub = mx.data.subscribe({
            guid: guid,
            callback: guid => {
                //@ts-ignore
                this.onChange(guid);
            }
        });
    }
    get mxObject(): mendix.lib.MxObject | undefined {
        //@ts-ignore
        return mx.data.getCachedObject(this.guid);
    }
    public dispose(): void {
        if (this.sub) {
            mx.data.unsubscribe(this.sub);
            this.sub = undefined;
        }
    }
    onChange?: (guid: string) => void;
}
