import React from "react";

export default function CharacterSelect({
    characters,
    selectMode,
    selectName,
    characterId,
    onChangeFunc,
    noPnj = true,
}) {
    let customCondition = true;

    if (!selectMode) {
        return characters.map((character) => {
            return (
                character.id === characterId && (
                    <div className="icon" key={character.id}>
                        <h4>{character.name}</h4>
                        <img
                            src={
                                character.avatar +
                                "/transformations/base/head.png"
                            }
                            alt={character.name}
                        />
                    </div>
                )
            );
        });
    }

    return (
        <select name={selectName} value={characterId} onChange={onChangeFunc}>
            {characters.map((character) => {
                if (noPnj) {
                    customCondition = character.is_pnj === null;
                }
                if (customCondition) {
                    return (
                        <option value={character.id} key={character.id}>
                            {character.name}
                        </option>
                    );
                }
            })}
        </select>
    );
}
