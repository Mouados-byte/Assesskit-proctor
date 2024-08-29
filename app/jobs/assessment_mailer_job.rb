class AssessmentMailerJob < ApplicationJob
  include SuckerPunch::Job

  def perform(assessment_participation_id, mailing_type)
    ActiveRecord::Base.connection_pool.with_connection do
      participation = AssessmentParticipation.find_by(id: assessment_participation_id)
      if participation
        AssessmentMailer.send("#{mailing_type}_email", participation).deliver_now
      else
        Rails.logger.error("AssessmentParticipation with id #{assessment_participation_id} not found")
      end
    end
  end
end
