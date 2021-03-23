# Preview all emails at http://localhost:3000/rails/mailers/empty_activities_mailer
class EmptyActivitiesMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/empty_activities_mailer/warning
  def warning
    user = User.last
    EmptyActivitiesMailer.with(user: user).warning
  end
end
