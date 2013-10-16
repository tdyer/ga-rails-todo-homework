class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task
      t.text :description
      t.date :due_date
      t.boolean :complete
    end
  end
end
