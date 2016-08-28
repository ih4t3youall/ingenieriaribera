class CreateBolsaTrabajos < ActiveRecord::Migration
  def change
    create_table :bolsa_trabajos do |t|
      t.string :empleador
      t.string :urlImg
      t.string :descripcionAbreviada
      t.string :descripcionCompleta
      t.string :ubicacion
      t.string :latitud
      t.string :longitud
      t.string :requisitos
      t.string :requisitosExcluyentes
      t.string :sueldo
      t.string :horario

      t.timestamps null: false
    end
  end
end
