class AddFieldsToBands < ActiveRecord::Migration[7.1]
  def change
    add_column :bands, :idade, :integer
    add_column :bands, :cargo, :string
    add_column :bands, :valor, :decimal
    add_column :bands, :habilitado, :boolean
    add_column :bands, :valor_1, :decimal
    add_column :bands, :valor_2, :decimal
  end
end
