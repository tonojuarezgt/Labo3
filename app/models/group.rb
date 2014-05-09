class Group < ActiveRecord::Base
		validates :nombre_grupo, format: {with: /\A[A-Za-z]+\z/}, length: { maximum: 1 }, uniqueness: true, presence: true
end
