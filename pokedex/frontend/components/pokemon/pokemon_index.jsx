import React from 'react'

class PokemonIndex extends React.Component{
    constructor(props){
        super(props)

    }

    componentDidMount(){
        this.props.requestAllPokemon()
    }

    render(){
        return (
        <div>
            {/* <div>{console.log(this.props.pokemon)}</div> */}
            <ul>
        
                {this.props.pokemon.map(aPokemon => {
                    return (<li key={aPokemon.name}>{aPokemon.name}
                        
                                <img id='pokemon-img' src={aPokemon.imageUrl}></img>
                            </li>)
                       
                })}    
                
            </ul>
            
         </div>
        )
    }
}

export default PokemonIndex