//
//  ProfileView.swift
//  Twitter_Clone
//
//  Created by 何逸朗 on 6/16/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            
            actionButtons
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Luis Hamilton")
                        .font(.title)
                        .bold()
                }
            }
            
            Spacer()
        }
    }
}

@ViewBuilder private var headerView: some View {
    ZStack(alignment: .bottomLeading) {
        Color(.systemBlue)
            .ignoresSafeArea()
        VStack {
            Button {
                
            } label: {
                Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: 20, height: 16)
                    .foregroundColor(.white)
                    .offset(x: 3)
            }
            Circle()
                .frame(width: 72, height: 72)
            .offset(x: 16, y: 24)
        }
    }
    .frame(height: 96)
}

@ViewBuilder private var actionButtons: some View {
    HStack {
        Spacer()
        
        Image(systemName: "bell.badge")
            .font(.title3)
            .padding(6)
            .overlay(Circle()
                .stroke(
                    Color.gray,
                    lineWidth: 0.75
                )
            )
        
        Button {
            
        } label: {
            Text("Edit Profile")
                .foregroundColor(.black)
                .font(.subheadline)
                .bold()
                .frame(width: 120, height: 32)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
        }
    }
    .padding(.trailing)
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
