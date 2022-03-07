import React from 'react'
import * as Minesweeper from './minesweeper' 

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
                            <div>{new Tile(board,board.grid[row_idx][tile_idx])}</div>
                            )}
                        </div>

                    )}

            </div>
        )
    }
}

export default Board