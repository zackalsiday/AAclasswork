import { RECEIVE_ALL_POKEMON } from '../actions/pokemon_actions';

const pokemonReducer = (state = {},action) => {
    Object.freeze(state)
    // const nextState = Object.assign({}, action)
    switch (action.type) {
        case RECEIVE_ALL_POKEMON:
            const nextState = Object.assign({}, action.pokemon)
            return nextState
        default:
            return state
    }
}

export default pokemonReducer