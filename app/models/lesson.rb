class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true

  def next
    @next = self.lesson_number + 1
    @next_lesson2 = Lesson.find_by! lesson_number: @next
    #binding.pry
    # sorted = Lesson.order(lesson_number: :asc)
    # sorted.detect { |i| i.lesson_number > self.lesson_number}
  end
end
