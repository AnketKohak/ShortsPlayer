//
//  VideoManager.swift
//  ShortsPlayer
//
//  Created by Anket Kohak on 11/09/24.
//

import Foundation

enum Query: String,CaseIterable{
    case nature, animals, people, ocean, food
}

struct ResponseBody: Decodable{
    var page: Int
    var perPage:Int
    var totalResults:Int
    var url:String
    var video:[Video]
    
}


struct Video: Identifiable, Decodable{
    var id: Int
    var image:String
    var duration:Int
    var user:User
    var videoFiles:[VideoFile]
    
    struct User:Identifiable,Decodable{
        var id: Int
        var name:String
        var url :String
    }
    
    struct VideoFile:Decodable,Identifiable{
        var id:Int
        var quality:String
        var fileType:String
        var link:String
    }
}
