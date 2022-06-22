import React, { useEffect } from "react";

export default function ConditionType({
    setConditionType,
    conditionType,
    condition,
    conditionTypeName,
}) {
    const { object, spell, damage, base, train, custom, attack } =
        conditionTypeName;

    useEffect(() => {
        if (condition.object_harvest) {
            setConditionType(object);
        } else if (condition.spell_condition_number) {
            setConditionType(spell);
        } else if (condition.min_damage) {
            setConditionType(damage);
        } else if (condition.condition_base_id) {
            setConditionType(base);
        } else if (condition.special_trains || condition.any_trains_quantity) {
            setConditionType(train);
        } else if (condition.custom_condition) {
            setConditionType(custom);
        } else if (condition.critical_strike || condition.dodge_attack) {
            setConditionType(attack);
        }
    }, []);

    return (
        <div className="flex-space-between w-100">
            <span
                className={
                    conditionType == object ? "btn-home active" : "btn-home"
                }
                onClick={() => setConditionType(object)}
            >
                Objets
            </span>
            <span
                className={
                    conditionType == damage ? "btn-home active" : "btn-home"
                }
                onClick={() => setConditionType(damage)}
            >
                Dommages
            </span>
            <span
                className={
                    conditionType == spell ? "btn-home active" : "btn-home"
                }
                onClick={() => setConditionType(spell)}
            >
                Magie
            </span>
            <span
                className={
                    conditionType == base ? "btn-home active" : "btn-home"
                }
                onClick={() => setConditionType(base)}
            >
                Basique
            </span>
            <span
                className={
                    conditionType == train ? "btn-home active" : "btn-home"
                }
                onClick={() => setConditionType(train)}
            >
                Entrainements
            </span>
            <span
                className={
                    conditionType == attack ? "btn-home active" : "btn-home"
                }
                onClick={() => setConditionType(attack)}
            >
                Attaques
            </span>
            <span
                className={
                    conditionType == custom ? "btn-home active" : "btn-home"
                }
                onClick={() => setConditionType(custom)}
            >
                Personnalisé
            </span>
        </div>
    );
}
