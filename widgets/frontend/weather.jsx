import React from 'react'

class Weather extends React.Component {
    constructor(props) {
        super(props)
       
     
    }

  
    componentDidMount() {
       navigator.geolocation.getCurrentPosition(this.getWeather)
    }
    
    getWeather(here){
        console.log(here)
        const lat = here.coords.latitude;
        const lon = here.coords.longitude;
        const apiRequest = new XMLHttpRequest();
        apiRequest.open("GET", `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=487b57eb81f63c279aa714573aad9aec`, true);
        apiRequest.send();
        apiRequest.onload = function() {
            const data = JSON.parse(apiRequest.responseText); 
           console.log(data)
        }
    }




    render() {
       
       return (
           <div></div>

       )
           
       
    }
}

export default Weather

// api.openweathermap.org / data / 2.5 / weather ? lat = { lat } & lon={ lon }& appid={API key }