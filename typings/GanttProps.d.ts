/**
 * This file was generated from Gantt.xml
 * WARNING: All changes made to this file will be overwritten
 * @author Mendix Widgets Team
 */
import { CSSProperties } from "react";
import { EditableValue } from "mendix";

interface CommonProps {
    name: string;
    class: string;
    tabIndex: number;

    uniqueid: string;
    friendlyId?: string;
    mxform: mxui.lib.form._FormBase;
    mxObject?: mendix.lib.MxObject;
    readOnly: boolean;
    style: string;
}

interface _W {
    entityTask: any;
    attStart: string;
    attEnd: string;
    attName: string;
    attTimeScale: string;
    attProgress: string;
    attIsDisabled: string;
}

export interface GanttContainerProps extends CommonProps, _W {}

export interface GanttPreviewProps extends _W {
    class: string;
    style: string;
    styleObject: CSSProperties;
}

export interface VisibilityMap {
    [P in _W]: boolean;
}
