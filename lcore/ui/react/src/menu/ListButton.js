import React from 'react';

let leftArrowUrl = "https://raw.githubusercontent.com/LH-Lawliet/gtavThings/main/img/menu/commonmenu/arrowleft.png"
let rightArrowUrl = "https://raw.githubusercontent.com/LH-Lawliet/gtavThings/main/img/menu/commonmenu/arrowright.png"

export default class ListButton extends React.Component {
    state = {};
    constructor (data) {
        super(data);
        this.state = {
            buttonData: data.button
        };

        this.getText = this.getText.bind(this)
        this.isSelected = this.isSelected.bind(this)
        this.renderButton = this.renderButton.bind(this)
    };

    getText () {
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

        button.push(
            <div key={this.state.buttonData.id+"menuButtonRightTextDiv"} className = {className+" rightPartListButton"}>
                <img key={this.state.buttonData.id+"menuButtonRightTextLeftArrow"} alt='leftArrow' src={leftArrowUrl} className={className} />
                <div className="spanContainer">
                    <span key={this.state.buttonData.id+"menuButtonRightText"}>MARIE</span>
                </div>
                <img key={this.state.buttonData.id+"menuButtonRightTextRightArrow"} alt='rightArrow' src={rightArrowUrl} className={className} />
            </div>
        )
        
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