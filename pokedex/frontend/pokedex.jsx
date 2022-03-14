import React from "react";
import ReactDOM from "react-dom";
import {receiveAllPokemon} from './actions/pokemon_actions'
import {fetchAllPokemon} from './util/api_util'
import {configureStore} from './store/store.js'
document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  const store = configureStore()
  window.store = store 
  window.getState = store.getState;
  window.dispatch = store.dispatch;
window.receiveAllPokemon = receiveAllPokemon
window.fetchAllPokemon = fetchAllPokemon


  ReactDOM.render(<h1>Pokedex</h1>, root);
});