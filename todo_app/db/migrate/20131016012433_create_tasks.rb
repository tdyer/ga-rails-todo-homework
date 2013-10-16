class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.boolean :complete?
      t.date :due_date
    end
  end
end
