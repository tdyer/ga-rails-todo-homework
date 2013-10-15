class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
      t.boolean :complete
      t.string :date_due
      t.timestamps
    end
  end
end
