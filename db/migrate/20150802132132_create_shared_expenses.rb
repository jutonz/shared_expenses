class CreateSharedExpenses < ActiveRecord::Migration
  def change
    create_table :shared_expenses do |t|
      t.date :duedate
      t.text :parties
      t.integer :amount

      t.timestamps null: false
    end
  end
end
