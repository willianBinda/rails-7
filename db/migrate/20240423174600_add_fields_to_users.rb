class AddFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :acesso, foreign_key: true
  end
end
