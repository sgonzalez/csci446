class NormalizeAuthors < ActiveRecord::Migration
  def up
    add_column :articles, :author_id, :integer
    
    Article.all.each do |a|
      author = Author.find_or_create_by_name(a.author)
      a.author_id = author.id
      a.save!
    end
    
    remove_column :articles, :author
  end

  def down
    remove_column :articles, :author_id
    add_column :articles, :articles, :author
  end
end
