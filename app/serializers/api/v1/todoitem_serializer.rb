module Api
	module V1
		class TodoitemSerializer < ActiveModel::Serializer

			attributes :text, :created_at, :id

		end
	end
end