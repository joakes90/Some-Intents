import UIKit
import animal_combine

class ResultViewController: UIViewController {

    var response: Response?
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        label.text = response?.name
        image.image = response?.image
    }
}
