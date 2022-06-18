import React, { useState, useRef } from "react";
import Title from "../../../components/Partials/Title";
import ConditionType from "./Component/ConditionType";
import ObjectSelect from "../../../components/Select/ObjectSelect";
import { useInsertOrUpdate } from "../../../customHook/useInsertOrUpdate";
import ConditionBaseSelect from "../../../components/Select/ConditionBaseSelect";
import TrainSelect from "../../../components/Select/TrainSelect";

export default function ConditionUpdate({
    getData,
    refreshData,
    condition,
    setOnUpdate,
}) {
    const [conditionType, setConditionType] = useState(false);
    const [name, setName] = useState(condition.name || "");
    const [object, setObject] = useState(condition.object?.id || 1);
    const [train, setTrain] = useState(condition.special_trains || 0);
    const [base, setBase] = useState(condition.condition_base_id || 1);

    const conditionTypeName = {
        object: "object",
        base: "base",
        train: "train",
        spell: "spell",
        damage: "damage",
        custom: "custom",
        attack: "attack",
    };

    // !FORM condition
    const form = useRef();

    const handleSubmit = (e) => {
        e.preventDefault();
        const inputs = form.current;

        let specificData = {};

        if (conditionType === conditionTypeName.object) {
            specificData = {
                object_harvest: Number(inputs.object_harvest.value),
                object_harvest_quantity: Number(
                    inputs.object_harvest_quantity.value
                ),
            };
        } else if (conditionType === conditionTypeName.base) {
            specificData = {
                condition_base_id: Number(inputs.condition_base_id.value),
            };
        } else if (conditionType === conditionTypeName.train) {
            specificData = {
                special_trains:
                    Number(inputs.special_trains.value) !== 0
                        ? Number(inputs.special_trains.value)
                        : null,
                any_trains_quantity:
                    Number(inputs.any_trains_quantity.value) !== 0
                        ? Number(inputs.any_trains_quantity.value)
                        : null,
            };
        } else if (conditionType === conditionTypeName.spell) {
            specificData = {
                spell_condition_number: Number(
                    inputs.spell_condition_number.value
                ),
            };
        } else if (conditionType === conditionTypeName.damage) {
            specificData = {
                min_damage: Number(inputs.min_damage.value),
            };
        } else if (conditionType === conditionTypeName.custom) {
            specificData = {
                custom_condition: inputs.custom_condition.value,
            };
        } else if (conditionType === conditionTypeName.attack) {
            specificData = {
                critical_strike: inputs.critical_strike.checked ? 1 : null,
                dodge_attack: inputs.dodge_attack.checked ? 1 : null,
            };
        }

        const data = {
            id: condition.id,
            name: inputs.name.value,
            ...specificData,
        };

        // console.log(data);
        useInsertOrUpdate(
            condition === "NEW",
            "condition",
            data,
            refreshData,
            () => setOnUpdate(false)
        );
    };
    return (
        <>
            <Title setOnUpdate={setOnUpdate} onUpdate={condition}>
                <span>
                    {condition === "NEW" ? (
                        <span>Nouvelle condition</span>
                    ) : (
                        <span>{condition.name}</span>
                    )}
                </span>
            </Title>
            <form
                className="form-flex"
                onSubmit={(e) => handleSubmit(e)}
                ref={form}
            >
                <ConditionType
                    setConditionType={setConditionType}
                    conditionType={conditionType}
                    condition={condition}
                    conditionTypeName={conditionTypeName}
                />
                <div className="form-group w-100">
                    <input
                        type="text"
                        id="name"
                        name="name"
                        value={name}
                        onChange={(e) => setName(e.target.value)}
                        placeholder="CSS"
                    />
                    <label htmlFor="name">Nom de la condition</label>
                </div>
                {conditionType === conditionTypeName.object && (
                    <>
                        <div className="form-group">
                            <input
                                type="number"
                                id="object_harvest_quantity"
                                name="object_harvest_quantity"
                                defaultValue={
                                    condition.object_harvest_quantity || 1
                                }
                            />
                            <label htmlFor="object_harvest_quantity">
                                Quantité
                            </label>
                        </div>
                        <div className="form-group">
                            <ObjectSelect
                                objects={getData.objects}
                                selectName={"object_harvest"}
                                objectId={object}
                                selectMode={true}
                                onChangeFunc={(e) =>
                                    setObject(Number(e.target.value))
                                }
                            />
                            <label htmlFor="object_harvest">Objet</label>
                        </div>
                    </>
                )}
                {conditionType === conditionTypeName.base && (
                    <>
                        <div className="form-group">
                            <ConditionBaseSelect
                                conditions={getData.winConditionBase}
                                selectName={"condition_base_id"}
                                conditionBaseId={base}
                                selectMode={true}
                                onChangeFunc={(e) =>
                                    setBase(Number(e.target.value))
                                }
                            />
                            <label htmlFor="caps_id">Basique</label>
                        </div>
                    </>
                )}
                {conditionType === conditionTypeName.train && (
                    <>
                        <div className="form-group">
                            <TrainSelect
                                trains={getData.trains}
                                selectName={"special_trains"}
                                trainId={train}
                                selectMode={true}
                                onChangeFunc={(e) =>
                                    setTrain(Number(e.target.value))
                                }
                            />
                            <label htmlFor="special_trains">
                                Entrainement spécifique
                            </label>
                        </div>
                        <div className="form-group">
                            <input
                                type="number"
                                id="any_trains_quantity"
                                name="any_trains_quantity"
                                defaultValue={
                                    condition.any_trains_quantity || 0
                                }
                            />
                            <label htmlFor="any_trains_quantity">
                                Quantité
                            </label>
                        </div>
                    </>
                )}
                {conditionType === conditionTypeName.spell && (
                    <>
                        <div className="form-group w-100">
                            <input
                                type="number"
                                id="spell_condition_number"
                                name="spell_condition_number"
                                defaultValue={
                                    condition.spell_condition_number || 1
                                }
                            />
                            <label htmlFor="spell_condition_number">
                                Numéro de la magie
                            </label>
                        </div>
                    </>
                )}
                {conditionType === conditionTypeName.damage && (
                    <>
                        <div className="form-group w-100">
                            <input
                                type="number"
                                id="min_damage"
                                name="min_damage"
                                defaultValue={condition.min_damage || 1}
                            />
                            <label htmlFor="min_damage">Dommage minimum</label>
                        </div>
                    </>
                )}
                {conditionType === conditionTypeName.custom && (
                    <div className="form-group w-100">
                        <input
                            type="text"
                            id="custom_condition"
                            name="custom_condition"
                            defaultValue={condition.custom_condition || ""}
                        />
                        <label htmlFor="custom_condition">
                            Condition personnalisé
                        </label>
                    </div>
                )}
                {conditionType === conditionTypeName.attack && (
                    <>
                        <div className="form-group-check">
                            <input
                                type="radio"
                                id="critical_strike"
                                name="attack"
                                defaultChecked={condition.critical_strike}
                            />
                            <label htmlFor="critical_strike">
                                Coup critique
                            </label>
                        </div>
                        <div className="form-group-check">
                            <input
                                type="radio"
                                id="dodge_attack"
                                name="attack"
                                defaultChecked={condition.dodge_attack}
                            />
                            <label htmlFor="dodge_attack">Esquive</label>
                        </div>
                    </>
                )}
                <button type="submit">
                    {condition === "NEW" ? "Ajouter" : "Mettre à jour"}
                </button>
            </form>
        </>
    );
}
