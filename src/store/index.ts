import { CascaderOptionType } from "antd/lib/cascader";
import { configure, flow, makeObservable, observable, when } from "mobx";
import { CascaderContainerProps } from "../../typings/CascaderProps";

configure({ enforceActions: "observed", isolateGlobalState: true, useProxies: "never" });

export class Store {
    sub?: mx.Subscription;
    /**
     * dispose
     */
    public dispose() {}

    constructor(public mxOption: CascaderContainerProps) {
        makeObservable(this, { options: observable, load: flow.bound });

        when(
            () => !!this.mxOption.mxObject,
            () => {
                this.update();

                this.sub = mx.data.subscribe(
                    {
                        guid: this.mxOption.mxObject!.getGuid(),
                        callback: () => {
                            this.update();
                            //等待视图刷新
                            setTimeout(() => {
                                this.drawSelection();
                            }, 1);
                        }
                    },
                    //@ts-ignore
                    this.mxOption.mxform
                );
            },
            {
                onError(e) {
                    console.error(e);
                }
            }
        );
    }
    update() {
        throw new Error("Method not implemented.");
    }
    drawSelection() {
        throw new Error("Method not implemented.");
    }

    public options: CascaderOptionType[] | undefined = [
        {
            value: "zhejiang",
            label: "Zhejiang",
            isLeaf: false
        },
        {
            value: "jiangsu",
            label: "Jiangsu",
            isLeaf: false
        }
    ];

    *load(selectedOptions?: CascaderOptionType[]) {
        if (!selectedOptions) {
            return;
        }
        const targetOption = selectedOptions[selectedOptions.length - 1];
        targetOption.loading = true;

        targetOption.children = yield new Promise<CascaderOptionType[]>((resolve, _reject) => {
            setTimeout(() => {
                resolve([
                    {
                        label: `${targetOption.label} Dynamic 1`,
                        value: "dynamic1"
                    },
                    {
                        label: `${targetOption.label} Dynamic 2`,
                        value: "dynamic2"
                    }
                ]);
            }, 1000);
        });

        targetOption.loading = false;
        this.options = [...this.options!];
    }
}
