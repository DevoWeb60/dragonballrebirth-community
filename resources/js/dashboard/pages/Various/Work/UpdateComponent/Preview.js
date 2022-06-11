import React from "react";
import DurationSelect from "../../../../components/Select/DurationSelect";
import ObjectSelect from "../../../../components/Select/ObjectSelect";
import PlanetSelect from "../../../../components/Select/PlanetSelect";
import MapCaseSelect from "../../../../components/Select/MapCaseSelect";

export default function Preview({
    getData,
    name,
    duration,
    utils,
    mapCase,
    object,
    planet,
    thumbnail,
    unlockStep,
}) {
    return (
        <div
            className="work admin"
            style={{
                backgroundImage:
                    "linear-gradient(to top, rgba(0,0,0,0.7), rgba(0,0,0,0.9)), url(" +
                    thumbnail +
                    ")",
            }}
        >
            <h2>{name}</h2>
            <div className="content">
                <div className="gain">
                    <h3>Obtiens</h3>
                    <p>
                        <ObjectSelect
                            objects={getData.objects}
                            objectId={object}
                        />
                    </p>
                </div>
                <div className="using">
                    <h3>Utilité</h3>
                    <p>{utils}</p>
                </div>
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
