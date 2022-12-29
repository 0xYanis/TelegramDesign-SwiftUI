//
//  MessageListView.swift
//  Messanger
//
//  Created by User on 28.12.2022.
//

import SwiftUI

struct MessageListView: View {
    var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			VStack(spacing: 25) {
				MessegeRowView()
			}
			.padding(.top)
		}
	}
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        MessageListView()
    }
}
