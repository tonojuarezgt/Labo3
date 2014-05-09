class Team < ActiveRecord::Base
	validates :nombre_equipo, format: {with: /\A[A-Za-z]+\z/} ,uniqueness: true, presence: true
	validates :name_e, uniqueness: true, presence: true
 	validates :flag, format: {with: /http(s)?:\/\/[A-Za-z0-9+&@#%?=~_|\.|\-|\/]+/i}, presence: true
 	validates :uniforme, format: {with: /http(s)?:\/\/[A-Za-z0-9+&@#%?=~_|\.|\-|\/]+/i}, presence: true
 	validates :texto, length: { minimum: 15, maximum: 200 }, presence: true
end
