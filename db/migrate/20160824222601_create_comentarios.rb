class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :nombre
      t.string :telefono
      t.string :email
      t.string :mensaje

      t.timestamps null: false
    end
  end
end
