class AddEmbeddingToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :embedding, :vector, limit: 1024 # dimensions
  end
end
