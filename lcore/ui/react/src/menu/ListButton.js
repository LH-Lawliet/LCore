import React from 'react';
import {callFivemCallback} from './../utils.js'

let leftArrowUrl = "https://raw.githubusercontent.com/LH-Lawliet/gtavThings/main/img/menu/commonmenu/arrowleft.png"
let rightArrowUrl = "https://raw.githubusercontent.com/LH-Lawliet/gtavThings/main/img/menu/commonmenu/arrowright.png"

export default class ListButton extends React.Component {
    state = {};
    constructor (data) {
        super(data);

        data.button.list = data.button.list || ["nil"]
        this.state = {
            buttonData: data.button,
            selectedElementId: data.selectedElementId || 0
        };

        this.getText = this.getText.bind(this)
        this.isSelected = this.isSelected.bind(this)
        this.renderButton = this.renderButton.bind(this)
        this.getSelectedElementText = this.getSelectedElementText.bind(this)

        this.menuGoRight = this.menuGoRight.bind(this)
        this.menuGoLeft = this.menuGoLeft.bind(this)
    };
    
    componentDidMount() {
        let menuGoRight = this.menuGoRight
        let menuGoLeft = this.menuGoLeft
        let isSelected = this.isSelected
        let menuPressSelect = this.menuPressSelect


        window.addEventListener('message', function(event) {
            if (event.data.action && event.data.action === "menuGoRight") {
                if (isSelected()) {    
                    menuGoRight()
                }
            }
            if (event.data.action && event.data.action === "menuGoLeft") {
                if (isSelected()) {
                    menuGoLeft()
                }
            }
            if (event.data.action && event.data.action === "menuPressSelect") {
                if (isSelected()) {
                    menuPressSelect()
                }
            }
        });

        window.addEventListener('keydown', function (e) {
            console.log(e.key)
            if (e.key === "ArrowLeft") {
                if (isSelected()) {
                    menuGoLeft()
                }
            }
            if (e.key === "ArrowRight") {
                if (isSelected()) {
                    menuGoRight()
                }
            }
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

    isSelected () {
        return this.state.buttonData.selected
    }

    menuGoRight() {
        if (this.state.buttonData.selected) {
            let nextSelect = this.state.selectedElementId + 1
            if (nextSelect > (this.state.buttonData.list.length-1)) {
                nextSelect = 0
            }
            this.setState({selectedElementId:nextSelect})
        }
    }

    menuGoLeft() {
        if (this.state.buttonData.selected) {
            let nextSelect = this.state.selectedElementId - 1
            if (nextSelect < 0) {
                nextSelect = this.state.buttonData.list.length-1
            }
            this.setState({selectedElementId:nextSelect})
        }
    }

    getSelectedElementText() {
        return this.state.buttonData.list[this.state.selectedElementId]
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

        let selectedText = this.getSelectedElementText()
        button.push(
            <div key={this.state.buttonData.id+"menuButtonRightTextDiv"} className = {className+" rightPartListButton"}>
                <img key={this.state.buttonData.id+"menuButtonRightTextLeftArrow"} alt='leftArrow' src={leftArrowUrl} className={className} />
                <div className="spanContainer">
                    <span key={this.state.buttonData.id+"menuButtonRightText"}>{selectedText}</span>
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