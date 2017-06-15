class AddPublisherNameToTests < ActiveRecord::Migration[5.0]
  def change
    add_column :tests, :publisher_name, :string
  end
end
