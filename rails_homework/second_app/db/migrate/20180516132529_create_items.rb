class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.belongs_to :owner

      t.timestamps
    end
  end
end
