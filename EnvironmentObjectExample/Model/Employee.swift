//
//  Employee.swift
//  EnvironmentObjectExample
//
//  Created by Kürşat Şimşek on 23.11.2021.
//

import Foundation

struct Employee: Identifiable {
    var id = UUID()
    var name: String?
    var surname: String?
    var city: String?
    var country: String?
}
