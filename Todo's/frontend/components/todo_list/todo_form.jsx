import React from 'react'

class TodoForm extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            id: Math.floor(Math.random() * 1000000),
            title: '',
            body: ''
        }
        this.handleSubmit = this.handleSubmit.bind(this);
        this.updateTitle = this.updateTitle.bind(this);
        this.updateBody = this.updateBody.bind(this)

    }



    updateTitle(e){
        this.setState({title: e.target.value})
    }

    updateBody(e){
        this.setState({body: e.target.value})
    }
    handleSubmit(e){
        e.preventDefault();
        this.props.receiveTodo(this.state);
        this.setState = ({
            id: Math.floor(Math.random() * 1000000),
            title: '',
            body: ''
        });
    }
    render (){
       return ( <form onSubmit={this.handleSubmit}>
            <h3>Add a Todo</h3>
            <label>Title:
                <input type="text"
                        value={this.state.title}
                        onChange={this.updateTitle} 
                        />
            </label>
            <label>body:
                <input type="text" 
                        value={this.state.body}
                        onChange={this.updateBody}
                        />
            </label>
            <input type="submit"  value='add todo'/>
        </form>)
    }
}

export default TodoForm