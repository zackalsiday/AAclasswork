 let initialstate = {
     1: {
         id: 1,
         name: "zack"
     }, 
     2: {
         id:2,
         name: "arthur"
     }
 }
 const allTodos = (state = initialstate) => {
    const todoArray = Object.values(state);
    return todoArray
}

export default allTodos