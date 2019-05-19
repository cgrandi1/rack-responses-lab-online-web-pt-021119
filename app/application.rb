class Time

  def call(evn)
    resp = Rack::Response.new

    time = Time.now.hour


    resp.write "#{time}"


    if time  <= 12
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end

    resp.finish
  end
end
