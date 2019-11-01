class RenameCreateMembeshipsToCreateClasses < ActiveRecord::Migration
  def change
    rename_table :memberships, :classes
  end
end
