//
//  ProductItem.swift
//  SwiftBookApp
//
//  Created by Jack Sp@rroW on 19.06.2019.
//  Copyright © 2019 Jack Sp@rroW. All rights reserved.
//

import SwiftUI

struct ProductItem : View {
    
    var object: ProductsResponse
    
    var body: some View {
        VStack {
            Image(object.image)
                .resizable()
                .frame(width: 170, height: 170)
                .cornerRadius(12)
            }.padding(.leading, 15)
    }
}

#if DEBUG
struct ProductItem_Previews : PreviewProvider {
    static var previews: some View {
        ProductItem(object: materialResponse[2])
    }
}
#endif
