import React from "react";


class Clock extends React.Component {
    constructor(props){
        super(props)
        this.state = {time: new Date()}
    }
    render() {
        return (
            
            <div>{console.log(this.state.time)}</div>
        )
    }
}

export default Clock