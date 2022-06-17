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
            VStack (alignment: .leading) {
                // Avatar + user info + tweet
                HStack(alignment: .top, spacing: 12) {
                    Circle()
                        .frame(width: 56, height: 56)
                        .foregroundColor(Color(.systemBlue))
                    
                    // User Info and tweet caption
                    VStack (alignment: .leading, spacing: 4) {
                        // User Info
                        HStack {
                            Text("Bruce Sotthin")
                                .font(.subheadline).bold()
                            
                            Text("@batman")
                                .foregroundColor(.gray)
                                .font(.caption)
                            
                            Text("2w")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        
                        // Tweet Caption
                        Text("This is a brand new tweet!")
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                    }
                    
                }
                
                // Action Buttons
                HStack {
                    Button{
                        
                    } label: {
                        Image(systemName: "bubble.left")
                            .font(.subheadline)
                    }
                    Spacer()
                    Button{
                        
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                            .font(.subheadline)
                    }
                    Spacer()
                    Button{
                        
                    } label: {
                        Image(systemName: "heart")
                            .font(.subheadline)
                    }
                    Spacer()
                    Button{
                        
                    } label: {
                        Image(systemName: "bookmark")
                            .font(.subheadline)
                    }
                }
                .padding()
                .foregroundColor(.gray)
            }
            .padding()
            Divider()
        }
        
       
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
