//
//  MoreDetails.swift
//  Top News
//
//  Created by Shivansh on 24/03/20.
//  Copyright © 2020 Shivansh. All rights reserved.
//

import SwiftUI

struct MoreDetails: View {
    var url:String?
    var body: some View {
        WebView(add: url)
    }
}
