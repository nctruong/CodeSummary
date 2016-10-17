window.Models.Storage ||= {}
class Models.Storage extends Models.ApplicationModel
  # empty constructor
  constructor: ->

  #
  @initPorts: (ports) ->
    window.ports = new Array()
    for port in ports
      window.ports.push(new Models.Port(port))
  # @ is class variable
  # requestRoutePlan is function's name
  # (departure, arrival) is parameter
  # $.get is call ajax using get method

  @requestRoutePlan: (departure, arrival) ->
    request = $.get('/request/route/',
      {route:
        { departure: departure,
          arrival: arrival
        }
      })
    request

