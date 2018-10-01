# Preview all emails at http://localhost:3000/rails/mailers/event_registration_mailer
class EventRegistrationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/event_registration_mailer/new_event_registration
  def new_event_registration
    EventRegistrationMailer.new_event_registration(@registration)
  end

end
