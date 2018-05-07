import UIKit

/// Codable
// michiganlabs.com

/*
typealias Codable = Decodable & Encodable

protocol Encodable {
    func encode(to encoder: Encoder) throws
}

protocol Decodable {
    init(from decoder: Decoder) throws
}
*/


// *** Simple Case of Codable
struct Simple: Codable {
    let name: String
    let number: Int
}

let json = """
    {
        "name": "Simple Example",
        "number": 1
    }
    """.data(using: .utf8)!

let simple = try JSONDecoder().decode(Simple.self, from: json)
print(simple)
// ▿ Simple #1 in closure #1 (Foundation.JSONEncoder, Foundation.JSONDecoder) throws -> () in __lldb_expr_36
//   - name: "Simple Example"
//   - number: 1

let reencoded = try JSONEncoder().encode(simple)
print(String(data: reencoded, encoding: .utf8)!)
// {
//   "name": "Simple Example",
//   "number": 1
// }


// *** Codable Keys
struct User: Codable {
    let firstName: String
    let id: Int
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case id = "user_id"
    }
}

let json2 = """
    {
        "first_name": "Johnny",
        "user_id": 11
    }
    """.data(using: .utf8)!

let user = try JSONDecoder().decode(User.self, from: json2)
print(user)
// ▿ User #1 in closure #2 (Foundation.JSONEncoder, Foundation.JSONDecoder) throws -> () in __lldb_expr_36
//  - firstName: "Johnny"
//  - id: 11

let reencoded2 = try JSONEncoder().encode(user)
print(String(data: reencoded, encoding: .utf8)!)
// {
//   "first_name" : "Johnny",
//   "user_id" : 11
// }


// *** Codable All on Our Own
struct Message: Codable {
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        formatter.locale = Locale(identifier: "en_US")
        return formatter
    }()
    
    enum CodingKeys: String, CodingKey {
        case author = "author_name"
        case body = "message_content"
        case timeStamp = "time_stamp"
    }
    
    let author: String
    let body: String
    let timeStamp: Date
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.author = try container.decode(String.self, forKey: .author)
        self.body = try container.decode(String.self, forKey: .body)
        let dateString = try container.decode(String.self, forKey: .timeStamp)
        if let date = Message.dateFormatter.date(from: dateString) {
            self.timeStamp = date
        } else {
            throw DecodingError.dataCorruptedError(
                forKey: CodingKeys.timeStamp,
                in: container,
                debugDescription: "Date string not formatted correctly"
            )
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.author, forKey: .author)
        try container.encode(self.body, forKey: .body)
        let dateString = Message.dateFormatter.string(from: self.timeStamp)
        try container.encode(dateString, forKey: .timeStamp)
    }
    
}

let json3 = """
    {
        "author_name": "Joanne",
        "message_content": "How are you doing today?",
        "time_stamp": "10/25/17, 11:21 AM"
    }
    """.data(using: .utf8)!

let message = try JSONDecoder().decode(Message.self, from: json3)
dump(message)
// ▿ Message #1 in closure #3 (Foundation.JSONEncoder, Foundation.JSONDecoder) throws -> () in __lldb_expr_38
//   - author: "Joanne"
//   - body: "How are you doing today?"
//   ▿ timeStamp: 2017-10-25 15:21:00 +0000
//     - timeIntervalSinceReferenceDate: 530637660.0

let reencoded3 = try JSONEncoder().encode(message)
print(String(data: reencoded, encoding: .utf8)!)
// {
//   "author_name" : "Joanne",
//   "message_content" : "How are you doing today?",
//   "time_stamp" : "10\/25\/17, 11:21 AM"
// }


// *** Codable Enums
enum BalloonState: String, Codable {
    case deflated
    case inflated
    case popped
}

struct Balloon: Codable {
    let state: BalloonState
}

let json4 = """
    [{
        "state": "deflated"
    },{
        "state": "deflated"
    },{
        "state": "inflated"
    },{
        "state": "inflated"
    },{
        "state": "popped"
    },{
        "state": "deflated"
    }]
    """.data(using: .utf8)!

let balloons = try JSONDecoder().decode([Balloon].self, from: json4)
print("""
    Total: \(balloons.count)
    Deflated: \(balloons.filter {$0.state == .deflated}.count)
    Inflated: \(balloons.filter {$0.state == .inflated}.count)
    Popped: \(balloons.filter {$0.state == .popped}.count)
"""
)
// Total: 6
// Deflated: 3
// Inflated: 2
// Popped: 1

extension BalloonState {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let raw = try container.decode(String.self)
        if let value = State(rawValue: raw) {
            self = value
        } else {
            let context = DecodingError.Context(
                codingPath: decoder.codingPath,
                debugDescription: "Unexpected raw value \"\(raw)\""
            )
            throw DecodingError.typeMismatch(State.self, context)
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.rawValue)
    }
}


// *** Codable Simple values using singleValueContainer
// Backward String struct

struct BackwardString: Codable {
    let value: String
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let raw = try container.decode(String.self)
        self.value = String(raw.reversed())
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.value.reversed())
    }
}

struct SecretMessage: Codable {
    let message: BackwardString
}

let json5 = "{\"message\": \"esrever ni si egassem siht\"}".data(using: .utf8)!
let secret = try decoder.decode(SecretMessage.self, from: json5)
dump(secret)
// ▿ SecretMessage #1 in closure #5 (Foundation.JSONEncoder, Foundation.JSONDecoder) throws -> () in __lldb_expr_38
//   ▿ message: BackwardString #1 in closure #5 (Foundation.JSONEncoder, Foundation.JSONDecoder) throws -> () in __lldb_expr_38
//     - value: "this message is in reverse"


// *** Nested structures
// Nested Data, Nested Codable
struct Pagination: Codable {
    let offset: Int
    let limit: Int
    let total: Int?
    
    init(offset: Int, limit: Int, total: Int? = nil) {
        self.offset = offset
        self.limit = limit
        self.total = total
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.offset = try container.decode(Int.self, forKey: .offset)
        self.limit = try container.decode(Int.self, forKey: .limit)
        self.total = try container.decodeIfPresent(Int.self, forKey: .total)
    }
}

struct SearchRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case term, pagination
        case isExact = "is_exact"
    }
    
    let term: String
    let isExact: Bool
    let pagination: Pagination
}

let page = Pagination(offset: 0, limit: 10)
let request = SearchRequest(term: "pikachu", isExact: true, pagination: page)
let data = try encoder.encode(request)
let string = String(data: data, encoding: .utf8)!
print(string)
// {
//   "is_exact" : true,
//   "pagination" : {
//     "limit" : 10,
//     "offset" : 0
//   },
//   "term" : "pikachu"
// }

let decoded = try decoder.decode(SearchRequest.self, from: data)
dump(decoded)
// ▿ SearchRequest #1 in closure #6 (Foundation.JSONEncoder, Foundation.JSONDecoder) throws -> () in __lldb_expr_62
//   - term: "pikachu"
//   - isExact: true
//   ▿ pagination: Pagination #1 in closure #6 (Foundation.JSONEncoder, Foundation.JSONDecoder) throws -> () in __lldb_expr_62
//     - offset: 0
//     - limit: 10
//     - total: nil

let json6 = """
    {
        "term": "charma",
        "is_exact": false,
        "pagination": {
            "offset": 0,
            "limit": 10,
            "total": 100
        }
    }
    """.data(using: .utf8)!

let newRequest = try decoder.decode(SearchRequest.self, from: json6)
dump(newRequest)
// ▿ SearchRequest #1 in closure #6 (Foundation.JSONEncoder, Foundation.JSONDecoder) throws -> () in __lldb_expr_62
//   - term: "charma"
//   - isExact: false
//   ▿ pagination: Pagination #1 in closure #6 (Foundation.JSONEncoder, Foundation.JSONDecoder) throws -> () in __lldb_expr_62
//     - offset: 0
//     - limit: 10
//     ▿ total: Optional(100)
//       - some: 100


// *** Flat Data, Nested Codable
struct Pagination: Codable {
    enum CodingKeys: String, CodingKey {
        case offset = "PageOffset"
        case limit = "NumberPerPage"
    }
    
    let offset: Int
    let limit: Int
}

struct SearchRequest: Codable {
    enum CodingKeys: String, CodingKey {
        case term
    }
    
    let term: String
    let pagination: Pagination
    
    init(term: String, pagination: Pagination) {
        self.term = term
        self.pagination = pagination
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.term = try container.decode(String.self, forKey: .term)
        self.pagination = try Pagination(from: decoder)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.term, forKey: .term)
        try self.pagination.encode(to: encoder)
    }
}

let request = SearchRequest(term: "dunsparce", pagination: Pagination(offset: 0, limit: 20))
let data = try encoder.encode(request)
let string = String(data: data, encoding: .utf8)!
print(string)
// {
//   "NumberPerPage" : 20,
//   "PageOffset" : 0,
//   "term" : "dunsparce"
// }

let json7 = """
    {
        "PageOffset": 0,
        "NumberPerPage": 30,
        "term": "tropius"
    }
    """.data(using: .utf8)!

let newRequest = try decoder.decode(SearchRequest.self, from: json7)
dump(newRequest)
// ▿ SearchRequest #1 in closure #7 (Foundation.JSONEncoder, Foundation.JSONDecoder) throws -> () in __lldb_expr_62
//   - term: "tropius"
//   ▿ pagination: Pagination #1 in closure #7 (Foundation.JSONEncoder, Foundation.JSONDecoder) throws -> () in __lldb_expr_62
//     - offset: 0
//     - limit: 30
