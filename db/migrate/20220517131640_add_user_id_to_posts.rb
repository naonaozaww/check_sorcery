class AddUserIdToPosts < ActiveRecord::Migration[5.2]
  def up
    add_reference :posts, :user, foreign_key: true, null: false
  end

  def down
    remove_reference :posts, :users, foreign_key: true, null: false
  end
end
