class CriarTitularesEUsuarios < ActiveRecord::Migration
  def up

    create_table :titulares do |t|
      t.string :nome, :null => false
    end

    create_table :usuarios do |t|
      t.string :email, :null => false
      t.integer :titular_id, :null => false
    end

  end

  def down
    drop_table :titulares
    drop_table :usuarios
  end

end
