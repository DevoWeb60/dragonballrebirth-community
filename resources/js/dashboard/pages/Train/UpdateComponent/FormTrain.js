import React from "react";
import DurationSelect from "../../../components/Select/DurationSelect";
import MapCaseSelect from "../../../components/Select/MapCaseSelect";
import PlanetSelect from "../../../components/Select/PlanetSelect";

export default function FormTrain({
    forwardRef,
    handleSubmit,
    buttonText,
    getData,
    name,
    icon,
    duration,
    mapCase,
    planet,
    thumbnail,
    stepId,
    requiredLevel,
    gain,
    setIcon,
    setGain,
    setStepId,
    setRequiredLevel,
    setName,
    setDuration,
    setMapCase,
    setPlanet,
    setThumbnail,
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
                    id="icon"
                    name="icon"
                    value={icon}
                    onChange={(e) => setIcon(e.target.value)}
                    placeholder="CSS"
                />
                <label htmlFor="icon">Icône de tête</label>
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
                    id="stepId"
                    name="stepId"
                    value={stepId}
                    onChange={(e) => setStepId(Number(e.target.value))}
                    placeholder="CSS"
                />
                <label htmlFor="stepId">Étape de déblocage</label>
            </div>
            <div className="form-group">
                <input
                    type="number"
                    id="requiredLevel"
                    name="requiredLevel"
                    value={requiredLevel}
                    onChange={(e) => setRequiredLevel(Number(e.target.value))}
                    placeholder="CSS"
                />
                <label htmlFor="requiredLevel">Niveau requis</label>
            </div>
            <div className="form-group">
                <input
                    type="text"
                    id="gain"
                    name="gain"
                    value={gain}
                    onChange={(e) => setGain(e.target.value)}
                    placeholder="CSS"
                />
                <label htmlFor="gain">Gain</label>
            </div>
            <div className="form-group">
                <DurationSelect
                    durations={getData.waitingDurations}
                    durationId={duration}
                    selectName="duration_id"
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
            <button type="submit">{buttonText}</button>
        </form>
    );
}
