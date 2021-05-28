class AddIndexToUsersEmail < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :email, unique: true # notice the colon that appears before user and email, indicates that is an attribute, the colon appearing after unique indicates that is a value
  end
end

# if the migration fails make sure to exit any running sandbox console sessions, which can lock the database and prevent migrations