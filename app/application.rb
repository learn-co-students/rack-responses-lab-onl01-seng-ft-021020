class Application

    # def call(greeting)
    #     time = Time.now.to_i
    #     if time < 12
    #         p 'Good Morning!'
    #     elsif time > 12 || time < 24
    #         p 'Good Afternoon!'
    #     end
    # end

    def call(env)
        response = Rack::Response.new
        if Time.now.hour > 12
            response.write 'Good Afternoon!'
        elsif Time.now.hour <= 12
            response.write 'Good Morning!'
        end
        response.finish
    end

end