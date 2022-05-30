import React from "react";

export default function StorySelect({
    stories,
    selectName,
    characterUnlock,
    selectMode,
    onChangeFunc,
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
            >
                {stories.map((story) => (
                    <option value={story.id} selected key={story.id}>
                        {story.story_name}
                    </option>
                ))}
            </select>
        </>
    );
}
