import { createElement, useEffect, useState } from "react";

import { Gantt, Task, ViewMode } from '@engalar/gantt-task-react';

import { Store } from "../store";
import { autorun, reaction } from "mobx";
import { debounce } from "lodash-es";

export function getStartEndDateForProject(tasks: Task[], projectId: string) {
    const projectTasks = tasks.filter(t => t.project === projectId);
    let start = projectTasks[0].start;
    let end = projectTasks[0].end;

    for (let i = 0; i < projectTasks.length; i++) {
        const task = projectTasks[i];
        if (start.getTime() > task.start.getTime()) {
            start = task.start;
        }
        if (end.getTime() < task.end.getTime()) {
            end = task.end;
        }
    }
    return [start, end];
}

function initTasks() {
    const currentDate = new Date();
    const tasks: Task[] = [
        {
            start: new Date(currentDate.getFullYear(), currentDate.getMonth(), 1),
            end: new Date(currentDate.getFullYear(), currentDate.getMonth(), 15),
            name: "Some Project",
            id: "ProjectSample",
            progress: 25,
            type: "project",
            hideChildren: false,
        },
        {
            start: new Date(currentDate.getFullYear(), currentDate.getMonth(), 2),
            end: new Date(
                currentDate.getFullYear(),
                currentDate.getMonth(),
                6,
                12,
                28
            ),
            name: "Sub project",
            id: "sb",
            progress: 45,
            type: "project",
            project: "ProjectSample",
            hideChildren: false,
            dependencies: ["ProjectSample"],
        },
        {
            start: new Date(currentDate.getFullYear(), currentDate.getMonth(), 2),
            end: new Date(
                currentDate.getFullYear(),
                currentDate.getMonth(),
                3,
                12,
                28
            ),
            name: "Task 0 in Sub project",
            id: "sub Task 0",
            progress: 45,
            dependencies: ["sub Task 1"],
            type: "task",
            project: "sb",
        },
        {
            start: new Date(currentDate.getFullYear(), currentDate.getMonth(), 4),
            end: new Date(
                currentDate.getFullYear(),
                currentDate.getMonth(),
                6,
                12,
                28
            ),
            name: "Task 1 in Sub project",
            id: "sub Task 1",
            progress: 45,
            type: "task",
            project: "sb",
        },
        {
            start: new Date(currentDate.getFullYear(), currentDate.getMonth(), 2),
            end: new Date(currentDate.getFullYear(), currentDate.getMonth(), 4, 0, 0),
            name: "Research",
            id: "Task 1",
            progress: 25,
            dependencies: ["Task 0"],
            type: "task",
            project: "ProjectSample",
        },
        {
            start: new Date(currentDate.getFullYear(), currentDate.getMonth(), 4),
            end: new Date(currentDate.getFullYear(), currentDate.getMonth(), 8, 0, 0),
            name: "Discussion with team",
            id: "Task 2",
            progress: 10,
            dependencies: ["Task 1"],
            type: "task",
            project: "ProjectSample",
        },
        {
            start: new Date(currentDate.getFullYear(), currentDate.getMonth(), 8),
            end: new Date(currentDate.getFullYear(), currentDate.getMonth(), 9, 0, 0),
            name: "Developing",
            id: "Task 3",
            progress: 2,
            dependencies: ["Task 2"],
            type: "task",
            project: "ProjectSample",
        },
        {
            start: new Date(currentDate.getFullYear(), currentDate.getMonth(), 8),
            end: new Date(currentDate.getFullYear(), currentDate.getMonth(), 10),
            name: "Review",
            id: "Task 4",
            type: "task",
            progress: 70,
            dependencies: ["Task 2"],
            project: "ProjectSample",
        },
        {
            start: new Date(currentDate.getFullYear(), currentDate.getMonth(), 15),
            end: new Date(currentDate.getFullYear(), currentDate.getMonth(), 15),
            name: "Release",
            id: "Task 6",
            progress: currentDate.getMonth(),
            type: "milestone",
            dependencies: ["Task 4"],
            project: "ProjectSample",
        },
        {
            start: new Date(currentDate.getFullYear(), currentDate.getMonth(), 18),
            end: new Date(currentDate.getFullYear(), currentDate.getMonth(), 19),
            name: "Party Time",
            id: "Task 9",
            progress: 0,
            isDisabled: true,
            type: "task",
        },
    ];
    return tasks;
}

export interface GanttComponentProps {
    store: Store;
}


export function GanttComponent(props: GanttComponentProps) {
    const [tasks, setTasks] = useState<Task[]>(initTasks());
    const [viewMode, setViewMode] = useState<ViewMode>(ViewMode.Day);

    //#region 
    const handleTaskChange = (task: Task) => {
        console.log("On date change Id:" + task.id);
        let newTasks = tasks.map(t => (t.id === task.id ? task : t));
        if (task.project) {
            const [start, end] = getStartEndDateForProject(newTasks, task.project);
            const project = newTasks[newTasks.findIndex(t => t.id === task.project)];
            if (
                project.start.getTime() !== start.getTime() ||
                project.end.getTime() !== end.getTime()
            ) {
                const changedProject = { ...project, start, end };
                newTasks = newTasks.map(t =>
                    t.id === task.project ? changedProject : t
                );
            }
        }
        setTasks(newTasks);
    };

    const handleTaskDelete = (task: Task) => {
        const conf = window.confirm("Are you sure about " + task.name + " ?");
        if (conf) {
            setTasks(tasks.filter(t => t.id !== task.id));
        }
        return conf;
    };

    const handleProgressChange = async (task: Task) => {
        setTasks(tasks.map(t => (t.id === task.id ? task : t)));
        console.log("On progress change Id:" + task.id);
    };

    const handleDblClick = (task: Task) => {
        alert("On Double Click event Id:" + task.id);
    };

    const handleSelect = (task: Task, isSelected: boolean) => {
        console.log(task.name + " has " + (isSelected ? "selected" : "unselected"));
    };

    const handleExpanderClick = (task: Task) => {
        setTasks(tasks.map(t => (t.id === task.id ? task : t)));
        console.log("On expander click Id:" + task.id);
    };
    //#endregion

    useEffect(() => {
        const dis = reaction(() => props.store.$context?.data, debounce(value => {
            if (value.length > 0) {
                setTasks(value);
            }
        }, 500
        ));

        const dis2 = autorun(() => {
            if (props.store.$context?.viewMode) {
                setViewMode(props.store.$context?.viewMode);
            }
        });
        () => {
            dis();
            dis2();
        }
    }, []);

    return (
        <Gantt
            viewMode={viewMode}
            onDateChange={handleTaskChange}
            onDelete={handleTaskDelete}
            onProgressChange={handleProgressChange}
            onDoubleClick={handleDblClick}
            onSelect={handleSelect}
            onExpanderClick={handleExpanderClick}
            tasks={tasks}
        />
    );
}
