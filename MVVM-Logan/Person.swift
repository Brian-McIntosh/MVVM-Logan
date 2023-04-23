//
//  Person.swift
//  MVVM-Logan
//
//  Created by Brian McIntosh on 4/22/23.
//

//import Foundation
import SwiftUI

//THE MODEL
struct Person: Identifiable {
    var id = UUID()
    var name: String
    var email: String
    var phoneNumber: String
}
