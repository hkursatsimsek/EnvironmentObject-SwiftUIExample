//
//  AddEmployeeScreen.swift
//  EnvironmentObjectExample
//
//  Created by Kürşat Şimşek on 23.11.2021.
//

import SwiftUI

struct AddEmployeeScreen: View {
    
    @State var name: String = ""
    @State var surname: String = ""
    @State var city: String = ""
    @State var country: String = ""
        
    @EnvironmentObject var publishEmployee : PublishEmployee
    
    
    var body: some View {
        Form {
            Section {
                TextField("Name",text: $name)
                TextField("Surname",text: $surname)
                TextField("City",text: $city)
                TextField("Country",text: $country)
            } header: {
                Text("EMPLOYEE")
                    .font(.title2)
                    .multilineTextAlignment(.center)
            }
            
            Section {
                Button("Add Employee") {
                    publishEmployee.employeeModel.name = name
                    publishEmployee.employeeModel.surname = surname
                    publishEmployee.employeeModel.city = city
                    publishEmployee.employeeModel.country = country
                }
            }
        }.environmentObject(publishEmployee)
    }
}
