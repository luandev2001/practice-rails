class CreateJsonbTest < ActiveRecord::Migration[7.0]
  def change
    create_table :jsonb_tests do |t|
      t.string :name, null: false, limit: 100
      t.jsonb :content, default: {}, null: false
      t.timestamps
    end
  end
end
