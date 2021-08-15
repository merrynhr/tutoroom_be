module Api
  module V1
    class TutorsController < ApplicationController
      protect_from_forgery with: :null_session
      def index
        tutors = Tutor.joins(:user).where(users: { teacher: true })
        # tutors = Tutor.all
        render json: TutorSerializer.new(tutors).serialized_json
      end

      def show 
        tutor = Tutor.find_by(id: params[:id])
        render json: TutorSerializer.new(tutor).serialized_json
      end

      def create
        tutor = Tutor.new(tutor_params)

        if tutor.save
          render json: TutorSerializer.new(tutor).serialized_json
        else    
          render json: { error: tutor.errors.messages }, status: 422
        end
      end

      def update
        tutor = Tutor.find_by(id: params[:id])

        if tutor.update(tutor_params)
          render json: TutorSerializer.new(tutor).serialized_json
        else    
          render json: { error: tutor.errors.messages }, status: 422
        end
      end

      def destroy
        tutor = Tutor.find_by(id: params[:id])

        if tutor.destroy
          head :no_content
        else    
          render json: { error: tutor.errors.messages }, status: 422
        end
      end

      private 

      def tutor_params
        params.require(:tutor).permit(:name, :image_url, :bio, :subject, :email, :user_id) 
      end

    end
  end
end
