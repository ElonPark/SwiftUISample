//
//  SearchParameter.swift
//  SwiftUISample
//
//  Created by Elon on 09/06/2019.
//  Copyright © 2019 Elon. All rights reserved.
//

import Foundation

/// For AppStoreSearch
struct SearchParameter {
    
    /// The URL-encoded text string you want to search for. For example: jack+johnson.
    let term: String
    
    /// The media type you want to search for. For example: movie. The default is all.
    let media: String = ""
    
    /// The type of results you want returned, relative to the specified media type. For example: movieArtist for a movie media type search. The default is the track entity associated with the specified media type.
    let entity: String = "software"
    
    /// The attribute you want to search for in the stores, relative to the specified media type. For example, if you want to search for an artist by name specify entity=allArtist&attribute=allArtistTerm. In this example, if you search for term=maroon, iTunes returns “Maroon 5” in the search results, instead of all artists who have ever recorded a song with the word “maroon” in the title.
    ///
    /// The default is all attributes associated with the specified media type.
    let attribute: String = "softwareDeveloper"
    
    /// The number of search results you want the iTunes Store to return. For example: 25.The default is 50.
    ///
    /// 1 to 200
    var limit: Int = 10
    
    /// The language, English or Japanese, you want to use when returning search results. Specify the language using the five-letter codename. For example: en_us.The default is en_us (English).
    var lang: String = "ko_kr"
    
    /// The two-letter country code for the store you want to search. The search uses the default store front for the specified country. For example: US. The default is US.
    var country: String = "kr"
    
    
    var dictiony: [String : Any] {
        return [
            "term" : term,
            "media" : media,
            "entity" : entity,
            "limit" : limit,
            "attribute" : attribute,
            "lang" : lang,
            "country": country
        ]
    }
}
