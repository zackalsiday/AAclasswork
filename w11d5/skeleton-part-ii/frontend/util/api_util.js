export const fetchAllPokemon = () => {
  return $.ajax({
    method: "GET",
    url: "/api/pokemon"
  })
}

export const fetchSinglePokemon = (pokemonId) => {
  return $.ajax({
    method: "Get",
    url: `/api/pokemon/${pokemonId}`
  })
}