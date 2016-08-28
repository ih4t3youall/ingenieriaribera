class CreateIngenieros < ActiveRecord::Migration
  def change
    create_table :ingenieros do |t|
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.string :telefono
      t.string :mail
      t.string :especialidad
      t.string :postgrados
      t.string :linkedin
      t.string :facebook
      t.string :googlemas
      t.string :urlImg

      t.timestamps null: false
    end
  end
end
