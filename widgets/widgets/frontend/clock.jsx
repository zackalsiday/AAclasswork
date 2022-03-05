import React from "react";


class Clock extends React.Component {
    constructor(props){
        super(props);
        this.state = {time: new Date()};
        this.seconds = this.seconds.bind(this);
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

    seconds(sec){
        if (sec <= 9){
            return '0' + sec 
        }else{
            return sec
        }
    }


    render() {
        const weekday = ["Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat"];
        const month = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
        return (
            <div className="clock">
                <h1 className="title">Clock</h1>
                <div className="time">
                    <div id="title-time">Time:</div>
                    <div id="actual-time"> {this.seconds(this.state.time.getHours())}:{this.seconds(this.state.time.getMinutes())}:{this.seconds(this.state.time.getSeconds())}</div>
                </div>
                <div className="date">
                    <div id="title-date">Date:</div>
                    <div id="actual-date"> {weekday[this.state.time.getDay()]} {month[this.state.time.getMonth()]} {this.seconds(this.state.time.getDate())} {this.state.time.getFullYear()}</div>
                </div>
            </div>
        )
    }
}

export default Clock