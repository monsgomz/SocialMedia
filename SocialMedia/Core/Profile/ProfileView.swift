//
//  ProfileView.swift
//  SocialMedia
//
//  Created by Montserrat Gomez on 03/07/24.
//

import SwiftUI

struct ProfileView: View {
	private let columns : [GridItem] = [.init(.flexible(), spacing: 1),
		.init(.flexible(), spacing: 1),
		.init(.flexible(), spacing: 1),]
	
	var body: some View {
		NavigationStack {
			ScrollView {
				VStack(alignment: .center){
					///Header
					Header()
					
					///Grid
					LazyVGrid(columns: columns, content: {
						
						ForEach(1 ... 7, id: \.self) { index in
							
							Image("image\(index)")
								.resizable()
								.scaledToFit()
								.frame(width: 100, height: 100, alignment: .center)
						}

					
						
					})
					
				}
			}
			.toolbar {
				ToolbarItem (placement: .principal){
					Text("Profile")
						.bold()
				}
				
				ToolbarItem (placement: .topBarTrailing){
					Image(systemName: "line.3.horizontal")
						.bold()
				}
				
			}
		}
		
	}
}

#Preview {
	ProfileView()
}

struct Header: View {
	var body: some View {
		VStack (alignment: .center){
			
			VStack (alignment: .leading, spacing: 8){
				
				HStack(alignment: .center, spacing: 5){
					
					Image("harry")
						.resizable()
						.scaledToFit()
						.frame(width: 100, height: 100, alignment: .center)
						.clipShape(Circle())
					
					Spacer()
					
					HStack(spacing: 18) {
						ColumnView(number: 12, text: "posts")
						
						ColumnView(number: 8, text: "followers")
						
						ColumnView(number: 10, text: "following")
					}
				}
				.padding(.horizontal)
				
				VStack(alignment: .leading, spacing: 5){
					Text("Nombre profile")
					Text("Username")
						.fontWeight(.regular)
				}
				.font(.headline)
				.padding()
				.padding(.top, 0)
			
			}
			
			///Boton edit profile
			Button{
			} label: {
				Text("Edit profile")
			}
			.font(.headline)
			.foregroundStyle(Color.black)
			.fontWeight(.semibold)
			.frame(width: 360, height: 35, alignment: .center)
			.overlay{
				RoundedRectangle(cornerRadius: 10.0)
					.stroke(lineWidth: 1.0)
			}
			
			Divider()
		}
		
	}
}

struct ColumnView: View {
	let number: Int
	let text: String
	var body: some View {
		VStack{
			Text("\(number)")
			Text("\(text)")
				.fontWeight(.regular)
		}
		.font(.headline)
	}
}
