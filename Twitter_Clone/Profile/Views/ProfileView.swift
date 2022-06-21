//
//  ProfileView.swift
//  Twitter_Clone
//
//  Created by 何逸朗 on 6/16/22.
//

import SwiftUI

struct ProfileView: View {
    @State var selectedFilter: TweetFilterViewModel = .tweets
    @Environment(\.presentationMode) var mode
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            
            actionButtons
            
            userInfoDetail
            
            filterBar
            
            tweetScrollView
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
