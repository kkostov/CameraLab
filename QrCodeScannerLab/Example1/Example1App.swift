//
//  Example1App.swift
//  QrCodeScannerLab
//
//  Created by Konstantin Kostov on 18/09/2021.
//

import SwiftUI

struct Example1App: View {
    @StateObject var viewModel = Example1AppViewModel()
    
    var body: some View {
        ZStack {
            if !viewModel.showingDetail {
                QrCodeScannerView(supportedBarcodeTypes: [.qr])
                    .found(r: {code in
                        viewModel.showCode(code)
                    })
            }
            
            Text("Find and scan a QR-code")
                .padding()
                .background(Color.gray.opacity(0.6))
        }
        .sheet(isPresented: $viewModel.showingDetail) {
                CodeDetailView(code: viewModel.scannedCode)
        }
    }
}

struct Example1App_Previews: PreviewProvider {
    static var previews: some View {
        Example1App()
    }
}
