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

struct ApplicationConfig {

    let issuer = "https://7c4999265235.eu.ngrok.io/oauth/v2/oauth-anonymous"
    let redirectUri = "io.curity.client:/callback"
    let postLogoutRedirectUri = "io.curity.client:/logoutcallback"
    let scope = "openid profile"
    
    func getUrl(value: String) -> (URL?, Error?) {
        
        guard let url = URL(string: value) else {

            let error = ApplicationError(title: "Invalid Configuration Error", description: "The URL \(value) could not be parsed")
            return (nil, error)
        }
        
        return (url, nil)
    }
}
