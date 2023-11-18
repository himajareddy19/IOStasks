

import Foundation
struct worldsHolidaysList : Codable {
	let englandandwales : Englandandwales?
	let scotland : Scotland?
	let northernireland : Northernireland?

	enum CodingKeys: String, CodingKey {

		case englandandwales = "englandandwales"
		case scotland = "scotland"
		case northernireland = "northernireland"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		englandandwales = try values.decodeIfPresent(Englandandwales.self, forKey: .englandandwales)
		scotland = try values.decodeIfPresent(Scotland.self, forKey: .scotland)
		northernireland = try values.decodeIfPresent(Northernireland.self, forKey: .northernireland)
	}

}
struct Englandandwales : Codable {
    let division : String?
    let events : [Events]?

    enum CodingKeys: String, CodingKey {

        case division = "division"
        case events = "events"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        division = try values.decodeIfPresent(String.self, forKey: .division)
        events = try values.decodeIfPresent([Events].self, forKey: .events)
    }

}
struct Events : Codable {
    let title : String?
    let date : String?
    let notes : String?
    let bunting : Bool?

    enum CodingKeys: String, CodingKey {

        case title = "title"
        case date = "date"
        case notes = "notes"
        case bunting = "bunting"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        date = try values.decodeIfPresent(String.self, forKey: .date)
        notes = try values.decodeIfPresent(String.self, forKey: .notes)
        bunting = try values.decodeIfPresent(Bool.self, forKey: .bunting)
    }

}

struct Northernireland : Codable {
    let division : String?
    let events : [Events]?

    enum CodingKeys: String, CodingKey {

        case division = "division"
        case events = "events"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        division = try values.decodeIfPresent(String.self, forKey: .division)
        events = try values.decodeIfPresent([Events].self, forKey: .events)
    }

}
struct Scotland : Codable {
    let division : String?
    let events : [Events]?

    enum CodingKeys: String, CodingKey {

        case division = "division"
        case events = "events"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        division = try values.decodeIfPresent(String.self, forKey: .division)
        events = try values.decodeIfPresent([Events].self, forKey: .events)
    }

}

