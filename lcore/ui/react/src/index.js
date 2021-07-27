import React from 'react';
import ReactDOM from 'react-dom';

import ClipboardInput from './clipboard/Clipboard.js'
import WIPAlert from './wipAlert/WIPAlert.js'

ReactDOM.render(
  <React.StrictMode>
    <div>
      <ClipboardInput/>
      <WIPAlert/>
    </div>
  </React.StrictMode>,
  document.getElementById('root')
);

