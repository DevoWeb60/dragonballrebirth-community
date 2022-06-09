import React from "react";

export default function ObjectSelect({
    objects,
    selectName,
    objectId,
    selectMode,
    onChangeFunc,
    disabled = false,
}) {
    if (!selectMode) {
        return objects.map((object) => {
            return (
                object.id === objectId && (
                    <span key={object.id}>
                        {object.name}
                        <img src={object.icon} alt="" />
                    </span>
                )
            );
        });
    }

    return (
        <>
            <select
                name={selectName}
                onChange={onChangeFunc}
                value={objectId}
                disabled={disabled}
            >
                {objects.map((object) => (
                    <option value={object.id} key={object.id}>
                        {object.name}
                    </option>
                ))}
            </select>
        </>
    );
}
