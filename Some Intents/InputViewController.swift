import UIKit
import animal_combine
import Intents

class InputViewController: UIViewController {

    var response: Response?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dogAndCow(_ sender: Any) {
        let pair = Pair(.dog, .cow)
        response = AnimalCombiner.shared.combine(pair: pair)
        donateIntent(pair: pair)
        performSegue(withIdentifier: "theOneSegue", sender: self)
    }

    @IBAction func duckAndBeaver(_ sender: Any) {
        let pair = Pair(.duck, .beaver)
        response = AnimalCombiner.shared.combine(pair: pair)
        donateIntent(pair: pair)
        performSegue(withIdentifier: "theOneSegue", sender: self)
    }
    @IBAction func rabbitAndAntaloap(_ sender: Any) {
        let pair = Pair(.jackrabbit, .antiloap)
        response = AnimalCombiner.shared.combine(pair: pair)
        donateIntent(pair: pair)
        performSegue(withIdentifier: "theOneSegue", sender: self)
    }

    func donateIntent(pair: Pair) {
        let intent = AnimalsIntent()
        intent.animal1 = pair.animal1.rawValue
        intent.animal2 = pair.animal2.rawValue
        intent.suggestedInvocationPhrase = "Combine \(pair.animal1.rawValue) and \(pair.animal2.rawValue)"
        let interaction = INInteraction(intent: intent, response: nil)
        interaction.donate(completion: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ResultViewController else {
            return
        }
        destination.response = response
    }
}

