class Plante < ApplicationRecord
	has_many :remedes
	has_many :poisons
end
