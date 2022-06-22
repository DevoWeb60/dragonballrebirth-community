import React from "react";

export default function TrainSelect({
    trains,
    selectName,
    trainId,
    selectMode,
    onChangeFunc,
    disabled = false,
}) {
    // console.log(trains);
    // console.log(trainId);

    if (!selectMode) {
        return trains.map((train) => {
            return trainId.map((characterCat) => {
                if (characterCat == train.id) {
                    return (
                        <li key={train.id + Math.random() * 1000}>
                            {train.name}
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
                value={trainId}
            >
                <option value="0">Spécifier l'entrainement</option>
                {trains.map((train) => (
                    <option value={train.id} key={train.id}>
                        {train.name}
                    </option>
                ))}
            </select>
        </>
    );
}
