class Application
 
  def call(env)
    resp = Rack::Response.new
 
 T = Time.now.hour
 
 
  resp.write "#{T}"
 
 
    if T.between?(0,11)
      resp.write "good morning"
    else T.between?(12, 23)
      resp.write "good afternoon"
    end
 
    resp.finish
  end
 
end