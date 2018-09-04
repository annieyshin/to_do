class List < ActiveRecord::Base
  has_many :tasks
  validates :name, :presence => true
  before_destroy :destroy_list_tasks

  def destroy_list_tasks
    self.tasks.destroy_all
  end
end
