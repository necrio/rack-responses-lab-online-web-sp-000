class Application
 
  def call(env)
    resp = Rack::Response.new
 
 
    if 
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end
 
end