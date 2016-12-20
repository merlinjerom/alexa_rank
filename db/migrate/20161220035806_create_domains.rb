class CreateDomains < ActiveRecord::Migration[5.0]
  def change
    create_table :domains do |t|
      t.string :name
      t.integer :over_all_ranking
      t.date :last_update

      t.timestamps
    end
  end
end
