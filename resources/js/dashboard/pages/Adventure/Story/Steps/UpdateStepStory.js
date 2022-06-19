import React, { useEffect, useState } from "react";
import Title from "../../../../components/Partials/Title";
import EditStep from "./EditStep";
import { useDelete } from "../../../../customHook/useDelete";

export default function UpdateStepStory({
    getData,
    refreshData,
    setOnUpdateStep,
    story,
}) {
    const [steps, setSteps] = useState([]);
    const [onEditStep, setOnEditStep] = useState(false);

    useEffect(() => {
        let stepStory = getData.steps.filter(
            (step) => step.story_id === story.id
        );
        setSteps(stepStory);
    }, [getData]);

    const handleDelete = (id) => {
        const message =
            "Voulez-vous vraiment supprimer cette étape ? Cette action est irréversible.";
        useDelete(id, "story/step", refreshData, message);
    };

    // console.log(steps);

    return (
        <>
            {onEditStep === false ? (
                <>
                    <Title setOnUpdate={setOnUpdateStep} onUpdate={story}>
                        {story.story_name}
                        <span
                            className="btn-home"
                            onClick={() => setOnEditStep("NEW")}
                        >
                            Ajouter
                        </span>
                    </Title>
                    <div className="flex-galery">
                        {steps &&
                            steps.length !== 0 &&
                            steps.map((step) => (
                                <div className="step-list" key={step.id}>
                                    <div className="step-info">
                                        <span className="step">
                                            Étape N°{" "}
                                            <strong>{step.step_number}</strong>
                                        </span>
                                        <span className="planet">
                                            {step.planet.planet}
                                            <img
                                                src={step.planet.icon}
                                                alt=""
                                            />
                                        </span>
                                        <strong>{step.map_case.case}</strong>
                                    </div>
                                    <span className="characterSelect">
                                        <span className="title">
                                            Personnage
                                        </span>
                                        <span className="content">
                                            {step.character.name}
                                            <img
                                                src={
                                                    step.character.avatar +
                                                    "/transformations/base/head.png"
                                                }
                                                alt=""
                                            />
                                        </span>
                                    </span>
                                    {step.enemy ? (
                                        <span className="enemySelect">
                                            <span className="title">
                                                Ennemi
                                            </span>
                                            <span className="content">
                                                {step.enemy.name}
                                                <img
                                                    src={
                                                        step.enemy.avatar +
                                                        "/transformations/base/head.png"
                                                    }
                                                    alt=""
                                                />
                                            </span>
                                            <span className="health">
                                                <strong>PV : </strong>
                                                {step.enemy_health}
                                            </span>
                                            <span className="level">
                                                <strong>Niveau : </strong>
                                                {step.enemy_level}
                                            </span>
                                        </span>
                                    ) : (
                                        <span></span>
                                    )}
                                    {step.conditions ? (
                                        <span className="conditions">
                                            <span className="title">
                                                Condition
                                            </span>
                                            {step.conditions.map(
                                                (condition) => (
                                                    <span
                                                        className="condition"
                                                        key={condition.id}
                                                    >
                                                        {condition.name}
                                                    </span>
                                                )
                                            )}
                                        </span>
                                    ) : (
                                        <span></span>
                                    )}
                                    {step.rewards ? (
                                        <span className="rewards">
                                            <span className="title">
                                                Récompense
                                            </span>
                                            {step.rewards.map((reward) => (
                                                <span
                                                    className="reward"
                                                    key={reward.id}
                                                >
                                                    {reward.name}
                                                </span>
                                            ))}
                                        </span>
                                    ) : (
                                        <span></span>
                                    )}
                                    <span
                                        className="edit"
                                        onClick={() => setOnEditStep(step)}
                                    >
                                        <i className="fa-solid fa-pen-to-square"></i>
                                    </span>
                                    <span
                                        className="delete"
                                        onClick={() => handleDelete(step)}
                                    >
                                        <i className="fa-solid fa-trash"></i>
                                    </span>
                                </div>
                            ))}
                    </div>
                </>
            ) : (
                <EditStep
                    step={onEditStep}
                    setOnEditStep={setOnEditStep}
                    getData={getData}
                    refreshData={refreshData}
                    story={story}
                    countOfSteps={steps.length}
                />
            )}
        </>
    );
}
