//
//  EmployeeListScreen.swift
//  EnvironmentObjectExample
//
//  Created by Kürşat Şimşek on 23.11.2021.
//

import SwiftUI

struct EmployeeListScreen: View {
    @EnvironmentObject var publishEmployee : PublishEmployee
    
    var body: some View {
        VStack{
            if let name = publishEmployee.employeeModel.name {
                Text(name)
            }
        }.environmentObject(publishEmployee)
    }
}

