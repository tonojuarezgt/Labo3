class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :fecha_juego
      t.integer :fase
      t.boolean :estado
      t.references :team_id, index: true
      t.references :team_id, index: true
      t.integer :marcador
      t.string :ganador
      t.string :perdedor
      t.boolean :empate?
      t.references :group_id, index: true
      t.references :stadium_id, index: true

      t.timestamps
    end
  end
end
