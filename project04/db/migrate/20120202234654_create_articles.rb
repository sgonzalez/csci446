class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.text :body
      t.date :creation
      t.integer :edits

      t.timestamps
    end
  end
end
