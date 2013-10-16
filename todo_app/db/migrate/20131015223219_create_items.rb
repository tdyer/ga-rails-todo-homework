class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.boolean :important
      t.boolean :urgent
      t.date :due_date
      t.string :category
    end
  end
end
