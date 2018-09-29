class EventRegistrationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.event_registration_mailer.new_event_registration.subject
  #
  def new_event_registration(registration)
    @registration = registration
    @organization = Organization.first

    mail to: @registration.email,
         subject: "Registration for #{@registration.event.title}"
  end
end
