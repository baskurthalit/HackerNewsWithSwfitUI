//
//  DetailView.swift
//  HAX0R News
//
//  Created by Macbook on 19.03.2022.
//

import SwiftUI
import WebKit
import Foundation

struct DetailView: View {
    
    let url:String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "Here we go")
    }
}


