class Application
 
  def call(env)
    resp = Rack::Response.new
 

 
 
    if Time.now.hour.between?(0,11)
      resp.write "Good Morning!"
    else Time.now.hour.between?(12, 24)
      resp.write "good Afternoon"
    end
 
    resp.finish
  end
 
end