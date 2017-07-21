class AddDogsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.column :name, :string
      t.column :breed, :string
      t.column :age, :string
    end
  end
end
