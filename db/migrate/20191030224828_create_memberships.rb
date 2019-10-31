class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :name
      t.string :description
      t.float :price
      t.integer :user_id
    end
  end
end
