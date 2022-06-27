import React from "react";
import CharacterSelect from "../../../../../components/Select/CharacterSelect";
import ConditionsSelect from "../../../../../components/Select/ConditionsSelect";
import MapCaseSelect from "../../../../../components/Select/MapCaseSelect";
import PlanetSelect from "../../../../../components/Select/PlanetSelect";
import RewardsSelect from "../../../../../components/Select/RewardSelect";

export default function FormStep({
    forwardRef,
    handleSubmit,
    step,
    stepNumber,
    storyNumber,
    mapCaseId,
    planetId,
    characterId,
    enemyId,
    enemyHealth,
    conditions,
    rewards,
    enemyLevel,
    selectEnemy,
    setStepNumber,
    setMapCaseId,
    setPlanetId,
    setCharacterId,
    setEnemyId,
    setEnemyHealth,
    setConditions,
    setRewards,
    setEnemyLevel,
    setSelectEnemy,
    getData,
    buttonText,
}) {
    const deleteConditions = (id) => {
        const newData = conditions.filter((condition) => condition != id);
        setConditions(newData);
    };
    const deleteRewards = (id) => {
        const newData = rewards.filter((reward) => reward != id);
        setRewards(newData);
    };

    return (
        <form
            className="form-flex"
            onSubmit={(e) => handleSubmit(e)}
            ref={forwardRef}
        >
            <div className="form-group">
                <input
                    type="number"
                    id="step_number"
                    name="step_number"
                    value={stepNumber}
                    onChange={(e) => setStepNumber(Number(e.target.value))}
                    placeholder="CSS"
                />
                <label htmlFor="step_number">N° de l'étape</label>
            </div>
            <div className="form-group">
                <CharacterSelect
                    characterId={characterId}
                    onChangeFunc={(e) => setCharacterId(Number(e.target.value))}
                    characters={getData.characters}
                    selectMode={true}
                    selectName="character_id"
                />
                <label htmlFor="character_id">Personnage à selectionner</label>
            </div>
            <div className="form-group">
                <PlanetSelect
                    planetId={planetId}
                    onChangeFunc={(e) => setPlanetId(Number(e.target.value))}
                    planets={getData.planets}
                    selectMode={true}
                    selectName="planet_id"
                />
                <label htmlFor="planet_id">Planète</label>
            </div>
            <div className="form-group">
                <MapCaseSelect
                    mapCaseId={mapCaseId}
                    onChangeFunc={(e) => setMapCaseId(Number(e.target.value))}
                    mapCases={getData.mapCases}
                    selectMode={true}
                    selectName="map_case_id"
                />
                <label htmlFor="map_case_id">Case de la carte</label>
            </div>

            {selectEnemy && (
                <div className="dynamic">
                    <div className="form-group">
                        <CharacterSelect
                            characterId={enemyId}
                            onChangeFunc={(e) =>
                                setEnemyId(Number(e.target.value))
                            }
                            characters={getData.characters}
                            selectMode={true}
                            selectName="enemy_id"
                            noPnj={false}
                        />
                        <label htmlFor="enemy_id">Ennemi</label>
                    </div>
                    <div className="form-group">
                        <input
                            type="number"
                            id="enemy_health"
                            name="enemy_health"
                            value={enemyHealth}
                            onChange={(e) =>
                                setEnemyHealth(Number(e.target.value))
                            }
                            placeholder="HP"
                        />
                        <label htmlFor="enemy_health">Point de vie</label>
                    </div>
                    <div className="form-group w-100">
                        <input
                            type="number"
                            id="enemy_level"
                            name="enemy_level"
                            value={enemyLevel}
                            onChange={(e) =>
                                setEnemyLevel(Number(e.target.value))
                            }
                            placeholder="Niveau"
                        />
                        <label htmlFor="enemy_level">Niveau</label>
                    </div>
                </div>
            )}

            <div className="form-group">
                <ConditionsSelect
                    conditions={getData.winConditions}
                    selectMode={true}
                    selectName="conditions"
                    onChangeFunc={(e) =>
                        setConditions([...conditions, Number(e.target.value)])
                    }
                />
                <label htmlFor="conditions">Conditions</label>
            </div>
            <div className="form-group">
                <RewardsSelect
                    rewards={getData.rewards}
                    selectMode={true}
                    selectName="rewards"
                    onChangeFunc={(e) =>
                        setRewards([...rewards, Number(e.target.value)])
                    }
                />
                <label htmlFor="rewards">Récompenses</label>
            </div>
            <div className="form-group-check">
                <input
                    type="checkbox"
                    id="select_enemy"
                    name="select_enemy"
                    checked={selectEnemy}
                    onChange={(e) => setSelectEnemy(e.target.checked)}
                />
                <label htmlFor="select_enemy">Ajouter un ennemi</label>
            </div>
            <div className="flex-galery w-100" style={{ marginTop: "30px" }}>
                <div className="conditions-delete-list w-50">
                    <h3>Conditions</h3>
                    {conditions.length != 0 && (
                        <ul className="delete-categories w-100">
                            {getData.winConditions.map((condition) => {
                                return conditions.map((stepCondition) => {
                                    if (stepCondition == condition.id) {
                                        return (
                                            <li
                                                key={
                                                    condition +
                                                    Math.round(
                                                        Math.random() * 10000000
                                                    )
                                                }
                                            >
                                                {condition.name}
                                                <span
                                                    className="delete"
                                                    onClick={() =>
                                                        deleteConditions(
                                                            condition.id
                                                        )
                                                    }
                                                >
                                                    <i className="fa-solid fa-trash"></i>
                                                </span>
                                            </li>
                                        );
                                    }
                                });
                            })}
                        </ul>
                    )}
                </div>
                <div className="reward-list-delete w-50">
                    <h3>Récompenses</h3>
                    {rewards.length != 0 && (
                        <ul className="delete-categories w-100">
                            {getData.rewards.map((reward) => {
                                return rewards.map((stepReward) => {
                                    if (stepReward == reward.id) {
                                        return (
                                            <li
                                                key={
                                                    reward +
                                                    Math.round(
                                                        Math.random() * 10000000
                                                    )
                                                }
                                            >
                                                {reward.name}
                                                <span
                                                    className="delete"
                                                    onClick={() =>
                                                        deleteRewards(reward.id)
                                                    }
                                                >
                                                    <i className="fa-solid fa-trash"></i>
                                                </span>
                                            </li>
                                        );
                                    }
                                });
                            })}
                        </ul>
                    )}
                </div>
            </div>
            <button type="submit">{buttonText}</button>
        </form>
    );
}
