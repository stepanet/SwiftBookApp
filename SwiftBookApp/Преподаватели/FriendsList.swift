//
//  FriendsList.swift
//  SwiftBookApp
//
//  Created by Jack Sp@rroW on 19.06.2019.
//  Copyright © 2019 Jack Sp@rroW. All rights reserved.
//

import SwiftUI

struct FriendsList : View {
    var body: some View {
        NavigationView {
            List(userResponse) { user in
                Cell(user: user)
            }
            .navigationBarTitle(Text("Friends"))
        }
    }
}

#if DEBUG
struct FriendsList_Previews : PreviewProvider {
    static var previews: some View {
        FriendsList()
    }
}
#endif
