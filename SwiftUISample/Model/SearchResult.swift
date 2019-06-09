//
//  SearchResult.swift
//  SwiftUISample
//
//  Created by Elon on 09/06/2019.
//  Copyright © 2019 Elon. All rights reserved.
//

import Foundation
import ObjectMapper


// MARK: - SearchResult

struct SearchResult: Mappable {
    private(set) var resultCount: Int = 0
    private(set) var results = [ResultElement]()
    
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        resultCount <- map["resultCount"]
        results <- map["results"]
    }
}



// MARK: - ResultElement

struct ResultElement: Mappable {
    private(set) var artistViewURL: String = ""
    private(set) var artworkUrl60: String = ""
    private(set) var artworkUrl100: String = ""
    private(set) var isGameCenterEnabled: Bool = false
    private(set) var ipadScreenshotURLs = [String]()
    private(set) var appletvScreenshotURLs = [String]()
    private(set) var artworkUrl512: String = ""
    private(set) var screenshotURLs = [String]()
    private(set) var supportedDevices = [String]()
    private(set) var advisories = [String]()
    private(set) var kind: String = ""
    private(set) var features = [String]()
    private(set) var trackCensoredName: String = ""
    private(set) var trackViewURL: String = ""
    private(set) var contentAdvisoryRating: String?
    private(set) var averageUserRatingForCurrentVersion: Double?
    private(set) var languageCodesISO2A = [String]()
    private(set) var fileSizeBytes: String = ""
    private(set) var sellerURL: String?
    private(set) var userRatingCountForCurrentVersion: Int?
    private(set) var trackContentRating: String = ""
    private(set) var trackID: Int = 0
    private(set) var trackName: String!
    private(set) var currentVersionReleaseDate: Date?
    private(set) var minimumOSVersion: String = ""
    private(set) var releaseNotes: String?
    private(set) var sellerName: String = ""
    private(set) var isVppDeviceBasedLicensingEnabled: Bool = false
    private(set) var currency: String?
    private(set) var wrapperType: String?
    private(set) var version: String = ""
    private(set) var genreIDS = [String]()
    private(set) var formattedPrice: String?
    private(set) var artistID: Int = 0
    private(set) var artistName: String = ""
    private(set) var genres = [String]()
    private(set) var price: Int = 0
    private(set) var description: String = ""
    private(set) var bundleID: String = ""
    private(set) var releaseDate: Date?
    private(set) var primaryGenreName: String = ""
    private(set) var primaryGenreID: Int = 0
    private(set) var averageUserRating: Double?
    private(set) var userRatingCount: Int?
    
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        artistViewURL <- map["artistViewUrl"]
        artworkUrl60 <- map["artworkUrl60"]
        artworkUrl100 <- map["artworkUrl100"]
        isGameCenterEnabled <- map["isGameCenterEnabled"]
        ipadScreenshotURLs <- map["ipadScreenshotUrls"]
        appletvScreenshotURLs <- map["appletvScreenshotUrls"]
        artworkUrl512 <- map["artworkUrl512"]
        screenshotURLs <- map["screenshotUrls"]
        supportedDevices <- map["supportedDevices"]
        advisories <- map["advisories"]
        kind <- map["kind"]
        features <- map["features"]
        trackCensoredName <- map["trackCensoredName"]
        trackViewURL <- map["trackViewUrl"]
        contentAdvisoryRating <- map["contentAdvisoryRating"]
        averageUserRatingForCurrentVersion <- map["averageUserRatingForCurrentVersion"]
        languageCodesISO2A <- map["languageCodesISO2A"]
        fileSizeBytes <- map["fileSizeBytes"]
        sellerURL <- map["sellerUrl"]
        userRatingCountForCurrentVersion <- map["userRatingCountForCurrentVersion"]
        trackContentRating <- map["trackContentRating"]
        trackID <- map["trackID"]
        trackName <- map["trackName"]
        currentVersionReleaseDate <- (map["currentVersionReleaseDate"], DateTransform())
        minimumOSVersion <- map["minimumOsVersion"]
        releaseNotes <- map["releaseNotes"]
        sellerName <- map["sellerName"]
        isVppDeviceBasedLicensingEnabled <- map["isVppDeviceBasedLicensingEnabled"]
        currency <- map["currency"]
        wrapperType <- map["wrapperType"]
        version <- map["version"]
        genreIDS <- map["genreIds"]
        formattedPrice <- map["formattedPrice"]
        artistID <- map["artistId"]
        artistName <- map["artistName"]
        genres <- map["genres"]
        price <- map["price"]
        description <- map["description"]
        bundleID <- map["bundleId"]
        releaseDate <- (map["releaseDate"], DateTransform())
        primaryGenreName <- map["primaryGenreName"]
        primaryGenreID <- map["primaryGenreId"]
        averageUserRating <- map["averageUserRating"]
        userRatingCount <- map["userRatingCount"]
    }
}
