import UIKit
import animal_combine

class ResultViewController: UIViewController {

    var response: Response?
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!

    override func viewWillAppear(_ animated: Bool) {
        label.text = "\(response!.animal1.rawValue) + \(response!.animal2.rawValue) = \(response!.name)"
        image.image = imageforanimal(animal: response?.name ?? "")
    }

    func imageforanimal(animal: String) -> UIImage {
        switch animal {
        case "Claris":
            return #imageLiteral(resourceName: "DogCow_from_LaserWriter_8")
        case "Platypus":
            return #imageLiteral(resourceName: "iu")
        case "Jackalope":
            return #imageLiteral(resourceName: "iu-1")
        default:
            return #imageLiteral(resourceName: "DogCow_from_LaserWriter_8")
        }
    }
}
