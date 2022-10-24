//
//  ApplicationConfig.swift
//
// Copyright (C) 2021 Curity AB.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

struct ApplicationConfig: Decodable {

    let authorizationUri: String
    let tokenUri: String
    let userinfoUri: String
    let logoutUri : String
    let clientID: String
    let clientSecret: String
    let redirectUri: String
    let postLogoutRedirectUri: String
    let scope: String
    
    init() {
        self.authorizationUri = ""
        self.tokenUri = ""
        self.userinfoUri = ""
        self.logoutUri = ""
        self.clientID = ""
        self.clientSecret = ""
        self.redirectUri = ""
        self.postLogoutRedirectUri = ""
        self.scope = ""
    }
    
    func getAuthorizationUri()  -> (URL?, Error?) {
        
        guard let url = URL(string: self.authorizationUri) else {

            let error =  ApplicationError(title: "Invalid Configuration Error", description: "The authorizationUri URI could not be parsed")
            return (nil, error)
        }
        
        return (url, nil)
    }
    
    func getTokenUri()  -> (URL?, Error?) {
        
        guard let url = URL(string: self.tokenUri) else {

            let error =  ApplicationError(title: "Invalid Configuration Error", description: "The tokenUri URI could not be parsed")
            return (nil, error)
        }
        
        return (url, nil)
    }
    
    func getUserinfoUri() -> (URL?, Error?) {
        
        guard let url = URL(string: self.userinfoUri) else {

            let error = ApplicationError(title: "Invalid Configuration Error", description: "The userinfoUri URI could not be parsed")
            return (nil, error)
        }
        
        return (url, nil)
    }
    

    func getLogoutUri() -> (URL?, Error?) {
        
        guard let url = URL(string: self.logoutUri) else {

            let error = ApplicationError(title: "Invalid Configuration Error", description: "The logoutUri URI could not be parsed")
            return (nil, error)
        }
        
        return (url, nil)
    }
    
    func getRedirectUri() -> (URL?, Error?) {
        
        guard let url = URL(string: self.redirectUri) else {

            let error = ApplicationError(title: "Invalid Configuration Error", description: "The redirect URI could not be parsed")
            return (nil, error)
        }
        
        return (url, nil)
    }
    
    func getPostLogoutRedirectUri() -> (URL?, Error?) {
        
        guard let url = URL(string: self.postLogoutRedirectUri) else {

            let error = ApplicationError(title: "Invalid Configuration Error", description: "The post logout redirect URI could not be parsed")
            return (nil, error)
        }
        
        return (url, nil)
    }
}
