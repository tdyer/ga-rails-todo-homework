class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :complete
      t.string :due_date
      t.timestamps
    end
  end
end
