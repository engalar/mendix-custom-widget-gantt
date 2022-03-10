import { Component, ReactNode, createElement } from "react";
import { GanttContainerProps, GanttPreviewProps } from "../typings/GanttProps";

declare function require(name: string): string;

export class preview extends Component<GanttPreviewProps> {
    render(): ReactNode {
        return <div>No preview available</div>;
    }
}

export function getPreviewCss(): string {
    return require("./ui/index.scss");
}
type VisibilityMap = {
    [P in keyof GanttContainerProps]: boolean;
};

export function getVisibleProperties(props: GanttContainerProps, visibilityMap: VisibilityMap): VisibilityMap {
    // visibilityMap.nodeConstraint = props.nodeDataSource === "xpath";
    // visibilityMap.nodeGetDataMicroflow = props.nodeDataSource === "microflow";
    // visibilityMap.nodeGetDataNanoflow = props.nodeDataSource === "nanoflow";
    console.log(props);

    return visibilityMap;
}
