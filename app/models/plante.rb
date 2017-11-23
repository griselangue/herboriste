class Plante < ApplicationRecord
	validates_uniqueness_of :nomScientifique
	validates_presence_of :nomCommun, :nomScientifique
	has_many :remedes
	has_many :poisons
end
