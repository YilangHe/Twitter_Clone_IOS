//
//  SideMenuViewModel.swift
//  Twitter_Clone
//
//  Created by 何逸朗 on 6/21/22.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case lists
    case bookmarkds
    case logout
    
    var description: String {
        switch self {
        case .profile: return "Profile"
        case .lists : return "Lists"
        case .bookmarkds : return "Bookmarks"
        case .logout : return "Logout"
        }
    }
}
