//
//  NewsObject.swift
//  The News App
//
//  Created by Simon Wilson on 17/04/2021.
//

import UIKit

struct NewsObject {
    
    var source = ""
    var author = ""
    var title = ""
    var articleUrl = ""
    var imageUrl = ""
    var publishedAt = ""
    var content = ""
    
    init(sourceInit: String, authourInit: String, titleInit: String, articleUrlInit: String, imageUrlInit: String, publishedAtInit: String, contentInit: String) {
        self.author = authourInit
        self.title = titleInit
        self.articleUrl = articleUrlInit
        self.imageUrl = imageUrlInit
        self.publishedAt = publishedAtInit
        self.content = contentInit
    }

}
