import React from "react";

export default function DurationSelect({
    durations,
    selectName,
    durationId,
    selectMode,
    onChangeFunc,
    disabled = false,
}) {
    if (!selectMode) {
        return durations.map((duration) => {
            return (
                duration.id === durationId && (
                    <span key={duration.id}>{duration.duration}</span>
                )
            );
        });
    }

    return (
        <>
            <select
                name={selectName}
                onChange={onChangeFunc}
                value={durationId}
                disabled={disabled}
            >
                <option value="0" disabled>
                    Sélectionner une durée
                </option>
                {durations.map((duration) => (
                    <option value={duration.id} key={duration.id}>
                        {duration.duration}
                    </option>
                ))}
            </select>
        </>
    );
}
