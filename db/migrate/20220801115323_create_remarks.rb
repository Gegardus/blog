class CreateRemarks < ActiveRecord::Migration[7.0]
  def change
    create_table :remarks do |t|
      t.string :remarker
      t.text :comment
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
