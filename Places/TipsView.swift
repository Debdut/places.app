//
//  TipView.swift
//  Places
//
//  Created by Debdut Karmakar on 9/25/22.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    var body: some View {
        List(tips, id: \.text) {
            tip in
            if tip.children != nil {
                NavigationLink(destination: TipView(tip: tip)) { Text(tip.text)
                        .foregroundColor(.primary)
                }
            }
        }
        .navigationTitle("Tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
