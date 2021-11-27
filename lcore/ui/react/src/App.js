import React from 'react';
import ClipboardInput from './clipboard/Clipboard.js'
import WIPAlert from './wipAlert/WIPAlert.js'
import Menu from './menu/Menu.js'
import Inventory from './inventory/Inventory.js';

export default class App extends React.Component {
    render() {
        return (
        <div>
            <ClipboardInput/>
            <WIPAlert/>
            <Menu/>
            <Inventory/>
        </div>
        )
    }
}