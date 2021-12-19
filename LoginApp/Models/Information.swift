//
//  Information.swift
//  LoginApp
//
//  Created by Alex Kulish on 19.12.2021.
//

struct User {
    let person: Person
    
    static func getPerson() -> Person {
        Person(login: "User",
               password: "qwerty",
               name: "Alexey Kulish",
               age: 28,
               university: "Moscow Automobile and Road Construction State Technical University",
               education: "Master's Degree in Human Resources Management",
               hobby: "Football",
               prevJob: "Hello tech")
    }
}

struct Person {
    let login: String
    let password: String
    let name: String
    let age: Int
    let university: String
    let education: String
    let hobby: String
    let prevJob: String
}
