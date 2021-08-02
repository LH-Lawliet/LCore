import React from 'react';

import {callFivemCallback} from './../utils.js'


export default class Button extends React.Component {
    state = {};
    constructor (data) {
        super(data);
        this.state = {
            buttonData: data.button
        };

        this.getText = this.getText.bind(this)
        this.getRightText = this.getRightText.bind(this)
        this.isSelected = this.isSelected.bind(this)
        this.renderButton = this.renderButton.bind(this)
    };


    componentDidMount() {
        let menuPressSelect = this.menuPressSelect
        let isSelected = this.isSelected

        window.addEventListener('message', function(event) {
            if (event.data.action && event.data.action === "menuPressSelect") {
                if (isSelected()) {
                    menuPressSelect()
                }
            }
        });

        window.addEventListener('keydown', function (e) {
            if (e.key === "Enter") {
                if (isSelected()) {
                    menuPressSelect()
                }
            }
        });
    }

    menuPressSelect() {
        let button = this.state.buttonData
        if (button && button.callback) {
            callFivemCallback("callButtonCallback", button)
        }
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

    renderButton () {
        let button = []

        if (this.state.buttonData.text) {
            button.push(<span key={this.state.buttonData.id+"menuButtonLeftText"} className={"menuButtonLeftText unselectable"} style={this.state.buttonData.textStyle}>{this.state.buttonData.text}</span>)
        }
        if (this.state.buttonData.rightText) {
            button.push(<span key={this.state.buttonData.id+"menuButtonRightText"} className={"menuButtonRightText unselectable"} style={this.state.buttonData.rightTextStyle}>{this.state.buttonData.rightText}</span>)
        }
        return button
    }

    render() {
        let button = this.renderButton()       
        let className = "menuButton"
        if (this.isSelected()) {
            className += " menuSelectedButton"
        }
        return (      
            <div className={className}>
                {button}
            </div>
        )
    }
}