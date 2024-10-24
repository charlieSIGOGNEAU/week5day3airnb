class Suite < ActiveRecord::Migration[7.2]
  def change
    create_table :cities do |t|
      t.string :city_name
    end
    add_reference :dogs, :city, foreign_key: true
    add_reference :dogsitters, :city, foreign_key: true
  end
end
