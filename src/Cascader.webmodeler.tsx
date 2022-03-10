import { Component, ReactNode, createElement } from "react";
import { CascaderContainerProps, CascaderPreviewProps } from "../typings/CascaderProps";

declare function require(name: string): string;

export class preview extends Component<CascaderPreviewProps> {
    render(): ReactNode {
        return <div>No preview available</div>;
    }
}

export function getPreviewCss(): string {
    return require("./ui/index.scss");
}
type VisibilityMap = {
    [P in keyof CascaderContainerProps]: boolean;
};

export function getVisibleProperties(props: CascaderContainerProps, visibilityMap: VisibilityMap): VisibilityMap {
    // visibilityMap.nodeConstraint = props.nodeDataSource === "xpath";
    // visibilityMap.nodeGetDataMicroflow = props.nodeDataSource === "microflow";
    // visibilityMap.nodeGetDataNanoflow = props.nodeDataSource === "nanoflow";
    console.log(props);

    return visibilityMap;
}
