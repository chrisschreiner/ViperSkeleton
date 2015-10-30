//
//  AppDelegate.swift
//  Dialogue
//

import Cocoa
import ReactiveCocoa


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var wireframe: Wireframe_MAIN!
    var datamanager: LocalDatamanager!

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        datamanager = LocalDatamanager()
        wireframe = Wireframe_MAIN(dataManager: datamanager)
        wireframe.show()
    }
}