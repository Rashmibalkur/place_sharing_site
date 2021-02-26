class AddReferncesToShare < ActiveRecord::Migration[6.1]
  def change
    add_column :shares, :receipient_id, :integer
  end
end
