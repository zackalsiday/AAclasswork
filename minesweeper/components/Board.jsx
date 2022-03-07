import React from 'react'
import * as Minesweeper from './minesweeper' 
import Tile from './Tile'

class Board extends React.Component{
    constructor(props){
    super(props)
        
    }


  
    render(){
       
      const board = this.props.board
        return (
            <div>
               
                {board.grid.map((row,row_idx) =>
                        <div key={`${row_idx} ${row}`}>
                            {row.map((tile, tile_idx) => 
                                <Tile
                                    tile={tile}
                                    updateGame={this.props.updateGame}
                                    key={`tile-${tile_idx}`}/>
                            )}
                        </div>
                    )}
            </div>
        )
    }
}

export default Board