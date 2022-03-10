import { createElement, useEffect, useMemo } from "react";

import { GanttContainerProps } from "../typings/GanttProps";

import "./ui/index.scss";

import { Observer } from "mobx-react";
import { Store } from "./store";
import { GanttComponent } from "./components/GanttComponent";
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

export default function Gantt(props: GanttContainerProps) {
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
            <GanttComponent store={store} />
        </div>}</Observer>;
}
