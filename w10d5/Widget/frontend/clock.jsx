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
       return <div>
           <h1>Clock</h1>
           <h3>Time:{currentTime}</h3>
           <h3> Date: {today }</h3>
            </div>
             
        
        
    }

 

}


export default Clock;