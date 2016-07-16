class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.string :carne
      t.string :curso
      t.string :carrera
      t.string :string

      t.timestamps null: false
    end
  end
end
