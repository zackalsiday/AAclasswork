import React from 'react'
import ReactDOM from 'react-dom'
import Board from './components/Board' 
import Tile from './components/Tile' 
import Game from './components/Game'
const Root = () => {
    return (
        <div>
            <Game/>
        </div>
    )
}
document.addEventListener("DOMContentLoaded", () => {
    const root = document.querySelector("#root");
    ReactDOM.render(<Root/>, root);
})


