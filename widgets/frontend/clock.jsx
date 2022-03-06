import React from 'react' 


class Clock extends React.Component {
    constructor(props){
        super(props)
        this.state = {date: new Date()}
        this.tick = this.tick.bind(this)
    }

    tick(){
      this.setState({date: new Date()})
       
    }



    componentDidMount(){
        this.intervalId = setInterval(this.tick, 1000)
    }
    
    render (){
        const weekday = ["Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat"];
        const month = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
        return (
            <div className='clock'>Clock
                <div className="clock-box">
                    <div className='time'>
                        <div className='time-title'>Time:</div>
                        <div className='actual-time'>{this.state.date.getHours()}:{this.state.date.getMinutes()}:{this.state.date.getSeconds()}</div>
                    </div>
                    <div className="date">
                        <div className="date-title">Date:</div>
                        <div className="actual-date">{weekday[this.state.date.getDay()]} {month[this.state.date.getMonth()]}  {this.state.date.getDate()} {this.state.date.getFullYear()}</div>
                    </div>
                </div>
            </div>
        )
    }
}

export default Clock