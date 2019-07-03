//
//  Cell.swift
//  SwiftBookApp
//
//  Created by Jack Sp@rroW on 18.06.2019.
//  Copyright © 2019 Jack Sp@rroW. All rights reserved.
//

import SwiftUI

struct Cell : View {
    
    var user: UserResponse
    
    var body: some View {
        VStack(spacing: 8.0) {
            TopView(user: user)
            Text(user.text)
                .lineLimit(nil)
        }
        .padding()
    }
}

#if DEBUG
struct Cell_Previews : PreviewProvider {
    static var previews: some View {
        Cell(user: userResponse[0])
    }
}
#endif
