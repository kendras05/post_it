class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.boolean :hidden
      t.datetime :posted_at
      t.text :body

      t.timestamps
    end
  end
end
