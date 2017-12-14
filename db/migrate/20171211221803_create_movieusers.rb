class CreateMovieusers < ActiveRecord::Migration[5.1]
  def change
    create_table :movieusers do |t|
      t.string :rating

      t.timestamps
    end
  end
end
