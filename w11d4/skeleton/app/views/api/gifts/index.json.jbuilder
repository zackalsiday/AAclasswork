# json.gifts do
    # @gifts.each do |gift|
    #     json.set! gift.id do
    #         json.extract! gift, :title, :description
           
    #     end
    # end
    json.array! @gifts, :title, :description
# end

