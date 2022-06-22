import React from "react";

export default function PlanetSelect({
    planets,
    selectName,
    planetId,
    selectMode,
    stepMode = false,
    onChangeFunc,
    disabled = false,
}) {
    if (stepMode) {
        return planets.map((planet) => {
            return (
                planet.id == planetId && (
                    <p key={planet.id}>
                        {planet.planet} <img src={planet.icon} alt="" />
                    </p>
                )
            );
        });
    }
    if (!selectMode) {
        return planets.map((planet) => {
            return (
                planet.id == planetId && (
                    <div key={planet.id} className="planet">
                        <img src={planet.icon} alt="" />
                        <h4>{planet.planet}</h4>
                    </div>
                )
            );
        });
    }

    return (
        <>
            <select
                name={selectName}
                onChange={onChangeFunc}
                value={planetId}
                disabled={disabled}
            >
                <option value="0" disabled>
                    Sélectionner une planète
                </option>
                {planets.map((planet) => (
                    <option value={planet.id} key={planet.id}>
                        {planet.planet}
                    </option>
                ))}
            </select>
        </>
    );
}
