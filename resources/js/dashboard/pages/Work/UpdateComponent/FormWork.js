import React from "react";
import DurationSelect from "../../../components/Select/DurationSelect";
import MapCaseSelect from "../../../components/Select/MapCaseSelect";
import ObjectSelect from "../../../components/Select/ObjectSelect";
import PlanetSelect from "../../../components/Select/PlanetSelect";

export default function FormObject({
    forwardRef,
    name,
    duration,
    utils,
    mapCase,
    object,
    planet,
    thumbnail,
    unlockStep,
    setName,
    setDuration,
    setUtils,
    setMapCase,
    setObject,
    setPlanet,
    setThumbnail,
    setUnlockStep,
    handleSubmit,
    buttonText,
    getData,
}) {
    return (
        <form
            className="form-flex"
            onSubmit={(e) => handleSubmit(e)}
            ref={forwardRef}
        >
            <div className="form-group">
                <input
                    type="text"
                    id="name"
                    name="name"
                    value={name}
                    onChange={(e) => setName(e.target.value)}
                    placeholder="CSS"
                />
                <label htmlFor="name">Nom</label>
            </div>
            <div className="form-group">
                <input
                    type="text"
                    id="utils"
                    name="utils"
                    value={utils}
                    onChange={(e) => setUtils(e.target.value)}
                    placeholder="CSS"
                />
                <label htmlFor="utils">Utilité</label>
            </div>
            <div className="form-group">
                <input
                    type="text"
                    id="thumbnail"
                    name="thumbnail"
                    value={thumbnail}
                    onChange={(e) => setThumbnail(e.target.value)}
                    placeholder="CSS"
                />
                <label htmlFor="thumbnail">Image de fond</label>
            </div>
            <div className="form-group">
                <input
                    type="number"
                    id="unlockStep"
                    name="unlockStep"
                    value={unlockStep}
                    onChange={(e) => setUnlockStep(Number(e.target.value))}
                    placeholder="CSS"
                />
                <label htmlFor="unlockStep">Étape de déblocage</label>
            </div>
            <div className="form-group">
                <DurationSelect
                    durations={getData.waitingDurations}
                    durationId={duration}
                    selectName="waiting_duration_id"
                    onChangeFunc={(e) => setDuration(Number(e.target.value))}
                    selectMode={true}
                />
            </div>
            <div className="form-group">
                <MapCaseSelect
                    mapCases={getData.mapCases}
                    mapCaseId={mapCase}
                    selectName="map_case_id"
                    onChangeFunc={(e) => setMapCase(Number(e.target.value))}
                    selectMode={true}
                />
            </div>
            <div className="form-group">
                <PlanetSelect
                    planets={getData.planets}
                    planetId={planet}
                    selectName="planet_id"
                    onChangeFunc={(e) => setPlanet(Number(e.target.value))}
                    selectMode={true}
                />
            </div>
            <div className="form-group">
                <ObjectSelect
                    objects={getData.objects}
                    objectId={object}
                    selectName="object_id"
                    onChangeFunc={(e) => setObject(Number(e.target.value))}
                    selectMode={true}
                />
            </div>
            <button type="submit">{buttonText}</button>
        </form>
    );
}
