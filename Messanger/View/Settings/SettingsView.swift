//
//  SettingsView.swift
//  Messanger
//
//  Created by User on 28.12.2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
		NavigationView {
				VStack {
					Image("avatar")
						.clipShape(Circle())
					
					Text("0xYanis 🤠")
						.font(.title).bold()
					
					Text("+7 333 777 1337 @Yanix0").bold()
						.foregroundColor(Color(.systemGray))
					
					SettingsListView()
				}

				.navigationBarItems(
					leading:
						Button(action: {
							// some code
						}) {
							Image(systemName: "qrcode")
						},
					trailing:
						Button("Edit") {
							// some code
						}
				)
		}
	}
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
