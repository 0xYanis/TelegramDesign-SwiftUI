//
//  CallsView.swift
//  Messanger
//
//  Created by User on 28.12.2022.
//

import SwiftUI

struct CallsView: View {
	
	@State private var mode: Int = 0
	
    var body: some View {
		NavigationView {
			VStack {
				Group {
					Text("Your recent voice and video")
					Text("calls will appear here.")
				}
				.foregroundColor(Color(.systemGray))
			}
			.toolbar {
				ToolbarItem(placement: .principal) {
					Picker("Color", selection: $mode) {
						Text("All").tag(0)
						Text("Missed").tag(1)
					}
					.pickerStyle(SegmentedPickerStyle())
					.frame(width: 150)
				}
			}
			
			.navigationBarItems(
				leading:
					Button("Edit") {
						// some code
					},
				trailing:
					Button(action: {
						// some code
					}) {
						Image(systemName: "phone.arrow.up.right")
						
					}
			)
		}
    }
}

struct CallsView_Previews: PreviewProvider {
    static var previews: some View {
        CallsView()
    }
}
