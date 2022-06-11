import React from "react";
import CapsScarecitiesSelect from "../../../../components/Select/CapsScarecitiesSelect";

export default function FormCaps({
    forwardRef,
    handleSubmit,
    setName,
    name,
    setScarecityId,
    scarecityId,
    setMinLevel,
    minLevel,
    setStrength,
    strength,
    setDefense,
    defense,
    setEnergy,
    energy,
    setVitality,
    vitality,
    setPrice,
    price,
    setBonus,
    bonus,
    setMalus,
    malus,
    setCharacterId,
    characterId,
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
                <CapsScarecitiesSelect
                    capScarecityId={scarecityId}
                    scarecities={getData.capsScarecities}
                    selectMode={true}
                    selectName="caps_scarecities_id"
                    onChangeFunc={(e) => setScarecityId(Number(e.target.value))}
                />
                <label htmlFor="caps_scarecities_id">Rareté</label>
            </div>
            <div className="form-group">
                <input
                    type="number"
                    step="100"
                    id="price"
                    name="price"
                    value={price}
                    onChange={(e) => setPrice(Number(e.target.value))}
                    placeholder="CSS"
                />
                <label htmlFor="price">Prix</label>
            </div>
            <div className="form-group">
                <input
                    type="number"
                    id="strength"
                    name="strength"
                    value={strength}
                    onChange={(e) => setStrength(Number(e.target.value))}
                    placeholder="CSS"
                />
                <label htmlFor="strength">Force</label>
            </div>
            <div className="form-group">
                <input
                    type="number"
                    id="defense"
                    name="defense"
                    value={defense}
                    onChange={(e) => setDefense(Number(e.target.value))}
                    placeholder="CSS"
                />
                <label htmlFor="defense">Défense</label>
            </div>
            <div className="form-group">
                <input
                    type="number"
                    id="energy"
                    name="energy"
                    value={energy}
                    onChange={(e) => setEnergy(Number(e.target.value))}
                    placeholder="CSS"
                />
                <label htmlFor="energy">Énergie</label>
            </div>
            <div className="form-group">
                <input
                    type="number"
                    id="vitality"
                    step="100"
                    name="vitality"
                    value={vitality}
                    onChange={(e) => setVitality(Number(e.target.value))}
                    placeholder="CSS"
                />
                <label htmlFor="vitality">Vitalité</label>
            </div>
            <div className="form-group">
                <input
                    type="number"
                    id="minLevel"
                    name="minLevel"
                    value={minLevel}
                    onChange={(e) => setMinLevel(Number(e.target.value))}
                    placeholder="CSS"
                />
                <label htmlFor="minLevel">Niveau requis</label>
            </div>
            <div className="form-group">
                <input
                    type="text"
                    id="bonus"
                    name="bonus"
                    value={bonus}
                    onChange={(e) => setBonus(e.target.value)}
                    placeholder="CSS"
                />
                <label htmlFor="bonus">Bonus</label>
            </div>
            <div className="form-group">
                <input
                    type="text"
                    id="malus"
                    name="malus"
                    value={malus}
                    onChange={(e) => setMalus(e.target.value)}
                    placeholder="CSS"
                />
                <label htmlFor="malus">Malus</label>
            </div>
            <button type="submit">{buttonText}</button>
        </form>
    );
}
