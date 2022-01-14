
  json.array! @parties  do |party|
    # json.name guest.name
    # json.age guest.age
    # json.favorite_color guest.favorite_color
    
   json.extract! party, :name, :location 
end


 
  