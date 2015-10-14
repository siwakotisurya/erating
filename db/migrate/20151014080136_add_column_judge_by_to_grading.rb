class AddColumnJudgeByToGrading < ActiveRecord::Migration
  def change
    add_column :gradings, :judge_by, :string
  end
end
