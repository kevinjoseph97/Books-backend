class RemoveColumn < ActiveRecord::Migration[6.1]

    def change 
        remove_column :books, :genre_id, :integer
    end

end
