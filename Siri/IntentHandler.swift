//
//  IntentHandler.swift
//  Siri
//
//  Created by Justin Oakes on 4/16/19.
//  Copyright © 2019 justin. All rights reserved.
//

import Intents

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        
        return AnimalIntentHandler()
    }
    
}
