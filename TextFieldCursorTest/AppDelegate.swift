//
//  AppDelegate.swift
//  TextFieldCursorTest
//
//  Created by Oleksandr Yakubchyk on 4/2/15.
//  Copyright (c) 2015 YA. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var textField: NSTextField!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func changeTextFieldSingleLineMode(sender: AnyObject) {
        let button = sender as NSButton
//        textField.usesSingleLineMode = button.state
        if button.state == 1 {
            textField.usesSingleLineMode = true
        }
        else {
            textField.usesSingleLineMode = false
        }
    }
    
    @IBAction func setTextFieldFocused(sender: AnyObject) {
        
        if (textField.acceptsFirstResponder == true) {
            window.makeFirstResponder(textField)
        }
    }

}

