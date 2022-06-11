import React from "react";
import CapsScarecitiesSelect from "../../../../components/Select/CapsScarecitiesSelect";

export default function Preview({
    name,
    scarecityId,
    minLevel,
    strength,
    defense,
    energy,
    vitality,
    price,
    bonus,
    malus,
    characterId,
    getData,
}) {
    return (
        <div className="capsule admin">
            <h3 className="title">{name}</h3>
            <h3 className="level">
                Niv. <span className="lvl-number">{minLevel}</span> requis
            </h3>

            <CapsScarecitiesSelect
                capScarecityId={scarecityId}
                scarecities={getData.capsScarecities}
            />

            <div className="stats">
                <h4>
                    Stats
                    <span className="bonus">{bonus}</span>
                    <span className="malus">{malus}</span>
                </h4>
                {strength !== 0 && (
                    <p
                        className={
                            strength > 0
                                ? "strength positive"
                                : "strength negative"
                        }
                    >
                        <span className="attribute">Force </span> {strength}
                    </p>
                )}
                {defense !== 0 && (
                    <p
                        className={
                            defense > 0
                                ? "defense positive"
                                : "defense negative"
                        }
                    >
                        <span className="attribute">Défense </span> {defense}
                    </p>
                )}
                {energy !== 0 && (
                    <p
                        className={
                            energy > 0 ? "energy positive" : "energy negative"
                        }
                    >
                        <span className="attribute">Énergie </span> {energy}
                    </p>
                )}
                {vitality !== 0 && (
                    <p
                        className={
                            vitality > 0
                                ? "vitality positive"
                                : "vitality negative"
                        }
                    >
                        <span className="attribute">Vitalité </span> {vitality}
                    </p>
                )}
            </div>
            {price !== 0 && (
                <h4 className="price">
                    {price}
                    <span>Z</span>
                </h4>
            )}
        </div>
    );
}
