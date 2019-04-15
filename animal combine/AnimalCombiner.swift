import Foundation

enum animal: String {
    case dog
    case cow
    case duck
    case beaver
    case jackrabbit
    case antiloap
}

struct Response {
    let name: String
    let image: UIImage
}

typealias Pair = (animal, animal)

class AnimalCombiner {

    static let shared = AnimalCombiner()

    func combine(pair: Pair) -> Response {
        switch pair {
        case (.dog, .cow):
            return Response(name: "Claris", image: #imageLiteral(resourceName: "DogCow_from_LaserWriter_8"))
        case (.duck, .beaver):
            return Response(name: "Platypus", image: #imageLiteral(resourceName: "iu"))
        case (.jackrabbit, .antiloap):
            return Response(name: "Jackalope", image: #imageLiteral(resourceName: "iu-1"))
        default:
            return Response(name: "That's not an animal", image: #imageLiteral(resourceName: "iu-2"))
        }
    }
}
