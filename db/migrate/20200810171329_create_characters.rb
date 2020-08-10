class CreateCharacters < ActiveRecord::Migration[5.1]
    def change
        create_table :characters do |t|
            t.string :name
            t.string :character_type
            t.string :location
            t.timestamps
        end
    end
end