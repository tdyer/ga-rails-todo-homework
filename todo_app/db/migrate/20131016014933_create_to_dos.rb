class CreateToDos < ActiveRecord::Migration
  def change
    create_table :to_dos do |t|
      t.string :task_name
      t.boolean :complete, :default => false
      t.text :description
      t.datetime :due_date
    end
  end
end
