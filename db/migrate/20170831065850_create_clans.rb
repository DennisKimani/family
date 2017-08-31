class CreateClans < ActiveRecord::Migration[5.1]
  def change
    create_table :clans do |t|
      t.column :name, :string
      t.column :quote, :string
    end
  end
end
