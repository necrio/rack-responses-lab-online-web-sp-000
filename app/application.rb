class Application
 
  def call(env)
    resp = Rack::Response.new
 
 T = Time.now.hour
 
 
  resp.write "#{T}"
 
 
    if T == 12:00
      resp.write "good morning"
    else
      resp.write "good afternoon"
    end
 
    resp.finish
  end
 
end