// Copyright (C) 2017 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

import Foundation

public enum Rating: Int, CustomStringConvertible {
    case one = 1
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    public var description: String {
        switch self {
        case .one:   return "✭✩✩✩✩"
        case .two:   return "✭✭✩✩✩"
        case .three: return "✭✭✭✩✩"
        case .four:  return "✭✭✭✭✩"
        case .five:  return "✭✭✭✭✭"
        }
    }
}


struct Book: CustomStringConvertible
{
    public enum Author: String, CustomStringConvertible {
        case wells
        case austen
        case hemingway
        
        public var description: String { return self.rawValue.capitalized }
    }
    
    var title: String
    var author: Author
    var rating: Rating
    
//    var description: String { return title }
    public var description: String { return "\(title) \(rating)" }
}
