import { RECEIVE_ALL_POKEMON, RECEIVE_SINGLE_POKEMON } from './../actions/pokemon_actions';


const movesReducer = (state = {}, action) => {
    Object.freeze(state);
    const nextState = object.assign({}, state)
    switch (action.type) {
        case RECEIVE_ALL_MOVES:
            return Object.assign({}, action.pokemon, state);
        case RECEIVE_SINGLE_MOVE:
            nextState[action.pokemon.id] = action.pokemon
            return nextState
        default:
            return state;
    }
}

export default movesReducer;