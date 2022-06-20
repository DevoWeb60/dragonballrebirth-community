import React from "react";

export default function CapsSelect({
    selectName = "",
    greenCaps = false,
    allCaps = false,
    characterCapsId = 0,
    caps,
    selectMode,
    onChangeFunc,
    disabled = false,
    scarecities,
}) {
    if (!selectMode) {
        return caps.map((cap) => {
            return (
                cap.id === characterCapsId && (
                    <span key={cap.id}>
                        {cap.name}
                        <img src={cap.scarecities.icon} alt={cap.name} />
                    </span>
                )
            );
        });
    }

    if (greenCaps) {
        return (
            <select
                name={selectName}
                value={characterCapsId}
                onChange={onChangeFunc}
                disabled={disabled}
            >
                <option value="0" disabled>
                    Sélectionner une capsule
                </option>

                {caps.map((cap) => {
                    if (cap.caps_scarecities_id === 1) {
                        return (
                            <>
                                <option value={cap.id} key={cap.id}>
                                    {cap.name}
                                </option>
                            </>
                        );
                    }
                })}
            </select>
        );
    }
    if (allCaps) {
        return (
            <select
                name={selectName}
                value={characterCapsId}
                onChange={onChangeFunc}
                disabled={disabled}
            >
                <option value="0" disabled>
                    Sélectionner une capsule
                </option>
                {scarecities.map((scarecity) => (
                    <optgroup label={scarecity.name}>
                        {caps.map((cap) => {
                            if (cap.caps_scarecities_id === scarecity.id) {
                                return (
                                    <option value={cap.id} key={cap.id}>
                                        {cap.character &&
                                            cap.character.name + " :"}
                                        &nbsp;{cap.name}
                                    </option>
                                );
                            }
                        })}
                    </optgroup>
                ))}
            </select>
        );
    }
    return (
        <select
            name={selectName}
            value={characterCapsId}
            onChange={onChangeFunc}
            disabled={disabled}
        >
            <option value="0" disabled>
                Sélectionner une capsule
            </option>
            {scarecities.map((scarecity) => (
                <optgroup label={scarecity.name}>
                    {caps.map((cap) => {
                        if (
                            cap.caps_scarecities_id === scarecity.id &&
                            scarecity.id !== 1
                        ) {
                            return (
                                <option value={cap.id} key={cap.id}>
                                    {cap.name}
                                </option>
                            );
                        }
                    })}
                </optgroup>
            ))}
        </select>
    );
}
