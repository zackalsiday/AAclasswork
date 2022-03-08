import React from 'react';
import ReactDOM from 'react-dom';
import selectLocation from './actions';
import Widget from './components/widget';
import store from './store';
import reducer from './reducer'

document.addEventListener("DOMContentLoaded", function(){
  window.selectLocation = selectLocation
 
 
  window.reducer = reducer
  ReactDOM.render(<Widget store={store} />, document.getElementById('root'));
});
