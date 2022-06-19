import React from "react";

export default function CategoryCharacterSelect({
    categories,
    selectName,
    characterCategory,
    selectMode,
    onChangeFunc,
    disabled = false,
}) {
    // console.log(categories);
    // console.log(characterCategory);

    if (!selectMode) {
        if (characterCategory.length === 0) {
            return <li>Aucune</li>;
        }

        return categories.map((category) => {
            return characterCategory.map((characterCat) => {
                if (characterCat === category.id) {
                    return (
                        <li key={category.id + Math.random() * 1000}>
                            {category.name}
                        </li>
                    );
                }
            });
        });
    }

    return (
        <>
            <select
                name={selectName}
                onChange={onChangeFunc}
                disabled={disabled}
                defaultValue="0"
            >
                <option value="0">Ajouter une catégorie</option>
                {categories.map((category) => (
                    <option value={category.id} key={category.id}>
                        {category.name}
                    </option>
                ))}
            </select>
        </>
    );
}
