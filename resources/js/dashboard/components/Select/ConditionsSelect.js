import React from "react";

export default function ConditionsSelect({
    conditions,
    selectName,
    conditionId,
    selectMode,
    onChangeFunc,
    conditionList = false,
    disabled = false,
}) {
    if (conditionList) {
        if (conditionId.length === 0) {
            return <li>Aucune</li>;
        }

        return conditions.map((condition) => {
            return conditionId.map((stepCondition) => {
                if (stepCondition === condition.id) {
                    return (
                        <li key={condition.id + Math.random() * 1000}>
                            {condition.name}
                        </li>
                    );
                }
            });
        });
    }

    if (!selectMode) {
        return conditions.map((condition) => {
            return (
                condition.id === conditionId && (
                    <div key={condition.id} className="condition">
                        {condition.condition_base_id && (
                            <>
                                <p className="condition">
                                    {condition.real_name.condition}&nbsp;
                                    {condition.real_name.icon && (
                                        <i
                                            className={condition.real_name.icon}
                                        ></i>
                                    )}
                                </p>
                                <hr />
                            </>
                        )}
                        {condition.custom_condition && (
                            <>
                                <p className="condition">
                                    {condition.custom_condition}
                                </p>
                                <hr />
                            </>
                        )}
                        {condition.any_trains_quantity && (
                            <>
                                <p className="condition">
                                    Faire&nbsp;
                                    <span className="number">
                                        {condition.any_trains_quantity}
                                    </span>
                                    &nbsp; entrainements&nbsp;
                                    <i className="fa-solid fa-dumbbell"></i>
                                </p>
                                <hr />
                            </>
                        )}
                        {condition.special_trains && (
                            <>
                                <p className="condition">
                                    {condition.train.name}
                                    {condition.train.icon && (
                                        <img
                                            src={condition.train.icon}
                                            alt=""
                                        />
                                    )}
                                </p>
                                <hr />
                            </>
                        )}
                        {condition.any_trains_quantity &&
                            condition.special_trains && (
                                <>
                                    <p className="condition">
                                        Faire&nbsp;
                                        <span className="number">
                                            {condition.any_trains_quantity}
                                        </span>
                                        &nbsp; fois l'entrainement "
                                        {condition.train.name}"
                                    </p>
                                    <hr />
                                </>
                            )}
                        {condition.object_harvest && (
                            <>
                                <p className="condition">
                                    Récupérer&nbsp;
                                    <span className="number">
                                        {condition.object_harvest_quantity}
                                    </span>
                                    &nbsp;
                                    {condition.object.name}
                                    &nbsp;
                                    <img src={condition.object.icon} alt="" />
                                </p>
                                <hr />
                            </>
                        )}
                        {condition.spell_condition_number && (
                            <>
                                <p className="condition">
                                    Utiliser l'attaque de Magie&nbsp;
                                    {condition.spell_condition_number}
                                </p>
                                <hr />
                            </>
                        )}
                        {condition.critical_strike && (
                            <>
                                <p className="condition">
                                    Effectuer un coup critique&nbsp;
                                    <i className="fas fa-bolt"></i>
                                </p>
                                <hr />
                            </>
                        )}
                        {condition.dodge_attack && (
                            <>
                                <p className="condition">
                                    Esquiver une attaque&nbsp;
                                    <i className="fas fa-shield-alt"></i>
                                </p>
                                <hr />
                            </>
                        )}
                        {condition.min_damage && (
                            <>
                                <p className="condition">
                                    Infliger au moins&nbsp;
                                    <span className="number">
                                        {condition.min_damage}
                                    </span>
                                    &nbsp; dégâts&nbsp;
                                    <i className="fa-solid fa-bullseye"></i>
                                </p>
                                <hr />
                            </>
                        )}
                    </div>
                )
            );
        });
    }

    return (
        <>
            <select name={selectName} onChange={onChangeFunc} defaultValue="0">
                <option value="0" disabled>
                    Ajouter une condition
                </option>
                {conditions.map((condition) => (
                    <option value={condition.id} key={condition.id}>
                        {condition.name}
                    </option>
                ))}
            </select>
        </>
    );
}
