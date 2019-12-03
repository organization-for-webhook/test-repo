class ActivitiesController < ApplicationController
  def all_activities
    @user = User.find(params[:id])
    uri = URI.parse("https://api.github.com/repos/organization-for-webhook/test-repo/events")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(uri.request_uri)
    request["Authorization"] = "token 58c9f65bcce255acb1cb9153f02b7e95c742dad3"
    response = http.request(request)
    @result = JSON.parse(response.read_body)
  end
end
