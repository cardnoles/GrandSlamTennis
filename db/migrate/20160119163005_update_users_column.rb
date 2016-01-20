class UpdateUsersColumn < ActiveRecord::Migration
  def change
change_column_null :users, :email, false
change_column_null :users, :first_name, false
change_column_null :users, :last_name, false
change_column_null :users, :user_name, false
change_column_null :users, :password, false
change_column_null :users, :admin, false
end
end
