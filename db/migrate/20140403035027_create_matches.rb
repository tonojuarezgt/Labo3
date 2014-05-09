class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :fecha_juego
      t.integer :fase
      t.boolean :estado
      t.integer :id_team
      t.integer :id_team
      t.integer :marcador
      t.string :ganador
      t.string :perdedor
      t.boolean :empate?
      t.integer :id_group
      t.integer :id_stadium

      t.timestamps
    end
  end
end
