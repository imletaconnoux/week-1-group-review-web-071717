## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
def find_bulbasaur_url(pokemon)
  bulbasaur = pokemon.find do |pokemon_hash|
    pokemon_hash[:name] == "bulbasaur"
  end
  puts bulbasaur[:abilities][0][:ability][:url]
end

# How would you return the first pokemon with base experience over 40?
def base_experience(pokemon)
  pokemon.find do |pokemon_hash|
    pokemon_hash[:base_experience] > 40
  end
end

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
def all_base_experience(pokemon)
  pokemon.select do |pokemon_hash|
    pokemon_hash[:base_experience] > 40
  end
end

# How would you return an array of all of the pokemon's names?
def all_names(pokemon)
  pokemon.collect do |pokemon_hash|
    pokemon_hash[:name]
  end
end

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
def any_pokemon_over_60?(pokemon)
  pokemon.any? do |pokemon_hash|
    pokemon[:weight] > 60
  end
end
