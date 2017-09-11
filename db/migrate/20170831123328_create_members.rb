class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.column :name, :string
      t.column :mother, :string
      t.column :father, :string
      t.column :sibling, :string
      t.column :social_media, :string
      t.column :date_of_birth, :datetime
      t.column :place_of_birth, :string
      t.column :job, :string
      t.column :context, :string
      t.column :telephone, :integer
      t.column :email, :string
      t.column :location, :string
      t.column :clan_id, :integer

      t.timestamps
    end
  end
end
