class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
    	t.string :summary
    	t.string :status
    	t.text :reporter
    	t.text :assignee
      t.timestamps
    end
    add_index :issues, [:reporter, :assignee]
  end
end
