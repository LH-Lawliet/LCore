import React from 'react';

import {callFivemCallback} from './../utils.js'


export default class TextInput extends React.Component {
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

        this.isSelected = this.isSelected.bind(this)
        this.renderButton = this.renderButton.bind(this)
        this.menuPressSelect = this.menuPressSelect.bind(this)
        this.didImMounted = this.didImMounted.bind(this)
        this.onTextUpdate = this.onTextUpdate.bind(this)
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

    componentDidUpdate() {
        if (this.state.buttonData.selected && !this.state.buttonData.hasFocus) {
            this.state.buttonData.hasFocus = true
            this.searchInput.focus();
            callFivemCallback("askForInputsFocus")
        } else if (!this.state.buttonData.selected && this.state.buttonData.hasFocus) {
            this.state.buttonData.hasFocus = false
            this.searchInput.blur();
            callFivemCallback("releaseInputsFocus")
        }
    }

    didImMounted() {
        return this.mounted
    }

    componentWillUnmount() {
        this.mounted = false
    }

    menuPressSelect() {
        /*this.searchInput.focus();*/
        return
    }

    isSelected () {
        return this.state.buttonData.selected
    }

    onTextUpdate() {
        callFivemCallback("callButtonCallback", {callback:this.state.buttonData.onChange, callbackData:this.searchInput.value})
    }

    renderButton () {
        let button = []

        button.push(<span className="menuButtonLeftText unselectable" key={this.state.buttonData.id+"menuButtonInputText"}>{(this.state.buttonData.text || "Input") + " : "}</span>)

        button.push(
            <input 
                type="text" 
                className="buttonTextInput" 
                key={this.state.buttonData.id+"menuButtonInput"} 
                id={this.state.buttonData.id+"menuButtonInput"}
                ref={inputEl => (this.searchInput = inputEl)}
                placeholder={this.state.buttonData.placeholder}
                onChange={this.onTextUpdate}
            />)
            /*button.push(<span key={this.state.buttonData.id+"menuButtonLeftText"} className={"menuButtonLeftText unselectable"} style={this.state.buttonData.textStyle}>{this.state.buttonData.text}</span>)*/

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
        let menuPressSelect = this.menuPressSelect
        return (      
            <div 
                className={className} 
                onMouseOver={onMouseOver} 
                onMouseDown={ function () {
                    if (canIClick()) {
                        menuPressSelect()
                    }
                }}
            >
                {button}
            </div>
        )
    }
}