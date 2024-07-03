//
//  MainTabView.swift
//  SocialMedia
//
//  Created by Montserrat Gomez on 03/07/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
		TabView {
			Text("Feed")
				.tabItem {
					Image(systemName: "house")
				}
			Text("Search")
				.tabItem {
					Image(systemName: "magnifyingglass")
				}
			Text("Post")
				.tabItem {
					Image(systemName: "plus.circle")
				}
			Text("Notifications")
				.tabItem {
					Image(systemName: "bell")
				}
			ProfileView()
				.tabItem {
					Image(systemName: "person")
				}
			
		}
    }
}

#Preview {
    MainTabView()
}
