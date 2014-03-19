class AddColumnsInExamScore < ActiveRecord::Migration
  def self.up
    add_column :exam_scores, :ca1, :decimal, :precision => 7, :scale => 2
    add_column :exam_scores, :ca2, :decimal, :precision => 7, :scale => 2
    add_column :exam_scores, :ca3, :decimal, :precision => 7, :scale => 2
  end

  def self.down
    remove_column :exam_scores, :ca1
    remove_column :exam_scores, :ca2
    remove_column :exam_scores, :ca3
  end
end
