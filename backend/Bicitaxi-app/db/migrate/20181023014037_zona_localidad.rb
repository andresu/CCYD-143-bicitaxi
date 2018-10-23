class ZonaLocalidad < ActiveRecord::Migration[5.2]
  def change
    create_table :zona_localidad do |t|
      t.integer :id
      t.text :zona
      t.text :localidad

      t.timestamps
    end
  end
end
