class RemovePublisherNameFromTests < ActiveRecord::Migration[5.0]
  def change
    remove_column :tests, :publisher_name, :string
  end
end
