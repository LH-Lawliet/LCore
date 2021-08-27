import React from 'react';

import {isEnvBrowser} from './../utils.js'

let debugMenu = false

function getDefaultMenu() {
    if (isEnvBrowser() && debugMenu) {
        return {
            "sizeX":8,
            "sizeY":10,
            "items":[
                {code:"BREAD", qtty:15},
                {code:"COKE", customName:'WhiteVagos', qtty:10},
            ]
        }
    }
}



export default class Inventory extends React.Component {
    state = {};
    constructor () {
        super();
        this.state = {
            menuData: getDefaultMenu(),
            showMenu: isEnvBrowser()
        };

        this.menuClose = this.menuClose.bind(this)
    };

    componentDidMount() {
        menuClose = this.menuClose
        window.addEventListener('keydown', function (e) {
            if (e.key === "Escape") {
                if (isVisible()) {
                    menuClose()
                }
            }
        });
    }

    menuClose() {
        this.setState({showMenu:false})
    }

    render() {
        let inventory = this.createMenu(this.state.menuData)
        return (      
            <div id="Inventory">{inventory}</div>
        )
    }
}