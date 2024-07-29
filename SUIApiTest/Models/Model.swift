import Foundation

public struct Results : Decodable {
    var results: [Characters]
}

public struct Characters: Decodable, Identifiable {
    public let id: Int
    var name: String?
    let image: URL?
}

public struct Locations : Decodable {
    let name: String?
}
