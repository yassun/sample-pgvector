class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :url
      t.datetime :date
      t.text :body

      t.timestamps
    end
  end
end
