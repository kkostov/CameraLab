//
//  Example1AppViewModel.swift
//  QrCodeScannerLab
//
//  Created by Konstantin Kostov on 18/09/2021.
//

import SwiftUI

final class Example1AppViewModel: ObservableObject {
    @Published var scannedCode: String = ""
    @Published var showingDetail: Bool = false
    
    func showCode(_ code: String) {
        scannedCode = code
        showingDetail.toggle()
    }
}
