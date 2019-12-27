# frozen_string_literal: true

class AddEmailPasswordToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email, :string
    add_column :users, :password, :string
  end
end
