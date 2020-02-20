class CreateStatusWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :status_works do |t|
      t.string :etape

      t.timestamps
    end
  end
end
