import React from 'react';

import {_} from './../label.js'

import './cloths.css'

export default class Cloths extends React.Component {
    state = {};
    constructor (cloths) {
        super(cloths);
        console.log("oui", _("Inventory"))
        this.cloths = cloths;
        this.createClothPart = this.createClothPart.bind(this)
    };

    createClothPart() {
        let parts = []

        parts.push(<div className="invClothPart" id="invHat" key="invHat">
            <span className="unselectable">{_("hat")}</span>
        </div>)
        parts.push(<div className="invClothPart" id="invGlasses" key="invGlasses">
            <span className="unselectable">{_("glasses")}</span>
        </div>)
        parts.push(<div className="invClothPart" id="invMask" key="invMask">
            <span className="unselectable">{_("mask")}</span>
        </div>)
        parts.push(<div className="invClothPart" id="invTops" key="invTops">
            <span className="unselectable">{_("top")}</span>
        </div>)
        parts.push(<div className="invClothPart" id="invUndershirt" key="invUndershirt">
            <span className="unselectable">{_("undertop")}</span>
        </div>)
        parts.push(<div className="invClothPart" id="invGlove" key="invGlove">
            <span className="unselectable">{_("gloves")}</span>
        </div>)
        parts.push(<div className="invClothPart" id="invPants" key="invPants">
            <span className="unselectable">{_("pants")}</span>
        </div>)
        parts.push(<div className="invClothPart" id="invShoes" key="invShoes">
            <span className="unselectable">{_("shoes")}</span>
        </div>)

        return parts
    }

    render() {
        let cloths = this.createClothPart()
        return (      
            <div id="Cloths">{cloths}</div>
        )
    }
}