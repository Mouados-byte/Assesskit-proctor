# frozen_string_literal: true

class AssessmentHeaderComponent < ViewComponent::Base
  def initialize(assessment:, current_action:)
    @assessment = assessment
    @current_action = current_action
  end

  private

  def save_and_exit_button
    if @current_action == 'new'
      link_to "Exit", assessments_path, class: "secondary-button px-6"
    else
      button_tag "Save and exit",
                 type: "button",
                 class: "secondary-button px-3",
                 data: {
                   controller: "form-submit",
                   form_submit_save_and_exit_value: "true",
                   action: "form-submit#submitForm"
                 }
    end
  end
end
