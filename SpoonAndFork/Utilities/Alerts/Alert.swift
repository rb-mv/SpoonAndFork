//
//  Alert.swift
//  SpoonAndFork
//
//  Created by Раджаб Магомедов on 17.03.2025.
//

import SwiftUI


struct AlertItem: Identifiable {
    let id = UUID()
    
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}



struct AlertContext {
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                              message: Text("There war the error connecting to the server. If this persists, please contact support"),
                                              dismissButton: .default(Text("OK")))
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                              message: Text("The data received from the sever was invalid. Please contact support"),
                                              dismissButton: .default(Text("OK")))
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                              message: Text("Invalid response from server. Please try again later."),
                                              dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to complete your request now. Please try again later."),
                                              dismissButton: .default(Text("OK")))
}

