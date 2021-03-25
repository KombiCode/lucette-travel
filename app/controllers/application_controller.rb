class ApplicationController < ActionController::Base
  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  private

  def hide_footer
    @hide_footer = true
  end
end
