class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.boolean :complete
      t.string :due
    end
  end
end
