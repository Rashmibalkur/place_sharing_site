class CreateShares < ActiveRecord::Migration[6.1]
  def change
    create_table :shares do |t|
      t.belongs_to :user
      t.belongs_to :place
      t.string :name

      t.timestamps
    end
  end
end
