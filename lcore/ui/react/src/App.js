import React from 'react';
import ClipboardInput from './clipboard/Clipboard.js'
import WIPAlert from './wipAlert/WIPAlert.js'

export default class App extends React.Component {
    render() {
        return (
        <div>
            <ClipboardInput/>
            <WIPAlert/>
        </div>
        )
    }
}