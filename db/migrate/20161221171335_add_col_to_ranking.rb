class AddColToRanking < ActiveRecord::Migration[5.0]
  def change
    add_column :rankings , :domain_id ,:integer
  end
end
