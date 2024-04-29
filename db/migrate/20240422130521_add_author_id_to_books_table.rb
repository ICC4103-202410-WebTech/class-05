class AddAuthorIdToBooksTable < ActiveRecord::Migration[7.1]
  def change
    change_table :books do |t|
      t.belongs_to :author
    end
  end
end
