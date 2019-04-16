//
//  IntentViewController.swift
//  SiriUI
//
//  Created by Justin Oakes on 4/16/19.
//  Copyright © 2019 justin. All rights reserved.
//

import IntentsUI
import animal_combine

// As an example, this extension's Info.plist has been configured to handle interactions for INSendMessageIntent.
// You will want to replace this or add other intents as appropriate.
// The intents whose interactions you wish to handle must be declared in the extension's Info.plist.

// You can test this example integration by saying things to Siri like:
// "Send a message using <myApp>"

class IntentViewController: UIViewController, INUIHostedViewControlling {
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    // MARK: - INUIHostedViewControlling
    
    // Prepare your view controller for the interaction to handle.
    func configureView(for parameters: Set<INParameter>, of interaction: INInteraction, interactiveBehavior: INUIInteractiveBehavior, context: INUIHostedViewContext, completion: @escaping (Bool, Set<INParameter>, CGSize) -> Void) {

        let intent = interaction.intent as! AnimalsIntent
        let animal1 = Animal(rawValue: intent.animal1!)
        let animal2 = Animal(rawValue: intent.animal2!)
        let pair = Pair(animal1: animal1!, animal2: animal2!)
        let response = AnimalCombiner.shared.combine(pair: pair)

        switch response.name {
        case "Claris":
            imageView.image = #imageLiteral(resourceName: "DogCow_from_LaserWriter_8")
        case "Platypus":
            imageView.image = #imageLiteral(resourceName: "iu")
        case "Jackalope":
            imageView.image = #imageLiteral(resourceName: "iu-1")
        default:
            imageView.image = #imageLiteral(resourceName: "DogCow_from_LaserWriter_8")
        }
        completion(true, parameters, self.desiredSize)
    }
    
    var desiredSize: CGSize {
        return CGSize(width: 156, height: 128)
    }
    
}
