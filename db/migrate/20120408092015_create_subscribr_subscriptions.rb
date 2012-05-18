class CreateSubscribrSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscribr_subscriptions do |t|
      t.string :name
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
