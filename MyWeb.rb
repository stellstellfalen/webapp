require 'socket'

class MyWeb
    def call (env)
      ip_address = Socket.ip_address_list.find { |ai| ai.ipv4? }.ip_address
       [200, {"Content-Type" => "text/html; charset=utf-8"}, ["<p>" + "Current Time :" + Time.now.inspect + "</p>" +"<p>" + "Ip Address"+ ip_address]]
    end
 end