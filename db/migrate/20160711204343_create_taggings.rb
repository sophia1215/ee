class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :post, index: true, foreign_key: true, null: false
      t.references :tag, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
