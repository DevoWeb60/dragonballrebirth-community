import React from "react";

export default function ConditionList({
    condition,
    setOnUpdate,
    handleDelete,
}) {
    return (
        <div className="condition-list">
            <span className="name">{condition.name}</span>
            <div className="condition-given">
                {condition.custom_condition && (
                    <span className="condition-name">
                        {condition.custom_condition}
                    </span>
                )}
                {condition.object && (
                    <span className="condition-name">
                        {condition.object_harvest_quantity
                            ? condition.object_harvest_quantity
                            : 1}
                        x&nbsp;
                        {condition.object.name}
                        <img src={condition.object.icon} alt="" />
                    </span>
                )}
                {condition.condition_base_id && (
                    <span className="condition-name">
                        {condition.real_name.condition}
                    </span>
                )}
                {condition.special_trains && (
                    <span className="condition-name">
                        {condition.special_trains != null && (
                            <>
                                Faire {condition.any_trains_quantity || 1} fois
                                l'entrainement&nbsp;:&nbsp;
                                {condition.train.name}
                                {condition.train.icon && (
                                    <img src={condition.train.icon} alt="" />
                                )}
                            </>
                        )}
                    </span>
                )}
                {condition.any_trains_quantity && !condition.special_trains && (
                    <span className="condition-name">
                        Faire {condition.any_trains_quantity} entrainements
                    </span>
                )}
                {condition.spell_condition_number && (
                    <span className="condition-name">
                        Utilisé la Magie {condition.spell_condition_number}
                    </span>
                )}
                {condition.min_damage && (
                    <span className="condition-name">
                        Infliger au minimum {condition.min_damage} de dégâts
                    </span>
                )}
                {condition.critical_strike && (
                    <span className="condition-name">Coup critique</span>
                )}
                {condition.dodge_attack && (
                    <span className="condition-name">Esquiver une attaque</span>
                )}
            </div>
            <span className="edit" onClick={() => setOnUpdate(condition)}>
                <i className="fa-solid fa-pen-to-square"></i>
            </span>
            <span className="delete" onClick={() => handleDelete(condition.id)}>
                <i className="fa-solid fa-trash"></i>
            </span>
        </div>
    );
}
