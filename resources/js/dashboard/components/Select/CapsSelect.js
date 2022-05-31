import axios from "axios";
import React, { useEffect, useState } from "react";

export default function CapsSelect({
    selectName = "",
    greenCaps = false,
    characterCapsId = 0,
    caps,
    capsIcon,
    selectMode,
    onChangeFunc,
    disabled = false,
}) {
    if (!selectMode) {
        return caps.map((cap) => {
            return (
                cap.id === characterCapsId && (
                    <span key={cap.id}>
                        {cap.name}
                        {capsIcon && <img src={capsIcon} alt={cap.name} />}
                    </span>
                )
            );
        });
    }

    if (greenCaps) {
        return (
            <select
                name={selectName}
                value={characterCapsId}
                onChange={onChangeFunc}
                disabled={disabled}
            >
                {caps.map((cap) => {
                    if (cap.caps_scarecities_id === 1) {
                        return (
                            <option value={cap.id} key={cap.id}>
                                {cap.name}
                            </option>
                        );
                    }
                })}
            </select>
        );
    }

    return (
        <select
            name={selectName}
            value={characterCapsId}
            onChange={onChangeFunc}
            disabled={disabled}
        >
            {caps.map((cap) => {
                if (cap.caps_scarecities_id !== 1) {
                    <option value={cap.id} key={cap.id}>
                        {cap.name}
                        <img src={capsIcon} alt={cap.name} />
                    </option>;
                }
            })}
        </select>
    );
}
