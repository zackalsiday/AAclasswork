require 'date'
require 'action_view'
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper
    validates :name, :birth_date, :description, presense: true
    validates :sex, presense: true, :inclusion=> {:in => ['M', 'F']}
# validates :sex, inclusion: %w(M F)
    validates :color, presense: true , inclusion: {:in => ['Brown', 'White', 'Black', 'Orange', 'Grey'] 

    def age
       (Time.zone.now - birth_date.to_time / 1.year.seconds).floor
    end
end
