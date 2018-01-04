class Answer < ApplicationRecord
  include HasGravatar
  after_create :notify_question_author

  belongs_to :question

  def notify_question_author
    MainMailer.notify_question_author(self).deliver_later
  end
end
