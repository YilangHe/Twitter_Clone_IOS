//
//  TweetRowView.swift
//  Twitter_Clone
//
//  Created by 何逸朗 on 5/24/22.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                VStack {
                    
                }
            }
        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
