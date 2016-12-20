class AddColomnTable < ActiveRecord::Migration[5.0]
  def change
    add_column :domains , :user_id ,:integer
  end
end
