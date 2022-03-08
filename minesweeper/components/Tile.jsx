import React from 'react'
import * as Minesweeper from './minesweeper' 

export default class Tile extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(t){
    const flag = t.altKey ? true : false;
    this.props.updateGame(this.props.tile, flag);
  }

  render(){
    const tile = this.props.tile;
    let code;
    let klass;
    if (tile.explored) {
      if (this.bombed) {
         code = '&#128163'
        klass = "bomb"
      }else{
         code = `${tile.adjacentBombCount()}`
         klass = 'explored'
      }
    }else if (tile.flagged) {
       code = '&#128681'
       klass = 'flag'
    }
    return (
      <div className={klass} onClick={this.handleClick}>{code}</div>
    )
  }
}