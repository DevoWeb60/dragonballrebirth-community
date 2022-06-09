import React from "react";

export default function MapCaseSelect({
    mapCases,
    selectName,
    mapCaseId,
    selectMode,
    onChangeFunc,
    disabled = false,
}) {
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
                {mapCases.map((mapCase) => (
                    <option value={mapCase.id} key={mapCase.id}>
                        {mapCase.case}
                    </option>
                ))}
            </select>
        </>
    );
}
