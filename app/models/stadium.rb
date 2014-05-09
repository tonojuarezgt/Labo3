class Stadium < ActiveRecord::Base
	validates :nombre,format: {with: /\A[A-Za-z]+\z/}, presence: true, uniqueness: true
	validates :ciudad,format: {with: /\A(|Fortaleza|Manaus|Natal|Recife|Rio de Janeiro|Belo Horizonte|Brasilia|Cuiaba|Curitiba|Salvador|Sao Paulo)\z/i}, presence: true, uniqueness: true
	validates :fecha_construccion, presence: true
	validates :capacidad, numericality: {only_integer: true} , presence: true
	validates :foto, format: {with: /http(s)?:\/\/[A-Za-z0-9+&@#%?=~_|\.|\-|\/]+/i}, presence: true
end
