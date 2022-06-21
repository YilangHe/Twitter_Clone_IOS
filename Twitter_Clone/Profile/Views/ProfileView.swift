//
//  ProfileView.swift
//  Twitter_Clone
//
//  Created by 何逸朗 on 6/16/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            
            actionButtons
            
            userInfoDetail
            
            HStack {
                ForEach(TweetFilterViewModel.allCases, id: \.rawValue) { item in
                    VStack {
                        Text(item.title)
                            .font(.subheadline)
                            .fontWeight(selectedFilter == item ? .semibold : .regular)
                            .foregroundColor(selectedFilter == item ? .black : .gray)
                        
                        if selectedFilter == item {
                            Capsule()
                                .foregroundColor(Color(.systemBlue))
                                .frame(height:3)
                                .matchedGeometryEffect(id: "filter", in: animation)
                        } else {
                            Capsule()
                                .foregroundColor(Color(.clear))
                                .frame(height:3)
                        }
                    }
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            self.selectedFilter = item
                        }
                    }
                    
                    
                }
            }
            .overlay(Divider().offset(y:16))
            
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

@ViewBuilder private var userInfoDetail: some View {
    VStack(alignment: .leading, spacing: 4) {
        HStack {
            Text("Luis Hamilton")
                .font(.title)
                .bold()
            Image(systemName: "checkmark.seal.fill")
                .foregroundColor(Color(.systemBlue))
        }
        
        Text("@World Chamption")
            .font(.subheadline)
            .foregroundColor(.gray)
        
        Text("Mercedes sucks")
            .font(.subheadline)
            .padding(.vertical)
        
        HStack(spacing: 24) {
            HStack {
                Image(systemName: "mappin.and.ellipse")
                Text("London, UK")
            }
            
            HStack {
                Image(systemName: "link")
                Text("www.mercedes.com")
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        
        HStack(spacing: 24) {
            HStack(spacing:4){
                Text("120")
                    .bold()
                    .font(.subheadline)
                Text("Following")
                    .font(.caption)
            }
            
            HStack {
                Text("6.9M")
                    .bold()
                    .font(.subheadline)
                Text("Followers")
                    .font(.caption)
            }
        }
        .padding(.vertical)
    }
    .padding(.horizontal)
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
