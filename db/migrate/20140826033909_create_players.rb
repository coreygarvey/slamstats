class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :refid
      t.string :name
      t.string :fullname
      t.string :nickname
      t.string :twitter
      t.string :born
      t.string :position
      t.string :shoots
      t.integer :htft
      t.integer :htin
      t.integer :weight
      t.string :bmonth
      t.integer :bday
      t.integer :byear
      t.string :bcity
      t.string :bstate
      t.string :bcountry
      t.string :hs
      t.string :hscity
      t.string :hsstate
      t.string :college
      t.string :draftteam
      t.integer :draftround
      t.integer :draftroundpick
      t.integer :draftoverall
      t.integer :draftyear
      t.integer :hofyear

      t.timestamps
    end
  end
end
