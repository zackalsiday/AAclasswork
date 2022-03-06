import React from 'react';
import ReactDOM from 'react-dom';
import Clock from './frontend/clock';
import Tabs from './frontend/tab';
import Weather from './frontend/weather';

const Root = () => {
  const listTab = [{ title: 'one', content: 'zack' }, { title: 'two', content: 'mark' }, { title: 'three', content: 'sam' }]
  return(
    <div>
     <Clock/>
     <br/>
     <Tabs listTab={listTab}/>
     <br/> 
     <Weather/>
    </div>
  )

}

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  ReactDOM.render(<Root/>, root);
});
