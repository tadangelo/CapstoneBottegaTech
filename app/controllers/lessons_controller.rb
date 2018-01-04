class LessonsController < ApplicationController
	before_action :set_lesson, only: [:show, :edit, :update, :destroy]
	access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all

	def index
		@lessons = Lesson.all
	end

	def show
		@lessons = Lesson.find(params[:id])
	end

	def new
		@lesson = Lesson.new
	end

	def edit
	end

	def create
		@lesson = Lesson.new(lesson_params)

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to @lesson, notice: 'Your lesson was created'}
      else
        format.html {
          render :new
        }
      end
    end
	end

	def update
		respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @lesson, notice: 'Your lesson was updated.' }
      else
        format.html { render :edit }
      end
    end
	end

	def destroy
		@lesson.destroy
    	respond_to do |format|
      format.html { redirect_to lessons_path, notice: 'Your lesson was deleted.' }
    end
	end


	private
		def set_lesson
			@lesson = Lesson.find(params[:id])
		end

		def lesson_params
			params.require(:lesson).permit(:title, :body)
		end
end
