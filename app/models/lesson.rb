class Lesson < ApplicationRecord

	validates_presence_of :title, :body

	def next
    Lesson.where("id > ?", id).limit(1).first
  end
end
