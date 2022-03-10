import { createElement, useEffect, useMemo } from "react";

import { CascaderContainerProps } from "../typings/CascaderProps";

import "./ui/index.scss";

import { Observer } from "mobx-react";
import { Store } from "./store";
import { CascaderComponent } from "./components/CascaderComponent";
import { useUnmount } from "ahooks";

const parseStyle = (style = ""): { [key: string]: string } => {
    try {
        return style.split(";").reduce<{ [key: string]: string }>((styleObject, line) => {
            const pair = line.split(":");
            if (pair.length === 2) {
                const name = pair[0].trim().replace(/(-.)/g, match => match[1].toUpperCase());
                styleObject[name] = pair[1].trim();
            }
            return styleObject;
        }, {});
    } catch (_) {
        return {};
    }
};

export default function Cascader(props: CascaderContainerProps) {
    const store = useMemo(() => new Store(props), []);

    useEffect(() => {
        store.mxOption = props;
        return () => {
        }
    }, [store, props]);

    useUnmount(() => {
        store.dispose();
    });

    return <Observer>{() =>
        <div className={props.class} style={parseStyle(props.style)}>
            <CascaderComponent store={store} />
        </div>}</Observer>;
}
