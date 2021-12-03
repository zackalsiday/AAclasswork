require 'date'
require 'action_view'
class Cat < ApplicationRecord
    include ActionView DateHelpers
    validates :name, :birth_date, :color, :description, presense: true
    validates :sex, presense: true, :inclusion=> {:in => ['M', 'F']}
end