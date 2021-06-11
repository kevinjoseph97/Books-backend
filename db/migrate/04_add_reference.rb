class AddReference < ActiveRecord::Migration[6.1]

    def change 
        add_reference :books, :genre, foreign_key: true
    end

end
