//
//  TopView.swift
//  SwiftBookApp
//
//  Created by Jack Sp@rroW on 18.06.2019.
//  Copyright © 2019 Jack Sp@rroW. All rights reserved.
//

import SwiftUI

struct TopView : View {
    
    var user: UserResponse
    
    var body: some View { 
        HStack(spacing: 8.0) {
            Image(user.profileImage)
                .resizable()
                .frame(width: 100.0, height: 100.0)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4.0) {
                Text(user.name)
                    .font(.largeTitle)
                    HStack {
                        Text(user.email)
                            .font(.subheadline)
                        Spacer()
                            Image("like")
                            Text(user.likes)
                                .font(.subheadline)
                        }
                    }
                    .padding(0.0)
            }
    }
}

#if DEBUG
struct TopView_Previews : PreviewProvider {
    static var previews: some View {
        TopView(user: userResponse[2])
    }
}
#endif
