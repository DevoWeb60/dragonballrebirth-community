import React, { useEffect, useState } from "react";

export default function CapsSelect({
    selectName = "",
    greenCaps = false,
    characterCapsId = 0,
    caps,
    capsIcon,
    selectMode,
}) {
    if (!selectMode) {
        return caps.map((cap) => (
            <>
                {cap.id === characterCapsId && (
                    <span>
                        {cap.name} <img src={capsIcon} alt={cap.name} />
                    </span>
                )}
            </>
        ));
    }

    if (greenCaps) {
        return (
            <select name={selectName}>
                {caps.map((cap) => {
                    if (cap.caps_scarecities_id === 1) {
                        return (
                            <>
                                {characterCapsId === cap.id ? (
                                    <option value={cap.id} selected>
                                        {cap.name}
                                    </option>
                                ) : (
                                    <option value={cap.id}>{cap.name}</option>
                                )}
                            </>
                        );
                    }
                })}
            </select>
        );
    }

    return (
        <select name={selectName}>
            {caps.map((cap) => {
                if (cap.caps_scarecities_id !== 1) {
                    <option value={cap.id}>
                        {cap.name}
                        <img src={capsIcon} alt={cap.name} />
                    </option>;
                }
            })}
        </select>
    );
}
