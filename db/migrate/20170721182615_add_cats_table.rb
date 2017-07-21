class AddCatsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.column :name, :string
      t.column :breed, :string
      t.column :age, :string
    end
  end
end
