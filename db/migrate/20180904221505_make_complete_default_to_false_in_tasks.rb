class MakeCompleteDefaultToFalseInTasks < ActiveRecord::Migration[5.1]
  def change
    change_table :tasks do |t|
      t.boolean :complete, :default => false
    end
  end
end
