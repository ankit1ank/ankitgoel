import App

/// We have isolated all of our App's logic into
/// the App module because it makes our app
/// more testable.
///
/// In general, the executable portion of our App
/// shouldn't include much more code than is presented
/// here.
///
/// We simply initialize our Droplet, optionally
/// passing in values if necessary
/// Then, we pass it to our App's setup function
/// this should setup all the routes and special
/// features of our app
///
/// .run() runs the Droplet's commands, 
/// if no command is given, it will default to "serve"
let config = try Config()
try config.setup()

let drop = try Droplet(config)
try drop.setup()

// Not recommended refactor later - move to routes
drop.get { req in
    return try drop.view.make("index.html")
}

drop.get("index.html") {
    req in
    return try drop.view.make("index.html")
}

drop.get("resume.html") {
    req in
    return try drop.view.make("resume.html")
}

drop.get("hitTheTileSupport.html") {
    req in
    return try drop.view.make("hitTheTileSupport.html")
}

drop.get("YesToYogaSupport.html") {
    req in
    return try drop.view.make("YesToYogaSupport.html")
}

try drop.run()
