# Use a 'global variable' to set the user we want 
$elodie_user = User.find_by(email: "elodied@lucette-travel.com")

class ApplicationController < ActionController::Base

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  private

  def hide_footer
    @hide_footer = true
  end
end
