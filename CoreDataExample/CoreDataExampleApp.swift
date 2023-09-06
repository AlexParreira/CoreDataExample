//
//  CoreDataExampleApp.swift
//  CoreDataExample
//
//  Created by Alexander Parreira on 06/09/23.
//

import SwiftUI

@main
struct CoreDataExampleApp: App {
    @StateObject private var dataCotroller = DataControlle()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext,dataCotroller.conteiner.viewContext)
        }
    }
}
