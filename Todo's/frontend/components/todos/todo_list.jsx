import React from 'react'
import TodoListItem from '../todo_list/todo_list_item'
import TodoForm from '../todo_list/todo_form'
 const TodoList =  (props) => {
    return (
        <div>
        <ul>
            {props.todos.map((todo,idx) => {
               return (
                
                     <TodoListItem todo={todo}/> 
                    
         
              
               )
            })}
              <TodoForm receiveTodo={props.receiveTodo}/>
        </ul>
      
        </div>
    )
   
 }

 export default TodoList