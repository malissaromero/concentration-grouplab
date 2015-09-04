class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :win_time
      t.references :user, index:true, foreign_key:true
    end
  end
end
