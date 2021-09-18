//
//  CodeDetailView.swift
//  QrCodeScannerLab
//
//  Created by Konstantin Kostov on 18/09/2021.
//

import SwiftUI

struct CodeDetailView: View {
    let code: String
    
    var body: some View {
        Text("You scanned: \(code)")
    }
}

struct CodeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CodeDetailView(code: "Hello!")
    }
}
