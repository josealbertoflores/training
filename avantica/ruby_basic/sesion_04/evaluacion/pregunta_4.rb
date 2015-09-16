# Utilice el metodo api documentado en http://partner.verticalresponse.com/api/soap/methods/lists/addlistmember/
# Usando el metodo addListMember, agreguese a la lista "Ruby - Hall of fame"
# Especifique su correo, nombre y apellido
# Si te da error al ejecutar, puedes necesitar el siguiente comando: gem install soap4r-ruby1.9

require 'rubygems'
require 'soap/wsdlDriver'  
require "date"

wsdl = 'https://api.verticalresponse.com/wsdl/1.0/VRAPI.wsdl'  
vr = SOAP::WSDLDriverFactory.new(wsdl).create_rpc_driver
vr.options["protocol.http.ssl_config.verify_mode"] = OpenSSL::SSL::VERIFY_NONE

username = "jose.flores@avantica.net"
password = "ruby-evaluation"
session_time = 4
lid = 542823357 # HALL OF FAME ID, DO NOT CHANGE THIS VALUE

# Logging in! This call returns a session ID, which we'll use in all subsequent calls. 
print "Logging in to account #{username}.\n"
sid = vr.login({
  'username' => username,
  'password' => password,
  'session_duration_minutes' => session_time
})


vr.addListMember({
  'session_id'  => sid,
    'list_member' => {
    'list_id'     => lid,
      'member_data' =>  [ 
        {'name' => 'email_address', 'value' => 'jose@flores.com'},
        {'name' => 'first_name', 'value' => 'Jose'},
        {'name' => 'last_name', 'value' => 'Flores'}
      ]
    }
})