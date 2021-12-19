//
//  Information.swift
//  LoginApp
//
//  Created by Alex Kulish on 19.12.2021.
//

struct User {
    let person: Person
    
    static func getPerson() -> Person {
        Person(
            login: "Alex",
            password: "qwerty",
            name: "Alexey Kulish",
            age: 28,
            university: "Moscow Automobile and Road Construction State Technical University",
            education: "Master's Degree in Human Resources Management",
            hobbyOne: "Football ⚽️",
            hobbyTwo: "Guitar 🎸",
            hobbyThree: "PC games 🎮",
            prevJob: "My previous job is Hello tech. IT Recruitment agency 🏆",
            newInterest: "My new favourite interest is Swift! Swift! Swift! ❤️ "
        )
    }
}

struct Person {
    let login: String
    let password: String
    let name: String
    let age: Int
    let university: String
    let education: String
    let hobbyOne: String
    let hobbyTwo: String
    let hobbyThree: String
    let prevJob: String
    let newInterest: String
}
