import React from 'react';
import ReactDOM from 'react-dom';
import Main from '../main.jsx'
document.addEventListener('DOMContentLoaded', () => {
    const root = document.getElementById('root');

    // const hello = React.createElement('h1', null, ['Hello from React']);
    // const hello = <h1>Hello from React</h1>
    
    ReactDOM.render(<main name='Birdperson' />, root);
})