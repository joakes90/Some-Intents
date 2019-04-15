import UIKit

class BorderButton: UIButton {

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.borderWidth = 5.0
        layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.cornerRadius = 10.0
    }
}
