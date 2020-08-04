class DropProfileWorkContent < ActiveRecord::Migration[5.2]
  def change
    drop_table :profiles
    drop_table :works
    drop_table :contacts
  end
end
