class ExercisesController < ApplicationController
	before_action :set_exercise, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!
	access all: [:show, :index], user: :all, admin: :all


	def index
		@exercises = Exercise.where(user_id: current_user.id).page(params[:page]).per(5)
	end

	def show
		@exercise = Exercise.find(params[:id])
	end

	def new
		@exercise = Exercise.new
	end

	def edit
	end

	def create
		@exercise = current_user.exercises.create!(exercise_params)

    	respond_to do |format|
      if @exercise.save
        format.html { redirect_to @exercise, notice: 'Your file was created'}
      else
        format.html {
          render :new
        }
      end
    end
	end

	def update
		respond_to do |format|
      if @exercise.update(exercise_params)
        format.html { redirect_to @exercise, notice: 'Your file was updated.' }
      else
        format.html { render :edit }
      end
    end
	end

	def destroy
		@exercise.destroy
    	respond_to do |format|
      format.html { redirect_to exercises_path, notice: 'Your file was deleted.' }
    end
	end


	private
		def set_exercise
			@exercise = Exercise.find(params[:id])
		end

		def exercise_params
			params.require(:exercise).permit(:assignment, :code, :notes, :date, :user_id)
		end

end