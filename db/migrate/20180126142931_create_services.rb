class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.text :content
      t.string :slug

      t.timestamps
    end
  end
end
