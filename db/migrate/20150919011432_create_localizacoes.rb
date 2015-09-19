class CreateLocalizacoes < ActiveRecord::Migration
  def change
    create_table :localizacoes do |t|
      t.string :nome
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
