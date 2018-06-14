//
//  APIManage.swift
//  AppAPIAccess
//
//  Created by MDL on 6/12/18.
//  Copyright © 2018 fit. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import PromiseKit
import SwiftyJSON

class APIManager{
    let userId: Int = 1
    
    static let shared = APIManager()
    
    private init (){
        
    }
    
    func fecthUserFromAPI() {
        Alamofire.request(API_URL).responseString { (response) in
            switch(response.result){
            case.success(let responseString):
                print(responseString)
                let userResponse = UserResponse(JSONString:"\(responseString)")
            case.failure(let error):
                print(error)
            }
        }
    }
    func getPerticulerUser(){
        //        Alamofire.request(API_URL, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: header).responseString { (response) in
        //            switch(response.result){
        //            case.success(let responseString):
        //                print(responseString)
        //                let userResponse = UserResponse(JSONString:"\(responseString)")
        //                print(response.request) // original URL request
        //                print(response.response) // URL response
        //                print(response.data) // server data
        //                print(response.result) // result of response serialization
        //            // fullfil(userResponse.User)
        //            case.failure(let error):
        //                print(error)
        //            }
        //        }
        
        let Url: String = API_URL+"?email="+"Karley_Dach@jasper.info"
        let header = [
            "Content-Type" : "text/html; charset=UTF-8"
        ]
        let url2 = API_URL + String(userId)
        Alamofire.request(url2).responseString { (response) in
            switch(response.result){
            case.success(let responseString):
                print(responseString)
                let json: JSON = JSON(response.result.value!)
                let userResponse = UserResponse(JSONString:"\(responseString)")
                let userId = userResponse?.id
                let name = userResponse?.name
                print(userId!)
                print(name!)
            case.failure(let error):
                print(error)
            }
        }
//        func getPlaceData(url: String, parameters: [String: String]) {
//            let headers: HTTPHeaders = [
//                "Authorization": "Bearer /*PRIVATE KEY*/"
//            ]
//            Alamofire.request(API_URL, method: .get, parameters: ["id" = "1"], encoding:
//                JSONEncoding.default, headers: headers).responseJSON { (response) in
//                    if response.result.isSuccess {
//                let json: JSON = JSON(response.result.value!)
//                print(json)
//            } else {
//                print("error")
//            }
//        }
//    }
    }


}

