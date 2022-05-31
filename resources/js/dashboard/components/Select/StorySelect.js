import React, { useEffect, useState } from "react";

export default function StorySelect({
    stories,
    selectName,
    characterUnlock,
    selectMode,
    onChangeFunc,
    disabled = false,
}) {
    if (!selectMode) {
        return stories.map((story) => {
            return (
                story.id === characterUnlock && (
                    <span key={story.id}>{story.story_name}</span>
                )
            );
        });
    }

    return (
        <>
            <select
                name={selectName}
                onChange={onChangeFunc}
                value={characterUnlock}
                disabled={disabled}
            >
                {stories.map((story) => (
                    <option value={story.id} key={story.id}>
                        {story.story_name}
                    </option>
                ))}
            </select>
        </>
    );
}
