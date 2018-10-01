class Actor < ActiveRecord::Base

has_many :characters
has_many :shows, through: :characters

def full_name
  "#{self.first_name} #{self.last_name}"
end

def list_roles
  array=[]
  Character.all.each do |char|
    if char.actor == self
      array << "#{char.name} - #{char.show.name}"
    end
  end
  array
end


end
