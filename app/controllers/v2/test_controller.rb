class V2::TestController < ApplicationController
  def index
    json_response({ message: 'Hello there'})
  end
end
