import React from "react";

export default function MainStoriesSelect({
    mainStories,
    selectName,
    characterMainStory,
    selectMode,
    onChangeFunc,
    disabled = false,
}) {
    if (!selectMode) {
        return mainStories.map((mainStory) => {
            return (
                mainStory.id === characterMainStory && (
                    <span key={mainStory.id}>{mainStory.name}</span>
                )
            );
        });
    }

    return (
        <>
            <select
                name={selectName}
                onChange={onChangeFunc}
                value={characterMainStory}
                disabled={disabled}
            >
                {mainStories.map((mainStory) => (
                    <option value={mainStory.id} key={mainStory.id}>
                        {mainStory.name}
                    </option>
                ))}
            </select>
        </>
    );
}
