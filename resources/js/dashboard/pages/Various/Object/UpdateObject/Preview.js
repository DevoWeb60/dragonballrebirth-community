import React from "react";
import DurationSelect from "../../../../components/Select/DurationSelect";

export default function Preview({
    name,
    icon,
    duration,
    consumable,
    using,
    description,
    getData,
}) {
    return (
        <div className="object admin">
            <img src={icon} alt="" />
            <h3>
                {name}
                <br />
                <span className="min">{consumable && "Consommable"}</span>
            </h3>
            <div className="content">
                {description && (
                    <div className="description">
                        <h5>Description </h5>
                        <p>{description}</p>
                    </div>
                )}
                {using && (
                    <div className="using">
                        <h5>Usage </h5>
                        <p>{using}</p>
                    </div>
                )}
                <div className="duration">
                    <h5>Durée</h5>
                    <p>
                        <DurationSelect
                            durations={getData.objectDurations}
                            durationId={duration}
                        />
                    </p>
                </div>
            </div>
        </div>
    );
}
