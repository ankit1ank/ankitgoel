import Vapor
import HTTP
import VaporLogger

let drop = Droplet(providers: [VaporLogger.Provider.self])

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
drop.run()
