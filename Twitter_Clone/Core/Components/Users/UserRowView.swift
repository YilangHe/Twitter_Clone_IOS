//
//  UserRowView.swift
//  Twitter_Clone
//
//  Created by 何逸朗 on 6/20/22.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            VStack(alignment: .leading, spacing: 4) {
                Text("Name")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Text("message")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
