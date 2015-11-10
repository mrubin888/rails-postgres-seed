class CreateApiV1Todoitems < ActiveRecord::Migration
	def change
		create_table :api_v1_todoitems do |t|
			t.timestamps null: false
			t.string :text, null: false
		end
	end
end
