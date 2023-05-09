//
//  Details.swift
//  Hacker_News
//
//  Created by Жансая Шакуали on 26.04.2023.
//

import SwiftUI


struct Details: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details(url: "https://www.google.com")
    }
}


