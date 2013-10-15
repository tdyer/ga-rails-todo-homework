class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :task
      t.datetime :due_date
      t.datetime :created_at
      t.string :owner
      t.boolean :complete
      t.text :notes
      t.string :catagory
      t.integer :days_to_complete
    end
  end
end
