class Agremiacion < ActiveRecord::Migration[5.2]
  def change
    create_table :agremiacion do |t|
      t.integer :id
      t.text :nombre
      t.text :telefono
      t.text :email
    end
  end
end
