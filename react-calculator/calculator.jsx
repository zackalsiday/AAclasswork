import React from "react";

class Calculator extends React.Component {
    constructor(props) {
        super(props);
        this.state = {result: 0, num1: '', num2: ''};
        this.setNum1 = this.setNum1.bind(this);
        this.setNum2 = this.setNum2.bind(this);
        this.add = this.add.bind(this);
        this.subtract = this.subtract.bind(this);
        this.divide = this.divide.bind(this);
        this.multiply = this.multiply.bind(this);
        this.clear = this.clear.bind(this);
    }

    setNum1(e){
        e.preventDefault()
        if (e.target.value){
           this.setState({num1: parseInt(e.target.value)})
        }else{
              this.setState({ num1: "" })
        }
       
    }
    setNum2(e) {
        e.preventDefault()
        if (e.target.value) {
            this.setState({ num2: parseInt(e.target.value) })
        } else {
            this.setState({ num2: "" })
        }
    }
    add(e){
        e.preventDefault()
        this.setState({result: this.state.num1 + this.state.num2})
    }

    subtract(e) {
        e.preventDefault()
        this.setState({ result: this.state.num1 - this.state.num2 })
    }

    divide(e) {
        e.preventDefault()
        this.setState({ result: this.state.num1 / this.state.num2 })
    }

    multiply(e) {
        e.preventDefault()
        this.setState({ result: this.state.num1 * this.state.num2 })
    }

    clear(e){
        e.preventDefault()
        this.setState({ result: 0, num1: '', num2: ''})
    }

    render() {
        const {num1, num2, result} = this.state
        return (
            <div>
                <input onChange={this.setNum1} value={num1}></input>
                <input onChange={this.setNum2} value={num2}></input>
                <button onClick={this.add}>+</button>
                <button onClick={this.subtract}>-</button>
                <button onClick={this.divide}>/</button>
                <button onClick={this.multiply}>*</button>
                <button onClick={this.clear}>clear</button>

                <h1>{result}</h1>
            </div>
        );
    }
}

export default Calculator;