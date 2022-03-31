class DanbooruController < ApplicationController

  def index
    response = HTTP.get("https://danbooru.donmai.us/profile.json?login=#{Rails.application.credentials.user_name}&api_key=#{Rails.application.credentials.danbooru.api_key}")
    render json: response.parse(:json)
  end
end
