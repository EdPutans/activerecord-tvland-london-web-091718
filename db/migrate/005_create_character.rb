class CreateCharacter <ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :show_id
    end
  end
end