import React from "react";

export default function CategoryCharacterSelect({
    categories,
    selectName,
    characterCategory,
    selectMode,
    onChangeFunc,
    disabled = false,
}) {
    if (!selectMode) {
        return categories.map((story) => {
            return (
                story.id === characterCategory && (
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
                value={characterCategory}
                disabled={disabled}
            >
                {categories.map((story) => (
                    <option value={story.id} key={story.id}>
                        {story.story_name}
                    </option>
                ))}
            </select>
        </>
    );
}
