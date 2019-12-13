class AddAvatarToStudent < ActiveRecord::Migration[5.2]
  def change
  	 add_attachment :students, :avatar
  end
end
