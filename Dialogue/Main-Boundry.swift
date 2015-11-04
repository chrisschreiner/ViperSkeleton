import Foundation
import ReactiveCocoa
import Result


/// Module MAIN
/// Messages from `Presenter` to `Interactor`


protocol InteractorInput_MAIN {
	
	//async, try also with a callback and see how the api differs from signals
	func postGist() -> SignalProducer<NSURL,ProcessError>
	
	func countRecentFiles(config: Config_P) -> Int
	
	func recentFileEntry(config: Config_P, index: Int) -> Sample
	
	func clearRecentFiles(config: Config_P)
	
	func createStringOfOptions(config: Config_P) -> String
}


/// Module MAIN
/// Messages from `Interactor` to `Presenter`


protocol InteractorOutput_MAIN {
	func giveMeTheURL() -> NSURL
}


protocol PB_Gateway {
	func getContents() -> GistData
}



