class AddCompleteBooleanToTasks < ActiveRecord::Migration[5.1]
  def change
    change_table :tasks do |t|
      t.boolean :complete
    end
  end
end
