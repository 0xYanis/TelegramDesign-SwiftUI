//
//  MessegeRowView.swift
//  Messanger
//
//  Created by User on 28.12.2022.
//

import SwiftUI

struct MessegeRowView: View {
	var body: some View {
		ForEach(messages) { message in
			VStack(spacing: 25) {
				HStack(spacing: 15) {
					Image(message.fromImage)
						.resizable()
						.aspectRatio(contentMode: .fill)
						.frame(width: 55, height: 55)
						.clipShape(Circle())
					
					VStack(alignment: .leading, spacing: 4) {
						Text(message.fromName)
							.font(.headline)
						
						Text(message.lastMessage)
							.font(.callout)
							.foregroundColor(.gray)
							.lineLimit(2)
					}
					
					Spacer()
					
					VStack(alignment: .trailing, spacing: 8) {
						HStack(spacing: 8) {
							if message.seen {
								ZStack {
									Image(systemName: "checkmark")
									
									Image(systemName: "checkmark")
										.offset(x: 4)
								}
								.font(.caption)
								.foregroundColor(Color.green)
							}
							
							Text(message.time)
								.font(.footnote.bold())
								.foregroundColor(Color(.black))
						}
						
						if message.count > 0 {
							Circle()
								.fill(Color(.gray))
								.frame(width: 21, height: 21)
								.overlay(
									Text("\(message.count)")
										.font(.caption)
										.foregroundColor(Color.white)
								)
						}
					}
				}
			}
		}
		.padding(.horizontal)
	}
}


struct MessegeRowView_Previews: PreviewProvider {
    static var previews: some View {
        MessegeRowView()
    }
}
