//
//  RecentPlaceManager.swift
//  Saitama
//
//  Created by Roberto Abreu on 11/25/17.
//  Copyright © 2017 homeappzz. All rights reserved.
//

import Foundation
import Moya

struct RentPlaceManager {
    
    //MARK: Alias
    
    typealias RentPlacesCallback = ([RentPlace]?, NSError?) -> Void
    
    //MARK: Properties
    
    static let sharedInstance = RentPlaceManager()
    let rentPlacesProvider = MoyaProvider<RentPlaceProvider>()
    var rentPlaces:[RentPlace]?
    
    //MARK: Methods
    
    func getRentPlaceBy(id: String) -> RentPlace? {
        guard let rentPlaces = rentPlaces else {
            return nil
        }
        
        for rentPlace in rentPlaces {
            if rentPlace.id == id {
                return rentPlace
            }
        }
        
        return nil
    }
    
    func getRentPlaces(callback: @escaping RentPlacesCallback) {
        rentPlacesProvider.request(.places) { result in
            switch result {
            case let .success(response):
                let recentPlacesDict = try? JSONDecoder().decode([String: [RentPlace]].self, from: response.data)
                if let recentPlacesDict = recentPlacesDict {
                    let recentPlaces = recentPlacesDict["places"]
                    callback(recentPlaces, nil)
                } else {
                    callback(nil, nil)
                }
            case let .failure(error):
                if let response = error.response, let jsonError = try? error.response?.mapJSON() as? [String:AnyObject], let message = jsonError!["message"] as? String {
                    let errorResponse = NSError(domain: "com.saitama", code: response.statusCode, userInfo: [NSLocalizedDescriptionKey : message])
                    callback(nil, errorResponse)
                }
            }
        }
    }
    
}
