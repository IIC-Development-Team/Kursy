class HomeController < ApplicationController
    def index
        ua = request.user_agent

        cc = DeviceDetector.new(ua) #Stands for current client

        Client.create(:browser => cc.name, :os => cc.os_name, :dev_type => cc.device_type)

        @clients = Client.all

        session[:cookies_accepted] = params[:cookies] if params[:cookies]
    end
end
