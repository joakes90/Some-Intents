import UIKit
import animal_combine

class InputViewController: UIViewController {

    var response: Response?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dogAndCow(_ sender: Any) {
        let pair = Pair(.dog, .cow)
        response = AnimalCombiner.shared.combine(pair: pair)
        performSegue(withIdentifier: "theOneSegue", sender: self)
    }

    @IBAction func duckAndBeaver(_ sender: Any) {
        let pair = Pair(.duck, .beaver)
        response = AnimalCombiner.shared.combine(pair: pair)
        performSegue(withIdentifier: "theOneSegue", sender: self)
    }
    @IBAction func rabbitAndAntaloap(_ sender: Any) {
        let pair = Pair(.jackrabbit, .antiloap)
        response = AnimalCombiner.shared.combine(pair: pair)
        performSegue(withIdentifier: "theOneSegue", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ResultViewController else {
            return
        }
        destination.response = response
    }
}

