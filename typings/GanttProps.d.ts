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
    attProjectEnd: string;
    attProjectIsDisabled: string;
    attProjectName: string;
    attProjectProgress: string;
    attProjectStart: string;
    attTaskEnd: string;
    attTaskIsDisabled: string;
    attTaskName: string;
    attTaskProgress: string;
    attTaskStart: string;
    attTimeScale: string;
    entityProject: string;
    /**
     * 所属项目
     */
    entityProjectFromTask: string;
    entityTask: string;
    /**
     * 依赖任务
     */
    entityTaskFromTask: string;
    intGantHeight: number;
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
