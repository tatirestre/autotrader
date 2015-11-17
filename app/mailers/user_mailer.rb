class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_vehicle_confirmation.subject
  #
  def new_vehicle_confirmation(vehicle_id)
     @vehicle = Vehicle.find(vehicle_id)
    @greeting = "Hi"

    mail to: @vehicle.user.email,
    subject: "Vehicle Confirmation",
    from: "confirmations@auto.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.vehicle_update.subject
  #
  def vehicle_update
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
