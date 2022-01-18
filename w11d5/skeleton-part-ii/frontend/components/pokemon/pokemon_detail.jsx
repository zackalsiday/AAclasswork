import React from 'react'

class PokemonDetail extends React.Component{
    constructor(props){
        super(props)


    }

    render() {
        return (
            <section className="pokedex">

                <ul>

                    {this.props.pokemon.map(poke => (
                        <PokemonIndexItem key={poke.id} pokemon={poke} />
                    ))}

                </ul>
            </section>
        )
    }
}

}