import React from "react";
import PlanetSelect from "../../../../../components/Select/PlanetSelect";
import MapCaseSelect from "../../../../../components/Select/MapCaseSelect";
import CharacterSelect from "../../../../../components/Select/CharacterSelect";
import ConditionsSelect from "../../../../../components/Select/ConditionsSelect";
import RewardsSelect from "../../../../../components/Select/RewardSelect";

export default function Preview({
    characterId,
    stepNumber,
    enemyId,
    enemyHealth,
    mapCaseId,
    planetId,
    conditions,
    rewards,
    enemyLevel,
    selectEnemy,
    storyNumber,
    getData,
}) {
    return (
        <div className="step-container admin">
            <div className="step">
                <div className="step-number">
                    <h3>Étape {stepNumber}</h3>
                </div>
                <div className="thumbnail-container">
                    <img
                        className="thumbnail"
                        src={
                            "https://www.dragonballrebirth.fr/img/aventure/etapes/" +
                            storyNumber +
                            "/story-" +
                            storyNumber +
                            "-" +
                            stepNumber +
                            ".jpg"
                        }
                        alt=""
                    />
                    <div className="location">
                        <PlanetSelect
                            planetId={planetId}
                            planets={getData.planets}
                            stepMode={true}
                        />
                        <MapCaseSelect
                            mapCaseId={mapCaseId}
                            mapCases={getData.mapCases}
                            stepMode={true}
                        />
                    </div>
                </div>
                <div className="conditions">
                    {conditions.map((condition) => (
                        <ConditionsSelect
                            key={condition}
                            conditions={getData.winConditions}
                            conditionId={condition}
                        />
                    ))}
                </div>
                {selectEnemy ? (
                    <div className="fight">
                        <h2 className="player">
                            <CharacterSelect
                                characters={getData.characters}
                                characterId={characterId}
                                stepMode={true}
                            />
                        </h2>
                        <span className="versus">VS</span>
                        <h2 className="enemy">
                            <CharacterSelect
                                characters={getData.characters}
                                characterId={enemyId}
                                stepMode={true}
                            />
                            <span className="info">
                                Niveau&nbsp;:&nbsp;{enemyLevel}
                            </span>
                            <span className="info">
                                Vitalité&nbsp;:&nbsp;
                                {enemyHealth}
                            </span>
                        </h2>
                    </div>
                ) : (
                    <h2 className="nofight-character player">
                        <CharacterSelect
                            characters={getData.characters}
                            characterId={characterId}
                            stepMode={true}
                        />
                    </h2>
                )}

                <div className="rewards">
                    <h3>Récompense</h3>
                    {rewards.map((reward) => (
                        <RewardsSelect
                            key={reward}
                            rewards={getData.rewards}
                            rewardId={reward}
                            getData={getData}
                        />
                    ))}
                </div>
            </div>
        </div>
    );
}
