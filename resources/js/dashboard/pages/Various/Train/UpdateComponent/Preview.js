import React from "react";
import DurationSelect from "../../../../components/Select/DurationSelect";
import PlanetSelect from "../../../../components/Select/PlanetSelect";
import MapCaseSelect from "../../../../components/Select/MapCaseSelect";

export default function Preview({
    getData,
    name,
    icon,
    duration,
    gain,
    stepId,
    requiredLevel,
    mapCase,
    planet,
    thumbnail,
}) {
    return (
        <div
            className="train admin"
            style={{
                backgroundImage:
                    "linear-gradient(to top, rgba(0,0,0,0.7), rgba(0,0,0,0.9)), url(" +
                    thumbnail +
                    ")",
            }}
        >
            <h2>
                {name}
                {icon && <img src={icon} alt="" />}
            </h2>
            <div className="content">
                {requiredLevel && (
                    <h4>
                        <span className="attribute">Niveau requis</span>{" "}
                        {requiredLevel}
                    </h4>
                )}
                <h4>
                    <span className="attribute">Débloquer à l'étape </span>{" "}
                    {stepId}
                </h4>
                <h4>
                    <span className="attribute">Gain</span> {gain}
                </h4>
            </div>
            <div className="duration">
                <h3>
                    <DurationSelect
                        durations={getData.waitingDurations}
                        durationId={duration}
                    />
                </h3>
            </div>
            <div className="location">
                <PlanetSelect planets={getData.planets} planetId={planet} />
                <div className="case">
                    <h4>
                        <MapCaseSelect
                            mapCases={getData.mapCases}
                            mapCaseId={mapCase}
                        />
                    </h4>
                </div>
            </div>
        </div>
    );
}
