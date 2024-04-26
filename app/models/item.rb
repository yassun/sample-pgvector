class Item < ApplicationRecord
  has_neighbors :embedding

  before_save -> { self.embedding = FlaskClient.embeddings(body) }
end
