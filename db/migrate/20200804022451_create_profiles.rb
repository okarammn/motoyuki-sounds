class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :text
      t.string :mini_text

      t.timestamps
    end
  end
end
