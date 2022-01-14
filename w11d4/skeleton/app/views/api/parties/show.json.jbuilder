json.extract! @party, :name

json.guests @party.guests.each do |guest|
    json.name guest.name 
    json.gifts guest.gifts, :title
end
#  json.gifts do
#      @party.guests.each do |guest|
#         json.set! guest.gift_ids do
#            json.extract! guest.gift_ids, :title
           
#    end
#    end
    
# end
# debugger 
# json.array! @party.guests.gift_ids, :title


#   expect(json['guests'][0]['gifts'][0]['title']).to eq('Baseball Glove')
#       expect(json['guests'][0]['gifts'].count).to eq(2)