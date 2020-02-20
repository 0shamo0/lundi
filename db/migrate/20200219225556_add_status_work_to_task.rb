class AddStatusWorkToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :status_work_id, :integer
  end
end
