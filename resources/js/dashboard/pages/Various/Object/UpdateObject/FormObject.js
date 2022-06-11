import React from "react";
import DurationSelect from "../../../../components/Select/DurationSelect";

export default function FormObject({
    forwardRef,
    name,
    icon,
    duration,
    consumable,
    using,
    description,
    setName,
    setIcon,
    setDuration,
    setConsumable,
    setUsing,
    setDescription,
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
                    id="icon"
                    name="icon"
                    value={icon}
                    onChange={(e) => setIcon(e.target.value)}
                    placeholder="CSS"
                />
                <label htmlFor="icon">Icône</label>
            </div>
            <div className="form-group">
                <DurationSelect
                    durations={getData.objectDurations}
                    durationId={duration}
                    selectName="object_duration_id"
                    onChangeFunc={(e) => setDuration(Number(e.target.value))}
                    selectMode={true}
                />
            </div>
            <div className="form-group">
                <textarea
                    id="description"
                    name="description"
                    value={description}
                    onChange={(e) => setDescription(e.target.value)}
                    placeholder="Description"
                ></textarea>
                <label htmlFor="description">Description</label>
            </div>
            <div className="form-group">
                <textarea
                    id="using"
                    name="using"
                    value={using}
                    onChange={(e) => setUsing(e.target.value)}
                    placeholder="Utilisation"
                ></textarea>
                <label htmlFor="using">Utilisation</label>
            </div>
            <div className="form-group-check">
                <input
                    type="checkbox"
                    id="consumable"
                    name="consumable"
                    checked={consumable}
                    onChange={(e) => setConsumable(e.target.checked)}
                />
                <label htmlFor="consumable">Consommable</label>
            </div>
            <button type="submit">{buttonText}</button>
        </form>
    );
}
