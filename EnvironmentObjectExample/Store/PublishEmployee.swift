//
//  PublishEmployee.swift
//  EnvironmentObjectExample
//
//  Created by Kürşat Şimşek on 23.11.2021.
//

import Foundation

class PublishEmployee: ObservableObject {
    @Published var employeeModel = Employee()
}
