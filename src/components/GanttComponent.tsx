import { createElement } from "react";
import { Store } from "../store";

import { Cascader as C } from "antd";
export interface GanttComponentProps {
    store: Store;
}

const onChange = (value: any, selectedOptions: any) => {
    console.log(value, selectedOptions);
};

export function GanttComponent(props: GanttComponentProps) {
    return (
        <C options={props.store.options} loadData={props.store.load} onChange={onChange} changeOnSelect />
    );
}
