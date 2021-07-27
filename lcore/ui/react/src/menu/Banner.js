import React from 'react';

export default class Banner extends React.Component {
    state = {};
    constructor (data) {
        super(data);
        this.state = {
            title: data.data.title,
            backgroundImage: data.data.backgroundImage,
        };
    };

    render() {
        return (      
            <div id="menuBanner" className="unselectable">
                <img src={this.state.backgroundImage} alt='menuBannerImage' className="unselectable"/>

                <span>{this.state.title}</span>
            </div>
        )
    }
}