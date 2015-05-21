class AddRelationalFieldsToTopicsAndStories < ActiveRecord::Migration
  def change
    add_column :stories, :topic_id, :integer
  end
end
