import React from 'react';

import Banner from './Banner.js'
import Subtitle from './Subtitle.js'
import Button from './Button.js'
import ArrowsUpAndDown from './ArrowsUpAndDown.js'



let defaultMenu = {
    "width": "20vw",
    "padding": "2vh",
    "banner": {
        "title":"Title",
        "backgroundImage":"https://raw.githubusercontent.com/LH-Lawliet/LMenu/main/static/interaction_bgd.png",
    },
    "subTitle": "Subtitle",
    "maxButtons":10,
    "currentButton":0,
    "buttons":[]
}


function recursiveAssign(element1,element2) {
    for (let k in element2) {
        if (typeof element2[k] === "object") {
            if (element1[k] && (typeof element1[k] === "object")) {
                recursiveAssign(element1[k],element2[k])
            } else {
                element1[k] = element2[k]
            }
        } else {
            element1[k] = element2[k]
        }
    }
}


export default class Menu extends React.Component {
    state = {};
    constructor () {
        super();
        this.state = {
            menuData: defaultMenu,
            showMenu: false
        };

        this.createMenu = this.createMenu.bind(this)
        this.setMenuData = this.setMenuData.bind(this)
        this.getMenuData = this.getMenuData.bind(this)
        this.getCurrentButton = this.getCurrentButton.bind(this)
        this.menuGoUp = this.menuGoUp.bind(this)
        this.menuGoDown = this.menuGoDown.bind(this)
        this.isVisible = this.isVisible.bind(this)
        this.setVisible = this.setVisible.bind(this)
    };

    componentDidMount() {
        console.log("menu nui side, listen for event")
        let setMenuData = this.setMenuData
        let menuGoUp = this.menuGoUp
        let menuGoDown = this.menuGoDown
        let isVisible = this.isVisible
        window.addEventListener('message', function(event) {
            if (event.data.action && event.data.action === "setMenu") {
                console.log(event)
                if (!isVisible()) {
                    setMenuData(event.data.menuData, true)
                }
            }
            if (event.data.action && event.data.action === "menuGoUp") {
                menuGoUp()
            }
            if (event.data.action && event.data.action === "menuGoDown") {
                menuGoDown()
            }
        });

        window.addEventListener('keydown', function (e) {
            if (e.key === "ArrowDown") {
                menuGoDown()
            }
            if (e.key === "ArrowUp") {
                menuGoUp()
            }
        });
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

    setVisible(visible) {
        this.setState({showMenu:visible})
    }

    getCurrentButton() {
        return this.state.menuData.currentButton
    }

    setMenuData(data, forceVisible) {
        if (forceVisible) {
            let menu = Object.assign({}, defaultMenu)
            recursiveAssign(menu,data)
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

        console.log("menuData : ",data)
        
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

                if (n === data.currentButton) {
                    data.buttons[k].selected = true
                } else {
                    data.buttons[k].selected = false
                }

                
                data.buttons[k].id = n
                if (!data.buttons.type) {
                    menu.push(<Button key={n} button={data.buttons[k]}/>)
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