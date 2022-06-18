import React from "react";

export default function ConditionBaseSelect({
    conditions,
    selectName,
    conditionBaseId,
    selectMode,
    onChangeFunc,
    disabled = false,
}) {
    // console.log(conditions);
    // console.log(conditionBaseId);

    if (!selectMode) {
        return conditions.map((condition) => {
            return conditionBaseId.map((characterCat) => {
                if (characterCat === condition.id) {
                    return (
                        <li key={condition.id + Math.random() * 1000}>
                            {condition.condition}
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
                value={conditionBaseId}
            >
                <option value="0">Ajouter une base</option>
                {conditions.map((condition) => (
                    <option value={condition.id} key={condition.id}>
                        {condition.condition}
                    </option>
                ))}
            </select>
        </>
    );
}
