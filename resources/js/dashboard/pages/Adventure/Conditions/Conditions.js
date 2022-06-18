import axios from "axios";
import React, { useEffect, useState } from "react";
import Title from "../../../components/Partials/Title";
import { useDelete } from "../../../customHook/useDelete";
import ConditionList from "./Component/ConditionList";
import ConditionUpdate from "./ConditionUpdate";

export default function Conditions({ getData, refreshData }) {
    const [conditions, setConditions] = useState([]);
    const [onUpdate, setOnUpdate] = useState(false);

    useEffect(() => {
        setConditions(getData.winConditions);
    }, [getData]);

    console.log(conditions);

    const handleDelete = (id) => {
        const message =
            "ATTENTION ! Tu es sur le point de supprimer une condition. Cette action est irréversible.";
        useDelete(id, "condition", refreshData, message);
    };

    return (
        <>
            {onUpdate === false ? (
                <>
                    <Title setOnUpdate={setOnUpdate} onUpdate={onUpdate}>
                        Les conditions
                    </Title>
                    <div className="flex-galery">
                        <h2 className="category">Basique</h2>
                        {conditions &&
                            conditions.length !== 0 &&
                            conditions.map((condition) => {
                                if (condition.condition_base_id) {
                                    return (
                                        <ConditionList
                                            key={condition.id}
                                            condition={condition}
                                            setOnUpdate={setOnUpdate}
                                            handleDelete={handleDelete}
                                        />
                                    );
                                }
                            })}
                        <h2 className="category">Objets</h2>
                        {conditions &&
                            conditions.length !== 0 &&
                            conditions.map((condition) => {
                                if (condition.object) {
                                    return (
                                        <ConditionList
                                            key={condition.id}
                                            condition={condition}
                                            setOnUpdate={setOnUpdate}
                                            handleDelete={handleDelete}
                                        />
                                    );
                                }
                            })}

                        <h2 className="category">Entrainement</h2>
                        {conditions &&
                            conditions.length !== 0 &&
                            conditions.map((condition) => {
                                if (
                                    condition.special_trains ||
                                    condition.any_trains_quantity
                                ) {
                                    return (
                                        <ConditionList
                                            key={condition.id}
                                            condition={condition}
                                            setOnUpdate={setOnUpdate}
                                            handleDelete={handleDelete}
                                        />
                                    );
                                }
                            })}
                        <h2 className="category">Magie</h2>
                        {conditions &&
                            conditions.length !== 0 &&
                            conditions.map((condition) => {
                                if (condition.spell_condition_number) {
                                    return (
                                        <ConditionList
                                            key={condition.id}
                                            condition={condition}
                                            setOnUpdate={setOnUpdate}
                                            handleDelete={handleDelete}
                                        />
                                    );
                                }
                            })}
                        <h2 className="category">Attaques</h2>
                        {conditions &&
                            conditions.length !== 0 &&
                            conditions.map((condition) => {
                                if (
                                    condition.critical_strike ||
                                    condition.min_damage ||
                                    condition.dodge_attack
                                ) {
                                    return (
                                        <ConditionList
                                            key={condition.id}
                                            condition={condition}
                                            setOnUpdate={setOnUpdate}
                                            handleDelete={handleDelete}
                                        />
                                    );
                                }
                            })}
                        <h2 className="category">Personnalisé</h2>
                        {conditions &&
                            conditions.length !== 0 &&
                            conditions.map((condition) => {
                                if (condition.custom_condition) {
                                    return (
                                        <ConditionList
                                            key={condition.id}
                                            condition={condition}
                                            setOnUpdate={setOnUpdate}
                                            handleDelete={handleDelete}
                                        />
                                    );
                                }
                            })}
                    </div>
                </>
            ) : (
                <ConditionUpdate
                    refreshData={refreshData}
                    setOnUpdate={setOnUpdate}
                    condition={onUpdate}
                    getData={getData}
                />
            )}
        </>
    );

    // return <div>Test</div>;
}
