class MultipleResponseQuestion < Question
  # Add MultipleResponseQuestion-specific logic

  has_many :question_options, foreign_key: :question_id, dependent: :destroy, autosave: true

  validate :at_least_one_correct_option

  private

  def at_least_one_correct_option
    if question_options.none?(&:correct?)
      errors.add(:base, "Must have at least one correct option")
    end
  end
end
