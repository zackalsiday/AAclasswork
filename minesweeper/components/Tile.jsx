import React from 'react'
import * as Minesweeper from './minesweeper' 

export default class Tile extends React.Component {
  constructor(props) {
    super(props);
    // this.handleClick = this.handleClick.bind(this);
  }

  // handleClick(tile) {

  //   if (tile.explored) {
  //     tile = tile.adjacentBombCount();
  //   }
  // }


  render(){
    const tile = this.props.tile;
    if (tile.explored) {
      if (tile.flagged) {
        let code='&#128681'
      } else if (tile.bomb) {
        let code='&#128163'
      } 
    }
  }

}