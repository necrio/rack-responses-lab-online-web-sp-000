class Application
 
  def call(env)
    resp = Rack::Response.new
 
  resp.write "#{Time.now}"
 
 
    if Time.now == 12:00
      resp.write "good morning"
    else
      resp.write "good afternoon"
    end
 
    resp.finish
  end
 
end