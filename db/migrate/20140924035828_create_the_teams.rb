class CreateTheTeams < ActiveRecord::Migration
  def change
    create_table :the_teams do |t|

      t.timestamps
    end
  end
end
