class FixColumnsName < ActiveRecord::Migration[7.0]
  def change
    rename_column :crud_tests, :nome, :name
    rename_column :crud_tests, :endereco, :address
    rename_column :crud_tests, :preco, :income
  end
end
