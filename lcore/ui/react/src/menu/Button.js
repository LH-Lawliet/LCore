import React from 'react';

export default class Subtitle extends React.Component {
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

        let className = "unselectable"
        if (this.isSelected()) {
            className += " menuSelectedButton"
        }

        if (this.state.buttonData.text) {
            button.push(<span key={this.state.buttonData.id+"menuButtonLeftText"} className={className+" menuButtonLeftText"} style={this.state.buttonData.textStyle}>{this.state.buttonData.text}</span>)
        }
        if (this.state.buttonData.rightText) {
            button.push(<span key={this.state.buttonData.id+"menuButtonRightText"} className={className+" menuButtonRightText"} style={this.state.buttonData.rightTextStyle}>{this.state.buttonData.rightText}</span>)
        }
        return button
    }

    render() {
        let button = this.renderButton()
        let selected = this.isSelected()
        return (      
            <div className="menuButton" style={{"backgroundColor":(selected ? "rgba(230,230,230,0.95)" : "rgba(0,0,0,0.6)")}}>
                {button}
            </div>
        )
    }
}