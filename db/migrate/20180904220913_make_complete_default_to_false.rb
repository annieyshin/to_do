class MakeCompleteDefaultToFalse < ActiveRecord::Migration[5.1]
  def change
    change_table :tasks do |t|
      t.remove :complete
    end
  end
end
