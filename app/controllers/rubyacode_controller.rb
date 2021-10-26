class RubyacodeController < ApplicationController
    skip_before_action :verify_authenticity_token
   
    # def parameters
    #     print "rubycodeA here...................."
    #     call_another_ruby()
    # end

    def callback_listener
        # just to check callback recieved
        print("callback received =>>>>>>>>>>>>>>") 
    end

    def call_another_ruby
        base_url = 'http://localhost:3001'
        url = base_url + '/calculate'
        payload =
         {
            :a => 3,
            :b => 5,
            :event => 'sum',
            :callback => 'http://localhost:3000/callback_listener'
         }
        request = HTTParty.post(url, :body => payload)
    end
end
