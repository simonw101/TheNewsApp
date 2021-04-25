//
//  ParseJson.swift
//  The News App
//
//  Created by Simon Wilson on 23/04/2021.
//

import UIKit
import SwiftyJSON

struct ParseJson {

    var news: NewsObject? = nil
    
    var newsArray = [NewsObject]()

    mutating func parse(data: Data) -> [NewsObject] {

        let json = JSON(data)
        
        for item in json["articles"].arrayValue {
            
            let author = item["author"].stringValue
            let articleUrl = item["url"].stringValue
            let source = item["source"].stringValue
            let title = item["title"].stringValue
            let imageUrl = item["urlToImage"].stringValue
            let publishedAt = item["publishedAt"].stringValue
            let content = item["content"].stringValue
            
            news = NewsObject(sourceInit: source, authourInit: author, titleInit: title, articleUrlInit: articleUrl, imageUrlInit: imageUrl, publishedAtInit: publishedAt, contentInit: content)
            
            if let article = news {
                
                newsArray.append(article)
                
            }

        }

        return newsArray
    }

    
}
