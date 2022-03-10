import {connect} from 'react-redux' 
import TodoList from './todo_list'


const mapStateToProps = (state) => {
    // debugger
    // console.log(Object.values(state.todos))
  
    return {
        todos: Object.values(state.todos)
    }
}

const mapDispatchToProps = (dispatch) => {
    return {
        receiveTodo: (todo) => dispatch(receiveTodo(todo)),
        removeTodo: (todo) => dispatch(removeTodo(todo))
    }
}

export default connect(mapStateToProps,mapDispatchToProps)(TodoList)