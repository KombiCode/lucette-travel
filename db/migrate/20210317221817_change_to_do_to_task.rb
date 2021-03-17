class ChangeToDoToTask < ActiveRecord::Migration[6.0]
  def change
    rename_table :to_dos, :tasks
  end
end
