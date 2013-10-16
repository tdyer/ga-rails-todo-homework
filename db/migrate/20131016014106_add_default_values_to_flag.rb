class AddDefaultValuesToFlag < ActiveRecord::Migration
  def change
    change_column :todos, :flag, :boolean, :default => false
  end
end
