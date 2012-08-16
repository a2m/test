class CreateAnswer < ActiveRecord::Migration
  def self.create_with(survey)
    create_table ('answer'+survey.id.to_s).to_sym do |t|
      survey.questions.each do |q|
        t.integer q.id.to_s.to_sym
      end
    end
  end
end
