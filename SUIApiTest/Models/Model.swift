import Foundation

public struct Results : Decodable {
    var results: [Characters]
}

public struct Characters: Decodable, Identifiable {
    public let id: Int
    var name: String?
    let species: String?
    let gender: String?
    let status: String?
    let location: Locations?
    let episode: [String]?
    let image: URL?
}

public struct Locations : Decodable {
    let name: String?
}
