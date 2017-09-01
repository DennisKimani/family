class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.column :name, :string
      t.column :married, :boolean
      t.column :social_media, :string
      t.column :date_of_birth, :datetime
      t.column :place_of_birth, :string
      t.column :email, :string
      t.column :location, :string
      t.column :clan_id, :integer

      t.timestamps
    end
  end
end
