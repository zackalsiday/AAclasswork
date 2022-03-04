import React from "react";


class Clock extends React.Component {
    constructor(props){
        super(props);
        this.state = {time: new Date()};

        this.tick = this.tick.bind(this);
    }

    tick() {
        this.setState({ time: new Date() }); 
    }

    componentDidMount() {
        setInterval(this.tick, 1000);
    }

    componentWillUnmount() {
        clearInterval(this.tick)
    }


    render() {
        return (
            <div>
            <h1>Clock</h1>
            <div>{this.state.time.getHours()%12}:{this.state.time.getMinutes()}:{this.state.time.getSeconds()}</div>
            </div>
        )
    }
}

export default Clock