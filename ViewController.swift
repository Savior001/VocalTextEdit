//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by S on 12/1/18.
//  Copyright © 2018 S. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    let speechSynthesizer = NSSpeechSynthesizer()
    
    @IBOutlet var textView: NSTextView!
    
    var contents: String? {
        get {
            return textView.string
        }
        set {
            textView.string = newValue as! String
        }
    }
    
    @IBAction func speakButtonClicked(_ sender: NSButton) {
        let contents = textView.string
        if !contents.isEmpty {
            speechSynthesizer.startSpeaking(contents)
        } else {
            speechSynthesizer.startSpeaking("The document is empty.")
        }
    }
    
    @IBAction func stopButtonClicked(_ sender: NSButton) {
        speechSynthesizer.stopSpeaking()
    }
}

