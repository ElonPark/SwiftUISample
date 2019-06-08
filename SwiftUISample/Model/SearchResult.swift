//
//  SearchResult.swift
//  SwiftUISample
//
//  Created by Elon on 09/06/2019.
//  Copyright © 2019 Elon. All rights reserved.
//

import Foundation


// MARK: - SearchResult
struct SearchResult: Codable {
    let resultCount: Int
    let results: [Result]
}


// MARK: SearchResult convenience initializers and mutators

extension SearchResult {
    init(data: Data) throws {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        self = try decoder.decode(SearchResult.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        return try encoder.encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Result
struct Result: Codable {
    let artistViewURL: String
    let artworkUrl60, artworkUrl100: String
    let isGameCenterEnabled: Bool
    let ipadScreenshotUrls: [String]
    let appletvScreenshotUrls: [String]
    let artworkUrl512: String
    let screenshotUrls: [String]
    let supportedDevices: [String]
    let advisories: [String]
    let kind: String
    let features: [String]
    let trackCensoredName: String
    let trackViewURL: String
    let contentAdvisoryRating: String
    let averageUserRatingForCurrentVersion: Double?
    let languageCodesISO2A: [String]
    let fileSizeBytes: String
    let sellerURL: String?
    let userRatingCountForCurrentVersion: Int?
    let trackContentRating: String
    let trackID: Int
    let trackName: String
    let currentVersionReleaseDate: Date
    let minimumOSVersion: String
    let releaseNotes: String?
    let sellerName: String
    let isVppDeviceBasedLicensingEnabled: Bool
    let currency: String
    let wrapperType: String
    let version: String
    let genreIDS: [String]
    let formattedPrice: String
    let artistID: Int
    let artistName: String
    let genres: [String]
    let price: Int
    let resultDescription, bundleID: String
    let releaseDate: Date
    let primaryGenreName: String
    let primaryGenreID: Int
    let averageUserRating: Double?
    let userRatingCount: Int?
    
    enum CodingKeys: String, CodingKey {
        case artistViewURL = "artistViewUrl"
        case artworkUrl60, artworkUrl100, isGameCenterEnabled, ipadScreenshotUrls, appletvScreenshotUrls, artworkUrl512, screenshotUrls, supportedDevices, advisories, kind, features, trackCensoredName
        case trackViewURL = "trackViewUrl"
        case contentAdvisoryRating, averageUserRatingForCurrentVersion, languageCodesISO2A, fileSizeBytes
        case sellerURL = "sellerUrl"
        case userRatingCountForCurrentVersion, trackContentRating
        case trackID = "trackId"
        case trackName, currentVersionReleaseDate
        case minimumOSVersion = "minimumOsVersion"
        case releaseNotes, sellerName, isVppDeviceBasedLicensingEnabled, currency, wrapperType, version
        case genreIDS = "genreIds"
        case formattedPrice
        case artistID = "artistId"
        case artistName, genres, price
        case resultDescription = "description"
        case bundleID = "bundleId"
        case releaseDate, primaryGenreName
        case primaryGenreID = "primaryGenreId"
        case averageUserRating, userRatingCount
    }
}

// MARK: Result convenience initializers and mutators

extension Result {
    init(data: Data) throws {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        self = try decoder.decode(Result.self, from: data)
    }
    
    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }
    
    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }
    
    func jsonData() throws -> Data {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        return try encoder.encode(self)
    }
    
    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
