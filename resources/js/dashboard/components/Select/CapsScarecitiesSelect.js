import React from "react";

export default function CapsScarecitiesSelect({
    scarecities,
    selectMode,
    selectName,
    capScarecityId,
    onChangeFunc,
}) {
    if (!selectMode) {
        return scarecities.map((scarecity) => {
            return (
                scarecity.id === capScarecityId && (
                    <div className="icon" key={scarecity.id}>
                        <img src={scarecity.icon} alt={scarecity.name} />
                        <h4>{scarecity.name}</h4>
                    </div>
                )
            );
        });
    }

    return (
        <select
            name={selectName}
            value={capScarecityId}
            onChange={onChangeFunc}
        >
            {scarecities.map((scarecity) => (
                <option value={scarecity.id} key={scarecity.id}>
                    {scarecity.name}
                </option>
            ))}
        </select>
    );
}
