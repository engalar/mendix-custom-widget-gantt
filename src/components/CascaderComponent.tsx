import { createElement } from "react";
import { Store } from "../store";

import { Cascader as C } from "antd";
export interface CascaderComponentProps {
    store: Store;
}

const onChange = (value: any, selectedOptions: any) => {
    console.log(value, selectedOptions);
};

export function CascaderComponent(props: CascaderComponentProps) {
    return (
        <C options={props.store.options} loadData={props.store.load} onChange={onChange} changeOnSelect />
    );
}
