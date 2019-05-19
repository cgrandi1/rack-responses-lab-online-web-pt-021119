class Application

  def call(evn)
    resp = Rack::Response.new

    time = Kernel.rand(0...23.59)
    morning = Kernel.rand(0...11.59)
    afternoon = Kernel.rand(12...23.59)


    resp.write "#{time}"


    if time == morning
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end

    resp.finish
  end
end
