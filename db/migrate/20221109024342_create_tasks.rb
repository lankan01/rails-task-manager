class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :details, null: false
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end
