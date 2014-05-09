class Match < ActiveRecord::Base
  belongs_to :team_id, :class_name => Team 
  belongs_to :team_id, :class_name => Team 
  belongs_to :group_id, :class_name => Group 
  belongs_to :stadium_id, :class_name => Stadium 
  belongs_to :local_team , :class_name => Team
  belongs_to :visit_team , :class_name => Team
  belongs_to :ganador , :class_name => Team
  belongs_to :perdedor , :class_name => Team


# => Inicio de validaciones
  validates :fecha_juego, presence: true
  validates :fase, format: {with: /\A(Grupos|Octavos de final|Cuartos de final|Semifinales|Final)\z/i}, presence: true
  validates :estado, format: {with: /\A(Por jugar|En juego|Finalizado)\z/i}, presence: true
  validates :stadium, presence: true
  validate :perdedor
  validate :ganador
  validate :empate?
#validacion que los equipos no sean los mismos
  	def diferent
  		if team_id == team_id
  			errors.add(:team_id, 'ERROR')
 		 end
  	end
end

