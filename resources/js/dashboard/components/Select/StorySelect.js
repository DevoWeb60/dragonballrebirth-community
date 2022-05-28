import React from "react";

export default function StorySelect({
    stories,
    selectName,
    characterUnlock,
    selectMode,
}) {
    if (!selectMode) {
        return stories.map((story) => (
            <>
                {story.id === characterUnlock && (
                    <span>{story.story_name}</span>
                )}
            </>
        ));
    }

    return (
        <>
            <select name={selectName}>
                {stories.map((story) => (
                    <>
                        {story.id === characterUnlock ? (
                            <option value={story.id} selected>
                                {story.story_name}
                            </option>
                        ) : (
                            <option value={story.id}>{story.story_name}</option>
                        )}
                    </>
                ))}
            </select>
        </>
    );
}
