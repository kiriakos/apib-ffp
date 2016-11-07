/**
 *  APIB For Fun & Profit Petstore JS server!!!
 */
var port = 20080,
    url = require("url"),
    http = require("http");

// Some Constants
var MALE = "Male", FEMALE = "Female";

// Some servcices
var db = { pets: [], species: [] };
var routes = {
    "getPets": { "GET": /^\/pets$/},
    "createPet": { "POST": /^\/pets\/(.+)$/},
    "getSp":   { "GET": /^\/species\/(.+)$/},
    "createSp": { "POST": /^\/species$/}
};
var handlers = {
    "getPets": function(req, res){ return db.pets },
    "createPet": function(req, res){
        var payload;
        request.on("data", function(chunk){ payload += chunk; });
        request.on("end", function(){
            var pet = JSON.parse(payload);
            db.pets.push(pet);
            pet.id = db.pets.length;
            return pet;
        })
    }
};

// Some Helpers
function getId(regex, path){ return path.replace(regex, "$1"); }

function start() {

    /**
     * NOTE: Obviously for real purposes we would be setting up the app
     *       differently. But in this case we profit from keeping everything
     *       veeeeery simple!
     */
    var onRequest = function (request, response) {
        console.log("[ server.js ] Request for: " + request.url);
        var path = url.parse(request.url).pathname,
            action, // the action that was resolved
            out; //the outgoing object

        action = route(request);

        if(typeof handlers[action] == "function" ){
            console.log("[ server.js] Dispatched request " + action + ": "+ path)
            try{
                response.writeHead(200, {"Content-Type": "application/json"});
                out = handlers[action](request, response);
            }
            catch(e){
                response.writeHead(500, {"Content-Type": "application/json"});
                out = e;
            }
        }
        else{
            response.writeHead(404, {"Content-Type": "application/json"});
            out = {
                "error_msg": "No route or handler for: 'HTTP:" 
                        + request.method + "', '" + request.url + "'!",
                "error_no": "00001"
            };
        }
        response.write(JSON.stringify(out));
        response.end();
  }

  http.createServer(onRequest).listen(port);
  console.log("[ server.js ] Server has started on: " + port + ".");
}

// Given a Request obj produces a handler or undefined
function route(req){
    var method = req.method.split(":")[1],
        path = url.parse(request.url).pathname;
    for(var action in routes){
        if (path.match(routes[action][method])){
            console.log("[ Route ] Matched: " + action );
            return action;
        }
    }
}

start();
