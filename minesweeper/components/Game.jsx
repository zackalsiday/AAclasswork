import React from 'react'
import * as Minesweeper from './minesweeper' 
import Board from './Board'
class Game extends React.Component{
    constructor(props){
        super(props)
        this.state =  {board: new Minesweeper.Board(10,5)}
        this.updateGame = this.updateGame.bind(this)
    }

    updateGame(){

    }

    render(){
        return (
            <div>
               <Board board={this.state.board} update={this.updateGame}/>
            </div>
        )
    }
}

export default Game 