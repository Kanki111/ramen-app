class AddRateToReview < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :rate, :float, default: 0
  end
end
