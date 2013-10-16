class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task
      t.boolean :complete
      t.date_select :due_date
    end
  end
end
