class AddDetailsToTests < ActiveRecord::Migration[5.0]
  def change
    add_column :tests, :publisher_name, :string
    add_column :tests, :published_year, :date
    add_column :tests, :price, :decimal
  end
end
