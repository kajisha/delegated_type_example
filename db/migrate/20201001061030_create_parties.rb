class CreateParties < ActiveRecord::Migration[6.1]
  def change
    create_table :parties do |t|
      t.references :partyable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
