import React from 'react';

import Banner from './Banner.js'
import Subtitle from './Subtitle.js'
import Button from './Button.js'
import ListButton from './ListButton.js'

import ArrowsUpAndDown from './ArrowsUpAndDown.js'
import {recursiveAssign, callFivemCallback} from './../utils.js'


function getDefaultMenu() {
    return {
        "width": "25vw",
        "padding": "2vh",
        "banner": {
            "height":'10vh',
            "title":"Title",
            "backgroundImage":"https://raw.githubusercontent.com/LH-Lawliet/gtavThings/main/img/menu/commonmenu/interaction_bgd.png",
        },
        "subTitle": "Subtitle",
        "maxButtons":10,
        "currentButton":0,
        "buttons":[]
    }
}



export default class Menu extends React.Component {
    state = {};
    constructor () {
        super();
        this.state = {
            menuData: getDefaultMenu(),
            showMenu: false
        };

        this.createMenu = this.createMenu.bind(this)
        this.setMenuData = this.setMenuData.bind(this)
        this.getMenuData = this.getMenuData.bind(this)
        this.getCurrentButton = this.getCurrentButton.bind(this)
        this.menuGoUp = this.menuGoUp.bind(this)
        this.menuGoDown = this.menuGoDown.bind(this)
        this.menuPressSelect = this.menuPressSelect.bind(this)
        this.isVisible = this.isVisible.bind(this)
        this.setVisible = this.setVisible.bind(this)
    };

    componentDidMount() {
        let setMenuData = this.setMenuData
        let menuGoUp = this.menuGoUp
        let menuGoDown = this.menuGoDown
        let menuPressSelect = this.menuPressSelect
        let isVisible = this.isVisible
        let setVisible = this.setVisible
        window.addEventListener('message', function(event) {
            if (event.data.action && event.data.action === "setMenu") {
                if (!isVisible()) {
                    setMenuData(event.data.menuData, true)
                }
            }
            if (event.data.action && event.data.action === "closeMenu") {
                if (isVisible()) {
                    setVisible(false, event.data.getState)
                }
            }
            if (event.data.action && event.data.action === "menuGoUp") {
                if (isVisible()) {
                    menuGoUp()
                }
            }
            if (event.data.action && event.data.action === "menuGoDown") {
                if (isVisible()) {
                    menuGoDown()
                }
            }
            if (event.data.action && event.data.action === "menuPressSelect") {
                if (isVisible()) {
                    menuPressSelect()
                }
            }
        });

        window.addEventListener('keydown', function (e) {
            if (e.key === "ArrowDown") {
                if (isVisible()) {
                    menuGoDown()
                }
            }
            if (e.key === "ArrowUp") {
                if (isVisible()) {
                    menuGoUp()
                }
            }
            if (e.key === "Enter") {
                if (isVisible()) {
                    menuPressSelect()
                }
            }
        });
    }

    menuPressSelect() {
        let button = this.state.menuData.buttons[this.state.menuData.currentButton]
        if (button && button.callback) {
            callFivemCallback("callButtonCallback", button)
        }
    }

    menuGoUp() {
        let next = this.state.menuData.currentButton-1
        if (next<0) {
            next = this.state.menuData.buttons.length-1
        }
        let menuData = this.state.menuData
        menuData.currentButton = next
        this.setState({menuData: this.state.menuData})
    }

    menuGoDown() {
        let next = this.state.menuData.currentButton+1
        if (next >= this.state.menuData.buttons.length) {
            next = 0
        }
        let menuData = this.state.menuData
        menuData.currentButton = next
        this.setState({menuData: this.state.menuData})
    }

    isVisible() {
        return this.state.showMenu
    }

    setVisible(visible, callbackState) {
        if (visible) {
            this.setState({showMenu:visible})
        } else {
            if (callbackState) {
                callFivemCallback("updateMenuState", this.getMenuData())
            }
            this.setState({showMenu:visible, menuData:getDefaultMenu()})
        }
        
    }

    getCurrentButton() {
        return this.state.menuData.currentButton
    }

    setMenuData(data, forceVisible) {
        let menu = getDefaultMenu()
        recursiveAssign(menu,data)
        if (forceVisible) {
            this.setState({menuData:menu, showMenu:true})
        } else {
            this.setState({menuData:data})
        }
    }

    getMenuData() {
        return this.state.menuData
    }

    createMenu(data) {
        if (!this.isVisible()) {
            return
        }
        
        let menu = []

        menu.push(<Banner key={"banner"} data={data.banner}/>)
        menu.push(<Subtitle key={"SubTitle"} subtitle={data.subTitle} buttons={data.buttons} getSelectedButton={this.getCurrentButton}/>)


        if ((data.buttons) && (data.buttons.length !== 0)) {
            let start = 0
            let end = data.maxButtons

            if (end>data.buttons.length) {
                end = data.buttons.length
            }

            if (end-2<data.currentButton) {
                start = data.currentButton-(data.maxButtons-2)
                end = data.currentButton+2
            }

            if (end>data.buttons.length-1) {
                end = data.buttons.length
                start = end-data.maxButtons
            }

            if (start<0) {
                start = 0
            }

            if (end<0) {
                end = 0
            }

            for (let n = start; n < end; n++) {
                let k = n+""

                let thisButton = data.buttons[k]

                if (n === data.currentButton) {
                    thisButton.selected = true
                } else {
                    thisButton.selected = false
                }

                
                thisButton.id = n
                if (!thisButton.type) {
                    menu.push(<Button key={n} button={thisButton}/>)
                } else if (thisButton.type === "list") {
                    menu.push(<ListButton key={n} button={thisButton}/>)
                }
            }

            if (data.buttons.length>data.maxButtons) {
                menu.push(<ArrowsUpAndDown key={"ArrowsUpAndDown"}/>)
            }
        }
        
        return menu
    }

    render() {
        let menuData = this.getMenuData()
        let menu = this.createMenu(menuData)
        return (      
            <div id="Menu" style={{"padding":menuData.padding, "width":menuData.width}}>{menu}</div>
        )
    }
}