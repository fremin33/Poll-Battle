class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.string :label
      t.string :picture
      t.references :poll, foreign_key: true

      t.timestamps
    end
  end
end
