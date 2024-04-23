class CreateAcessos < ActiveRecord::Migration[7.1]
  def change
    create_table :acessos do |t|
      t.string :nivel

      t.timestamps
    end
  end
end
