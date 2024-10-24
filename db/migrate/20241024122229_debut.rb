class Debut < ActiveRecord::Migration[7.2]
  def change
    create_table :dogsitters do |t|
      t.timestamps
      t.string :first_name
      t.string :last_name
    end
    create_table :dogs do |t|
      t.timestamps
      t.string :name
    end
    create_table :strolls  do |t|
      t.timestamps
      t.belongs_to :dogsitter, index: true
      t.belongs_to :dog, index: true
    end
  end
end
