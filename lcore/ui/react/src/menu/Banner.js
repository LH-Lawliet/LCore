import React from 'react';

let defaultBanner = {
    "title":"Title",
    "backgroundImage":"https://github.com/LH-Lawliet/LMenu/blob/main/static/interaction_bgd.png?raw=true"
}


export default class Banner extends React.Component {
    state = {};
    constructor (data) {
        super(data);
        this.state = {
            title: data.data.title || defaultBanner.title,
            backgroundImage: data.data.backgroundImage || defaultBanner.backgroundImage,
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