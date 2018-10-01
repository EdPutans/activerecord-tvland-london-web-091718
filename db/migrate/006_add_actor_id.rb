class AddActorId <ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :actor_id, :integer
  end

  def list_roles
    arr=[]
    self.characters.each do |char|
      arr<<"#{char} - #{self.show}"
    end
    arr
  end


end
