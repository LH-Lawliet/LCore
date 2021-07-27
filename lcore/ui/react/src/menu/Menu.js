import React from 'react';

import Banner from './Banner.js'
import Subtitle from './Subtitle.js'
import Button from './Button.js'
import ArrowsUpAndDown from './ArrowsUpAndDown.js'



let testMenu = {
    "width": "20vw",
    "banner": {
        "title":"Lawliet",
    },
    "subTitle":"Il est trop fort",
    "maxButtons":10,
    "buttons":[
        {"text": "button 1", "rightText": "150 $"},
        {"text": "button 2", selected:true},
        {"text": "button 3", "rightText": "hazeuyagzeyaze"},
        {"text": "button 4", "rightText": " $"},
        {"text": "button 5", "rightText": "2 $"},
        {"text": "button 6"},
        {"text": "button 7"},
        {"text": "button 8"},
        {"text": "button 9"},
        {"text": "button 10"},
        {"text": "button 11"},
        {"text": "button 12"},
        {"text": "button 13"},
        {"text": "button 14"},
        {"text": "button 15"},
        {"text": "button 16"},
        {"text": "button 17"},
        {"text": "button 18"},
        {"text": "button 19"},
        {"text": "button 20"},
        {"text": "button 21"},
        {"text": "button 22"},
        {"text": "button 23"},
        {"text": "button 24"},
        {"text": "button 25"},
        {"text": "button 26"},
        {"text": "button 27"},
        {"text": "button 28"},
        {"text": "button 29"},
        {"text": "button 30"},
        {"text": "button 31"},
        {"text": "button 32"},
    ]
}


export default class Menu extends React.Component {
    state = {};
    constructor () {
        super();
        this.state = {
            menuData: testMenu,
            currentButton: 16
        };

        this.createMenu = this.createMenu.bind(this)
        this.getMenuData = this.getMenuData.bind(this)
        this.getCurrentButton = this.getCurrentButton.bind(this)
        this.menuGoUp = this.menuGoUp.bind(this)
        this.menuGoDown = this.menuGoDown.bind(this)
    };

    componentDidMount() {
        let setMenuData = this.setMenuData
        let menuGoUp = this.menuGoUp
        let menuGoDown = this.menuGoDown
        window.addEventListener('message', function(event) {
            if (event.action && event.action === "createMenu") {
                setMenuData(event.data)
            }
            if (event.action && event.action === "menuGoUp") {
                menuGoUp()
            }
            if (event.action && event.action === "menuGoDown") {
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
        let next = this.state.currentButton-1
        if (next<0) {
            next = this.state.menuData.buttons.length-1
        }
        this.setState({currentButton: next})
    }

    menuGoDown() {
        let next = this.state.currentButton+1
        if (next >= this.state.menuData.buttons.length) {
            next = 0
        }
        this.setState({currentButton: next})
    }

    getCurrentButton() {
        return this.state.currentButton
    }

    menuPadding() {
        return this.state.menuData.padding || "2vh"
    }

    menuWidth() {
        return this.state.menuData.width || "20vw"
    }

    setMenuData(data) {
        this.setState({menuData:data})
    }

    getMenuData() {
        return this.state.menuData
    }

    createMenu(data) {
        let menu = []

        menu.push(<Banner key={"banner"} data={data.banner}/>)
        menu.push(<Subtitle key={"SubTitle"} subtitle={data.subTitle} buttons={data.buttons} getSelectedButton={this.getCurrentButton}/>)


        let start = 0
        let end = data.maxButtons

        if (end-2<this.state.currentButton) {
            start = this.state.currentButton-(data.maxButtons-2)
            end = this.state.currentButton+2
        }

        if (end>data.buttons.length-1) {
            end = data.buttons.length
            start = end-data.maxButtons
        }

        for (let n = start; n < end; n++) {
            let k = n+""

            if (n === this.state.currentButton) {
                data.buttons[k].selected = true
            } else {
                data.buttons[k].selected = false
            }

            
            data.buttons[k].id = n
            if (!data.buttons.type) {
                menu.push(<Button key={n} button={data.buttons[k]}/>)
            }
        }

        console.log(data.buttons.length,data.maxButtons)
        if (data.buttons.length>data.maxButtons) {
            console.log("prompt arrows")
            menu.push(<ArrowsUpAndDown key={"ArrowsUpAndDown"}/>)
        }

        return menu
    }

    render() {
        let menu = this.createMenu(this.getMenuData())
        let padding = this.menuPadding()
        let width = this.menuWidth()
        return (      
            <div id="Menu" style={{"padding":padding, "width":width}}>{menu}</div>
        )
    }
}