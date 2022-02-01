//
//  DetailView.swift
//  H4XOR News
//
//  Created by 유승원 on 2022/02/01.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https:\\google.com")
    }
}
