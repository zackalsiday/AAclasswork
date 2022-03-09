import { RECEIVE_STEPS, RECEIVE_STEP, REMOVE_STEP } from "../actions/step_actions";

const initialState = {
    1: {
        id: 1,
        todo_id: 1,
        title: 'get soap',
        done: true
    },
    2:{
        id: 2,
        todo_id:1,
        title:'rinse the car',
        done: false
    },
    3:{
        id: 3,
        todo_id:2,
        title:'buy dog shampoo',
        done: true
    },
    4:{
        id: 4,
        todo_id: 2,
        title:'rinse the dog',
        done: false 
    }
}

const stepsReducer = (state = initialState, action) => {
    Object.freeze(state);
    const nextState = Object.assign({},state);
    switch (action.type){
        case RECEIVE_STEPS: 
            return action.steps 
        case RECEIVE_STEP: 
            nextState[action.step.id] = action.step
            return nextState
        case REMOVE_STEP: 
            delete(nextState[action.step.id])
            return nextState
        default:
            return state;
    }
}

export default stepsReducer