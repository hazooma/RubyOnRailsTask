class AdduserIdToFiles < ActiveRecord::Migration[5.2]
  def change
     add_column :attachments, :user_id, :integer
    add_index  :attachments, :user_id
  end
end
