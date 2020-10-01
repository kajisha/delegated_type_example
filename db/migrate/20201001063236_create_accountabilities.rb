class CreateAccountabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :accountabilities do |t|
      t.integer :accountability_type, null: false
      t.datetime :started_at, null: false
      t.datetime :ended_at, null: false, default: '9999-12-31 23:59:59.999Z'
      t.references :commissioner, null: false, foreign_key: {to_table: :parties}
      t.references :responsible, null: false, foreign_key: {to_table: :parties}

      t.timestamps
    end
  end
end
