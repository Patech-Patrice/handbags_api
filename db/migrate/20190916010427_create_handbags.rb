class CreateHandbags < ActiveRecord::Migration[5.2]
  def change
    create_table :handbags do |t|
      #t.string :brand
      #t.string :color
      #t.string :fabric
      #t.string :style
     # t.string :designer
      t.string :body
      t.timestamps
    end
  end
end


