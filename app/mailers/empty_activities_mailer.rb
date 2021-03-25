class EmptyActivitiesMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.empty_activities_mailer.warning.subject
  #
  def warning
    @greeting = 'Hi '
    @current_trip = current_trip
    @user = params[:user] # Instance variable => available in view
    mail(to: @user.email, subject: 'Lucette travel informs you that you have no activities planned for tomorrow')
    # This will render a view in `app/views/user_mailer`!
  end
end


