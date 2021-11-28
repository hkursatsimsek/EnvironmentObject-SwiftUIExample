//
//  EmployeeScreen.swift
//  EnvironmentObjectExample
//
//  Created by Kürşat Şimşek on 23.11.2021.
//

import SwiftUI

struct EmployeeScreen: View {
    
    @State private var selection = 0
//    @EnvironmentObject var publishEmployee : PublishEmployee
    @StateObject var publishEmployee : PublishEmployee = PublishEmployee()
    
    var body: some View {
        TabView(selection: $selection) {
            EmployeeListScreen()
                .tabItem{
                    Text("home")
                }.tag(0)
            
            AddEmployeeScreen()
                .tabItem {
                    Text("Add Employee")
                }.tag(1)
        }.environmentObject(publishEmployee)
    }
}

struct EmployeeScreen_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeScreen()
            .environmentObject(PublishEmployee())
    }
}
