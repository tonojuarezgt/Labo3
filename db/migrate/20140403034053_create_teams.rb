class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :nombre_equipo
      t.string :nombre_e
      t.string :flag
      t.string :uniforme
      t.string :texto

      t.timestamps
    end
  end
end
