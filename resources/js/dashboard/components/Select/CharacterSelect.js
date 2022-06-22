import React from "react";

export default function CharacterSelect({
    characters,
    selectMode,
    selectName,
    characterId,
    stepMode = false,
    onChangeFunc,
    noPnj = true,
}) {
    let customCondition = true;
    if (stepMode) {
        return characters.map((character) => {
            return (
                character.id == characterId && (
                    <span className="icon" key={character.id}>
                        {character.name}
                        <img
                            src={
                                character.avatar +
                                "/transformations/base/head.png"
                            }
                            alt={character.name}
                        />
                    </span>
                )
            );
        });
    }

    if (!selectMode) {
        return characters.map((character) => {
            return (
                character.id == characterId && (
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
            <option value="0" disabled>
                Sélectionner un personnage
            </option>
            {characters.map((character) => {
                if (noPnj) {
                    customCondition = character.is_pnj == null;
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
