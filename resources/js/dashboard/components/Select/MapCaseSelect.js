import React from "react";

export default function MapCaseSelect({
    mapCases,
    selectName,
    mapCaseId,
    selectMode,
    stepMode = false,
    onChangeFunc,
    disabled = false,
}) {
    if (stepMode) {
        return mapCases.map((mapCase) => {
            if (mapCase.id === mapCaseId) {
                return <p key={mapCase.id}>{mapCase.case}</p>;
            }
        });
    }
    if (!selectMode) {
        return mapCases.map((mapCase) => {
            return (
                mapCase.id === mapCaseId && (
                    <span key={mapCase.id}>{mapCase.case}</span>
                )
            );
        });
    }

    return (
        <>
            <select
                name={selectName}
                onChange={onChangeFunc}
                value={mapCaseId}
                disabled={disabled}
            >
                <option value="0" disabled>
                    Sélectionner une case
                </option>
                {mapCases.map((mapCase) => (
                    <option value={mapCase.id} key={mapCase.id}>
                        {mapCase.case}
                    </option>
                ))}
            </select>
        </>
    );
}
