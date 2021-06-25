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

import SwiftUI

class ErrorViewModel: ObservableObject {

    @Published var title = ""
    @Published var description = ""
    
    init(error: ApplicationError) {
        self.title = error.title
        self.description = error.description.isEmpty ? "Unknown Error" : error.description
    }

    func clearDetails() {
        self.title = ""
        self.description = ""
    }

    func hasDetails() -> Bool {
        let result = !self.title.isEmpty
        print("*** Error Has Details: \(result)")
        return result
    }
}
