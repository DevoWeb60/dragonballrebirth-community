import React, { useRef, useState } from "react";
import { useInsertOrUpdate } from "../../../../customHook/useInsertOrUpdate";
import FormStep from "./Component/FormStep";
import Preview from "./Component/Preview";
import Title from "../../../../components/Partials/Title";

export default function EditStep({
    step,
    countOfSteps,
    setOnEditStep,
    getData,
    refreshData,
    story,
}) {
    // !PREVIEW DATA CHARACTER
    const [characterId, setCharacterId] = useState(step.character_id || 0);
    const [stepNumber, setStepNumber] = useState(
        step.step_number || countOfSteps + 1
    );
    const [enemyId, setEnemyId] = useState(step.enemy_id || 0);
    const [enemyHealth, setEnemyHealth] = useState(step.enemy_health || 0);
    const [enemyLevel, setEnemyLevel] = useState(step.enemy_level || 0);
    const [mapCaseId, setMapCaseId] = useState(step.map_case_id || 0);
    const [planetId, setPlanetId] = useState(step.planet_id || 0);
    const [conditions, setConditions] = useState(
        step.conditions?.map((item) => item.id) || []
    );
    const [rewards, setRewards] = useState(
        step.rewards?.map((item) => item.id) || []
    );
    const [selectEnemy, setSelectEnemy] = useState(
        step.enemy_id ? true : false
    );
    // !FORM CHARACTER
    const form = useRef();

    const handleSubmit = (e) => {
        e.preventDefault();
        const inputs = form.current;

        let data = {};

        data = {
            id: step.id,
            step_number: stepNumber,
            character_id: characterId,
            enemy_id: selectEnemy ? enemyId : null,
            enemy_health: selectEnemy ? enemyHealth : null,
            enemy_level: selectEnemy ? enemyLevel : null,
            map_case_id: mapCaseId,
            planet_id: planetId,
            conditions: conditions,
            story_id: story.id,
            rewards: rewards,
        };

        console.log(data);

        useInsertOrUpdate(step === "NEW", "story/step", data, refreshData, () =>
            setOnEditStep(false)
        );
    };

    return (
        <>
            <Title setOnUpdate={setOnEditStep} onUpdate={step}>
                {step === "NEW"
                    ? "Nouvelle étape"
                    : "Étape " + step.step_number}
            </Title>
            <FormStep
                forwardRef={form}
                step={step}
                handleSubmit={handleSubmit}
                characterId={characterId}
                setCharacterId={setCharacterId}
                stepNumber={stepNumber}
                setStepNumber={setStepNumber}
                enemyId={enemyId}
                setEnemyId={setEnemyId}
                enemyHealth={enemyHealth}
                setEnemyHealth={setEnemyHealth}
                mapCaseId={mapCaseId}
                setMapCaseId={setMapCaseId}
                planetId={planetId}
                setPlanetId={setPlanetId}
                conditions={conditions}
                setConditions={setConditions}
                enemyLevel={enemyLevel}
                setEnemyLevel={setEnemyLevel}
                rewards={rewards}
                setRewards={setRewards}
                selectEnemy={selectEnemy}
                setSelectEnemy={setSelectEnemy}
                getData={getData}
                buttonText={step === "NEW" ? "Ajouter" : "Mettre à jour"}
            />
            <Preview
                step={step}
                characterId={characterId}
                enemyId={enemyId}
                storyNumber={story.story_number}
                stepNumber={stepNumber}
                enemyHealth={enemyHealth}
                mapCaseId={mapCaseId}
                planetId={planetId}
                conditions={conditions}
                selectEnemy={selectEnemy}
                enemyLevel={enemyLevel}
                rewards={rewards}
                getData={getData}
            />
        </>
    );
}
