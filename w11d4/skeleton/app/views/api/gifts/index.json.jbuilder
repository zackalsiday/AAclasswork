json.@gifts do
    @guest.@gifts.each do |gift|
        json.set! gift.id do
            json.extract! gift, :title, :description, :guest_id
           
        end
    end
end

