//
//  TipView.swift
//  Places
//
//  Created by Debdut Karmakar on 9/25/22.
//

import SwiftUI

struct TipView: View {
    let tip: Tip
    
    var body: some View {
        ScrollView {
            if tip.children != nil && tip.children!.count > 0 {
                Text(tip.children![0].text)
                    .padding()
            }
        }.navigationTitle(tip.text+"?")
    }
}

struct TipView_Previews: PreviewProvider {
    static var previews: some View {
        TipView(tip: Tip.example)
    }
}
