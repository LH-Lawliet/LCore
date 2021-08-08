import React from 'react';

import {callFivemCallback, hexToRGB} from './../utils.js'


export default class Button extends React.Component {
    state = {};
    constructor (data) {
        super(data);
        this.state = {
            buttonData: data.button
        };
        this.mounted = false
        this.onMouseOver = data.onMouseOver

        this.canIClick = data.canIClick
        this.exitDisableClickZone = data.exitDisableClickZone
        this.enterDisableClickZone = data.enterDisableClickZone

        this.getText = this.getText.bind(this)
        this.getRightText = this.getRightText.bind(this)
        this.isSelected = this.isSelected.bind(this)
        this.renderButton = this.renderButton.bind(this)
        this.menuPressSelect = this.menuPressSelect.bind(this)
        this.didImMounted = this.didImMounted.bind(this)
        this.colorChange = this.colorChange.bind(this)
    };


    componentDidMount() {
        let menuPressSelect = this.menuPressSelect
        let didImMounted = this.didImMounted
        let isSelected = this.isSelected
        this.mounted = true

        window.addEventListener('message', function(event) {
            if (event.data.action && event.data.action === "menuPressSelect") {
                //console.log("get message to menuPressSelect")
                if (didImMounted() && isSelected()) {
                    menuPressSelect()
                }
            }
        });

        window.addEventListener('keydown', function (e) {
            if (e.key === "Enter") {
                //console.log("get keydown to menuPressSelect")
                if (didImMounted() && isSelected()) {
                    menuPressSelect()
                }
            }
        });
    }

    didImMounted() {
        return this.mounted
    }

    componentWillUnmount() {
        this.mounted = false
    }

    menuPressSelect() {
        let button = this.state.buttonData
        if (this.didImMounted() && button && button.callback && this.isSelected()) {
            callFivemCallback("callButtonCallback", button)
        }
        return
    }

    getText () {
        return this.state.buttonData.text
    }

    getRightText () {
        return this.state.buttonData.text
    }

    isSelected () {
        return this.state.buttonData.selected
    }

    colorChange(color) {
        let button = this.state.buttonData
        if (this.didImMounted() && button && button.onColorChange && this.isSelected()) {
            callFivemCallback("callButtonCallback", {callback:button.onColorChange, callbackData:hexToRGB(color)})
        }
    }

    renderButton () {
        let button = []

        if (this.state.buttonData.text) {
            button.push(<span key={this.state.buttonData.id+"menuButtonLeftText"} className={"menuButtonLeftText unselectable"} style={this.state.buttonData.textStyle}>{this.state.buttonData.text}</span>)
        }
        if (this.state.buttonData.rightText) {
            button.push(<span key={this.state.buttonData.id+"menuButtonRightText"} className={"menuButtonRightText unselectable"} style={this.state.buttonData.rightTextStyle}>{this.state.buttonData.rightText}</span>)
        } else if (this.state.buttonData.rightComponent) {
            let colorChange = this.colorChange
            let enterDisableClickZone = this.enterDisableClickZone
            let exitDisableClickZone = this.exitDisableClickZone
            if (this.state.buttonData.rightComponent === "colorPicker") {
                button.push(
                    <input 
                        key={this.state.buttonData.id+"menuButtonRightComponent"} 
                        className={"menuButtonRightComponent color unselectable"} 
                        type="color" 
                        id={this.state.buttonData.id+"menuButtonRightComponent"} 
                        name={this.state.buttonData.componentText} 
                        readOnly={this.state.colorOfInput || "#000000"}
                        onChange={function (e) {colorChange(e.target.value)}}
                        onMouseEnter={enterDisableClickZone}
                        onMouseLeave={exitDisableClickZone}
                    />
                )
            }
        }
        return button
    }

    render() {
        let button = this.renderButton()       
        let className = "menuButton"
        let onMouseOver = this.onMouseOver
        if (this.isSelected()) {
            className += " menuSelectedButton"
        }
        
        let canIClick = this.canIClick
        return (      
            <div 
                className={className} 
                onMouseOver={onMouseOver} 
                onMouseDown={ function () {
                    if (canIClick()) {
                        console.log("click button")
                    }
                }}
            >
                {button}
            </div>
        )
    }
}