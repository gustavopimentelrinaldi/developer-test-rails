class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, limit: 60
      t.string :description, limit: 60
      t.text :body
      t.string :author, limit: 60

      t.timestamps
    end
  end
end
