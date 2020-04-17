class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.text :comment
      t.references :commentable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
