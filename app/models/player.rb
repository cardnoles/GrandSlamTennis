class Player < ActiveRecord::Base

   validates :first_name, :last_name, :country, :gender, presence: true

end
