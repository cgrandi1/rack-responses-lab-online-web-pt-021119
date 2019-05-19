class Application

  def call(evn)
    resp = Rack::Response.new

    time = Kernal.rand(0...23.59)
    morning = Kernal.rand(0...11.59)
    afternoon = Kernal.rand(12...23.59)

    if time == 0...11.59
      resp.write "Good morning"
    else
      resp.write "Good Afternoon"
    end

    resp.finish
end
