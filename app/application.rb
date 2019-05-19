class Application

  def call(evn)
    resp = Rack::Response.new

    time = Time.now.hour(0...23.59)
    morning = Time.now.hour(0...11.59)



    resp.write "#{time}"


    if time == morning
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end

    resp.finish
  end
end
