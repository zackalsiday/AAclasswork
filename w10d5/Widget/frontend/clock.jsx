import React from "react";

class Clock extends React.Component{
    constructor(props){
        super(props)
        this.state = { date: new Date()}; 
        this.tick = this.tick.bind(this);
        this.time = setInterval(this.tick, 1000)
    }

    tick() {
        
        this.setState({date: new Date()})
    }

    componentDidMount(){
       
        setInterval(this.tick, 1000)
   
    }

    compnentWillUnMount(){
        clearInterval(this.time)
    }

    

    render(){
        const day = ['Sun','Mon','Tue','Wed','Thur','Fri','Sat']
        const month = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
        const today = day[this.state.date.getDay()] + ' ,' + month[this.state.date.getMonth()] + ' ,' + this.state.date.getDate()
        const currentTime = this.state.date.getHours() + ":" + this.state.date.getMinutes() + ":" + this.state.date.getSeconds()
        return  <div className = 'wholeclock'>       
                    <h1>Clock</h1>
                    <div className='clock'>
                        <h3 id="label">Time:
                            <span id="value">{currentTime}</span>
                        </h3>
                        <h3 id="label"> Date:
                            <span id="value"> {today}</span>
                        </h3>
                    </div>
                </div>
             
        
        
    }

 

}


export default Clock;