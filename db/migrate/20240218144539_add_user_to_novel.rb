class AddUserToNovel < ActiveRecord::Migration[6.1]
  def change
    add_reference :novels, :user, null: false, foreign_key: true
  end
end
