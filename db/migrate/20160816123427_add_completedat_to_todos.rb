class AddCompletedatToTodos < ActiveRecord::Migration[5.0]
  def change
    add_column :todos, :completed_at, :timestamp
  end
end
