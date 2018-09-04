class List < ActiveRecord::Base
  has_many :tasks
  validates :name, :presence => true
  before_destroy :destroy_list_tasks

  def destroy_list_tasks
    self.tasks.destroy_all
  end

  def show_completed_tasks
    completed_tasks = []
    self.tasks.each() do |task|
      if task.complete == true
        completed_tasks.push(task)
      end
    end
    return completed_tasks
    end
  end
