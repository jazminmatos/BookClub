class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :summary
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
