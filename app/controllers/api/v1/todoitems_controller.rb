module Api
	module V1
		class TodoitemsController < ApplicationController
			skip_before_action :authenticate_user_from_token!, only: [:index, :show]
			before_action :set_api_v1_todoitem, only: [:show, :update, :destroy]

			# GET /api/v1/todoitems
			# GET /api/v1/todoitems.json
			def index
				@api_v1_todoitems = Todoitem.all

				render json: @api_v1_todoitems
			end

			# GET /api/v1/todoitems/1
			# GET /api/v1/todoitems/1.json
			def show
				render json: @api_v1_todoitem
			end

			# POST /api/v1/todoitems
			# POST /api/v1/todoitems.json
			def create
				@api_v1_todoitem = Todoitem.new(api_v1_todoitem_params)

				if @api_v1_todoitem.save
					render json: @api_v1_todoitem, status: :created, location: @api_v1_todoitem
				else
					render json: @api_v1_todoitem.errors, status: :unprocessable_entity
				end
			end

			# PATCH/PUT /api/v1/todoitems/1
			# PATCH/PUT /api/v1/todoitems/1.json
			def update
				@api_v1_todoitem = Todoitem.find(params[:id])

				if @api_v1_todoitem.update(api_v1_todoitem_params)
					head :no_content
				else
					render json: @api_v1_todoitem.errors, status: :unprocessable_entity
				end
			end

			# DELETE /api/v1/todoitems/1
			# DELETE /api/v1/todoitems/1.json
			def destroy
				@api_v1_todoitem.destroy

				head :no_content
			end

			private

			def set_api_v1_todoitem
				@api_v1_todoitem = Todoitem.find(params[:id])
			end

			def api_v1_todoitem_params
				params[:api_v1_todoitem]
			end
		end
	end
end