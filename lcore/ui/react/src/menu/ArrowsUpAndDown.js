import React from 'react';
import * as arrowImage from './arrows_upanddown.png';

export default class ArrowsUpAndDown extends React.Component {
    render() {
        return (      
            <div className="arrowsUpAndDown">
                <img src={arrowImage.default} alt="arrow_upanddown"/>
            </div>
        )
    }
}