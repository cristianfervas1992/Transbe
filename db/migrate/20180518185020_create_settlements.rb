class CreateSettlements < ActiveRecord::Migration[5.1]
  def change
    create_table :settlements do |t|
      t.timestamps
    end
  end
end
