class Lesson < ApplicationRecord
	def next
    Lesson.where("id > ?", id).limit(1).first
  end
end
