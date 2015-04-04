module Api
  class SubmissionsController < Api::BaseController
    def index
      render json: Submission.all, each_serializer: SubmissionEachSerializer
    end

    def show
      render json: Submission.find(params[:id]), serializer: SubmissionSingleSerializer
    end
  end
end