class Answer < ActiveRecord::Base
  validates :body, presence: true, length: {minimum: 50}
  belongs_to :question
end
