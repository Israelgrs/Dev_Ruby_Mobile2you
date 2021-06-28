# frozen_string_literal: true

# Add collumns to Users
class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :cpf, :string
    add_column :users, :job_role, :string
  end
end
