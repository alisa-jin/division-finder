//
//  DivisionManager.swift
//  DivisionFinder
//

import Foundation

struct DivisionManager {
    let belt: String
    let gender: String
    let age: Int
    
    let sparringDivision: [Division] = [
        Division(name: "K-1", minAge: 0, maxAge: 7, gender: "All", beltColor: "WYO"),
        Division(name: "K-2", minAge: 0, maxAge: 7, gender: "All", beltColor: "PGB"),
        Division(name: "K-3", minAge: 0, maxAge: 7, gender: "All", beltColor: "BR"),
        
        Division(name: "K-4", minAge: 8, maxAge: 9, gender: "Male", beltColor: "WYO"),
        Division(name: "K-5", minAge: 8, maxAge: 9, gender: "Male", beltColor: "PGB"),
        Division(name: "K-6", minAge: 8, maxAge: 9, gender: "Male", beltColor: "BR"),
        Division(name: "K-7", minAge: 8, maxAge: 9, gender: "Female", beltColor: "WYO"),
        Division(name: "K-8", minAge: 8, maxAge: 9, gender: "Female", beltColor: "PGB"),
        Division(name: "K-9", minAge: 8, maxAge: 9, gender: "Female", beltColor: "BR"),
        
        Division(name: "K-10", minAge: 10, maxAge: 11, gender: "Male", beltColor: "WYO"),
        Division(name: "K-11", minAge: 10, maxAge: 11, gender: "Male", beltColor: "PGB"),
        Division(name: "K-12", minAge: 10, maxAge: 11, gender: "Male", beltColor: "BR"),
        Division(name: "K-13", minAge: 10, maxAge: 11, gender: "Female", beltColor: "WYO"),
        Division(name: "K-14", minAge: 10, maxAge: 11, gender: "Female", beltColor: "PGB"),
        Division(name: "K-15", minAge: 10, maxAge: 11, gender: "Female", beltColor: "BR"),
        
        Division(name: "K-16", minAge: 12, maxAge: 14, gender: "Male", beltColor: "WYO"),
        Division(name: "K-17", minAge: 12, maxAge: 14, gender: "Male", beltColor: "PGB"),
        Division(name: "K-18", minAge: 12, maxAge: 14, gender: "Male", beltColor: "BR"),
        Division(name: "K-19", minAge: 12, maxAge: 14, gender: "Female", beltColor: "WYO"),
        Division(name: "K-20", minAge: 12, maxAge: 14, gender: "Female", beltColor: "PGB"),
        Division(name: "K-21", minAge: 12, maxAge: 14, gender: "Female", beltColor: "BR"),
        
        Division(name: "K-22", minAge: 15, maxAge: 17, gender: "Male", beltColor: "WYO"),
        Division(name: "K-23", minAge: 15, maxAge: 17, gender: "Male", beltColor: "PGB"),
        Division(name: "K-24", minAge: 15, maxAge: 17, gender: "Male", beltColor: "BR"),
        Division(name: "K-25", minAge: 15, maxAge: 17, gender: "Female", beltColor: "WYO"),
        Division(name: "K-26", minAge: 15, maxAge: 17, gender: "Female", beltColor: "PGB"),
        Division(name: "K-27", minAge: 15, maxAge: 17, gender: "Female", beltColor: "BR"),
        
        Division(name: "K-28", minAge: 18, maxAge: 32, gender: "Male", beltColor: "WYO"),
        Division(name: "K-29", minAge: 18, maxAge: 32, gender: "Male", beltColor: "PGB"),
        Division(name: "K-30", minAge: 18, maxAge: 32, gender: "Male", beltColor: "BR"),
        Division(name: "K-31", minAge: 18, maxAge: 32, gender: "Female", beltColor: "WYO"),
        Division(name: "K-32", minAge: 18, maxAge: 32, gender: "Female", beltColor: "PGB"),
        Division(name: "K-33", minAge: 18, maxAge: 32, gender: "Female", beltColor: "BR"),
        
        Division(name: "K-34", minAge: 33, maxAge: 100, gender: "Male", beltColor: "WYO"),
        Division(name: "K-35", minAge: 33, maxAge: 100, gender: "Male", beltColor: "PGB"),
        Division(name: "K-36", minAge: 33, maxAge: 100, gender: "Male", beltColor: "BR"),
        Division(name: "K-37", minAge: 33, maxAge: 100, gender: "Female", beltColor: "WYO"),
        Division(name: "K-38", minAge: 33, maxAge: 100, gender: "Female", beltColor: "PGB"),
        Division(name: "K-39", minAge: 33, maxAge: 100, gender: "Female", beltColor: "BR"),
    ]
    
    
    
    let poomsaeDivision: [Division] = [
        Division(name: "P-1", minAge: 0, maxAge: 5, gender: "All", beltColor: "WYO"),
        Division(name: "P-2", minAge: 0, maxAge: 5, gender: "All", beltColor: "PGB"),
        Division(name: "P-3", minAge: 0, maxAge: 5, gender: "All", beltColor: "BR"),
        
        Division(name: "P-4", minAge: 6, maxAge: 7, gender: "All", beltColor: "WYO"),
        Division(name: "P-5", minAge: 6, maxAge: 7, gender: "All", beltColor: "PGB"),
        Division(name: "P-6", minAge: 6, maxAge: 7, gender: "All", beltColor: "BR"),
        
        
        Division(name: "P-7", minAge: 8, maxAge: 9, gender: "All", beltColor: "WYO"),
        Division(name: "P-8", minAge: 8, maxAge: 9, gender: "All", beltColor: "PGB"),
        Division(name: "P-9", minAge: 8, maxAge: 9, gender: "All", beltColor: "BR"),
        
        Division(name: "P-10", minAge: 10, maxAge: 11, gender: "All", beltColor: "WYO"),
        Division(name: "P-11", minAge: 10, maxAge: 11, gender: "All", beltColor: "PGB"),
        Division(name: "P-12", minAge: 10, maxAge: 11, gender: "All", beltColor: "BR"),
        
        Division(name: "P-13", minAge: 12, maxAge: 14, gender: "Male", beltColor: "WYO"),
        Division(name: "P-14", minAge: 12, maxAge: 14, gender: "Male", beltColor: "PGB"),
        Division(name: "P-15", minAge: 12, maxAge: 14, gender: "Male", beltColor: "BR"),
        Division(name: "P-16", minAge: 12, maxAge: 14, gender: "Female", beltColor: "WYO"),
        Division(name: "P-17", minAge: 12, maxAge: 14, gender: "Female", beltColor: "PGB"),
        Division(name: "P-18", minAge: 12, maxAge: 14, gender: "Female", beltColor: "BR"),
        
        Division(name: "P-19", minAge: 15, maxAge: 17, gender: "Male", beltColor: "WYO"),
        Division(name: "P-20", minAge: 15, maxAge: 17, gender: "Male", beltColor: "PGB"),
        Division(name: "P-21", minAge: 15, maxAge: 17, gender: "Male", beltColor: "BR"),
        Division(name: "P-22", minAge: 15, maxAge: 17, gender: "Female", beltColor: "WYO"),
        Division(name: "P-23", minAge: 15, maxAge: 17, gender: "Female", beltColor: "PGB"),
        Division(name: "P-24", minAge: 15, maxAge: 17, gender: "Female", beltColor: "BR"),
        
        Division(name: "P-25", minAge: 18, maxAge: 30, gender: "Male", beltColor: "WYO"),
        Division(name: "P-26", minAge: 18, maxAge: 30, gender: "Male", beltColor: "PGB"),
        Division(name: "P-27", minAge: 18, maxAge: 30, gender: "Male", beltColor: "BR"),
        Division(name: "P-28", minAge: 18, maxAge: 30, gender: "Female", beltColor: "WYO"),
        Division(name: "P-29", minAge: 18, maxAge: 30, gender: "Female", beltColor: "PGB"),
        Division(name: "P-30", minAge: 18, maxAge: 30, gender: "Female", beltColor: "BR"),
        
        Division(name: "P-31", minAge: 31, maxAge: 100, gender: "Male", beltColor: "WYO"),
        Division(name: "P-32", minAge: 31, maxAge: 100, gender: "Male", beltColor: "PGB"),
        Division(name: "P-33", minAge: 31, maxAge: 100, gender: "Male", beltColor: "BR"),
        Division(name: "P-34", minAge: 31, maxAge: 100, gender: "Female", beltColor: "WYO"),
        Division(name: "P-35", minAge: 31, maxAge: 100, gender: "Female", beltColor: "PGB"),
        Division(name: "P-36", minAge: 31, maxAge: 100, gender: "Female", beltColor: "BR"),
    ]
    
    let powerHandBrakingDivision: [Division] = [
        Division(name: "HB-1", minAge: 0, maxAge: 7, gender: "All", beltColor: "WYO"),
        Division(name: "HB-2", minAge: 0, maxAge: 7, gender: "All", beltColor: "PGB"),
        Division(name: "HB-3", minAge: 0, maxAge: 7, gender: "All", beltColor: "BR"),
        Division(name: "HB-4", minAge: 0, maxAge: 7, gender: "All", beltColor: "B"),
        
        
        Division(name: "HB-5", minAge: 8, maxAge: 11, gender: "All", beltColor: "WYO"),
        Division(name: "HB-6", minAge: 8, maxAge: 11, gender: "All", beltColor: "PGB"),
        Division(name: "HB-7", minAge: 8, maxAge: 11, gender: "All", beltColor: "BR"),
        Division(name: "HB-8", minAge: 8, maxAge: 11, gender: "All", beltColor: "B"),
        
        Division(name: "HB-9", minAge: 12, maxAge: 14, gender: "All", beltColor: "WYO"),
        Division(name: "HB-10", minAge: 12, maxAge: 14, gender: "All", beltColor: "PGB"),
        Division(name: "HB-11", minAge: 12, maxAge: 14, gender: "All", beltColor: "BR"),
        Division(name: "HB-12", minAge: 12, maxAge: 14, gender: "All", beltColor: "B"),
        
        Division(name: "HB-13", minAge: 15, maxAge: 100, gender: "All", beltColor: "WYO"),
        Division(name: "HB-14", minAge: 15, maxAge: 100, gender: "All", beltColor: "PGB"),
        Division(name: "HB-15", minAge: 15, maxAge: 100, gender: "All", beltColor: "BR"),
        Division(name: "HB-16", minAge: 15, maxAge: 100, gender: "All", beltColor: "B"),
    ]
    

    let openPoomsaeDivision: [Division] = [
        Division(name: "O-1", minAge: 0, maxAge: 7, gender: "All", beltColor: "WYO"),
        Division(name: "O-2", minAge: 0, maxAge: 7, gender: "All", beltColor: "PGB"),
        Division(name: "O-3", minAge: 0, maxAge: 7, gender: "All", beltColor: "BR"),
        
        Division(name: "O-4", minAge: 8, maxAge: 10, gender: "All", beltColor: "WYO"),
        Division(name: "O-5", minAge: 8, maxAge: 10, gender: "All", beltColor: "PGB"),
        Division(name: "O-6", minAge: 8, maxAge: 10, gender: "All", beltColor: "BR"),
        Division(name: "O-7", minAge: 8, maxAge: 10, gender: "All", beltColor: "B"),
        
        Division(name: "O-8", minAge: 11, maxAge: 13, gender: "All", beltColor: "WYO"),
        Division(name: "O-9", minAge: 11, maxAge: 13, gender: "All", beltColor: "PGB"),
        Division(name: "O-10", minAge: 11, maxAge: 13, gender: "All", beltColor: "BR"),
        Division(name: "O-11", minAge: 11, maxAge: 13, gender: "All", beltColor: "B"),
        
        Division(name: "O-12", minAge: 14, maxAge: 17, gender: "Male", beltColor: "WYO"),
        Division(name: "O-13", minAge: 14, maxAge: 17, gender: "Male", beltColor: "PGB"),
        Division(name: "O-14", minAge: 14, maxAge: 17, gender: "Male", beltColor: "BR"),
        Division(name: "O-15", minAge: 14, maxAge: 17, gender: "Male", beltColor: "B"),
        Division(name: "O-16", minAge: 14, maxAge: 17, gender: "Female", beltColor: "WYO"),
        Division(name: "O-17", minAge: 14, maxAge: 17, gender: "Female", beltColor: "PGB"),
        Division(name: "O-18", minAge: 14, maxAge: 17, gender: "Female", beltColor: "BR"),
        Division(name: "O-19", minAge: 14, maxAge: 17, gender: "Female", beltColor: "B"),
        
        
        Division(name: "O-20", minAge: 18, maxAge: 100, gender: "Male", beltColor: "WYO"),
        Division(name: "O-21", minAge: 18, maxAge: 100, gender: "Male", beltColor: "PGB"),
        Division(name: "O-22", minAge: 18, maxAge: 100, gender: "Male", beltColor: "BR"),
        Division(name: "O-23", minAge: 18, maxAge: 100, gender: "Male", beltColor: "B"),
        Division(name: "O-24", minAge: 18, maxAge: 100, gender: "Female", beltColor: "WYO"),
        Division(name: "O-25", minAge: 18, maxAge: 100, gender: "Female", beltColor: "PGB"),
        Division(name: "O-26", minAge: 18, maxAge: 100, gender: "Female", beltColor: "BR"),
        Division(name: "O-27", minAge: 18, maxAge: 100, gender: "Female", beltColor: "B"),
    ]
    
    let weaponDivision: [Division] = [
        Division(name: "W-1", minAge: 0, maxAge: 7, gender: "All", beltColor: "WYO"),
        Division(name: "W-2", minAge: 0, maxAge: 7, gender: "All", beltColor: "PGB"),
        Division(name: "W-3", minAge: 0, maxAge: 7, gender: "All", beltColor: "BR"),
        
        Division(name: "W-4", minAge: 8, maxAge: 10, gender: "All", beltColor: "WYO"),
        Division(name: "W-5", minAge: 8, maxAge: 10, gender: "All", beltColor: "PGB"),
        Division(name: "W-6", minAge: 8, maxAge: 10, gender: "All", beltColor: "BR"),
        Division(name: "W-7", minAge: 8, maxAge: 10, gender: "All", beltColor: "B"),
        
        Division(name: "W-8", minAge: 11, maxAge: 13, gender: "All", beltColor: "WYO"),
        Division(name: "W-9", minAge: 11, maxAge: 13, gender: "All", beltColor: "PGB"),
        Division(name: "W-10", minAge: 11, maxAge: 13, gender: "All", beltColor: "BR"),
        Division(name: "W-11", minAge: 11, maxAge: 13, gender: "All", beltColor: "B"),
        
        Division(name: "W-12", minAge: 14, maxAge: 17, gender: "Male", beltColor: "WYO"),
        Division(name: "W-13", minAge: 14, maxAge: 17, gender: "Male", beltColor: "PGB"),
        Division(name: "W-14", minAge: 14, maxAge: 17, gender: "Male", beltColor: "BR"),
        Division(name: "W-15", minAge: 14, maxAge: 17, gender: "Male", beltColor: "B"),
        Division(name: "W-16", minAge: 14, maxAge: 17, gender: "Female", beltColor: "WYO"),
        Division(name: "W-17", minAge: 14, maxAge: 17, gender: "Female", beltColor: "PGB"),
        Division(name: "W-18", minAge: 14, maxAge: 17, gender: "Female", beltColor: "BR"),
        Division(name: "W-19", minAge: 14, maxAge: 17, gender: "Female", beltColor: "B"),
        
        Division(name: "W-20", minAge: 18, maxAge: 100, gender: "Male", beltColor: "WYO"),
        Division(name: "W-21", minAge: 18, maxAge: 100, gender: "Male", beltColor: "PGB"),
        Division(name: "W-22", minAge: 18, maxAge: 100, gender: "Male", beltColor: "BR"),
        Division(name: "W-23", minAge: 18, maxAge: 100, gender: "Male", beltColor: "B"),
        Division(name: "W-24", minAge: 18, maxAge: 100, gender: "Female", beltColor: "WYO"),
        Division(name: "W-25", minAge: 18, maxAge: 100, gender: "Female", beltColor: "PGB"),
        Division(name: "W-26", minAge: 18, maxAge: 100, gender: "Female", beltColor: "BR"),
        Division(name: "W-27", minAge: 18, maxAge: 100, gender: "Female", beltColor: "B"),
    ]
    
    let threeBreakingDivision: [Division] = [
        Division(name: "DB-1", minAge: 0, maxAge: 7, gender: "All", beltColor: "WYO"),
        Division(name: "DB-2", minAge: 0, maxAge: 7, gender: "All", beltColor: "PGB"),
        Division(name: "DB-3", minAge: 0, maxAge: 7, gender: "All", beltColor: "BR"),
        Division(name: "DB-4", minAge: 0, maxAge: 7, gender: "All", beltColor: "B"),
        
        Division(name: "DB-5", minAge: 8, maxAge: 11, gender: "All", beltColor: "WYO"),
        Division(name: "DB-6", minAge: 8, maxAge: 11, gender: "All", beltColor: "PGB"),
        Division(name: "DB-7", minAge: 8, maxAge: 11, gender: "All", beltColor: "BR"),
        Division(name: "DB-8", minAge: 8, maxAge: 11, gender: "All", beltColor: "B"),
        
        Division(name: "DB-9", minAge: 12, maxAge: 14, gender: "All", beltColor: "WYO"),
        Division(name: "DB-10", minAge: 12, maxAge: 14, gender: "All", beltColor: "PGB"),
        Division(name: "DB-11", minAge: 12, maxAge: 14, gender: "All", beltColor: "BR"),
        Division(name: "DB-12", minAge: 12, maxAge: 14, gender: "All", beltColor: "B"),
        
        Division(name: "DB-13", minAge: 15, maxAge: 100, gender: "All", beltColor: "WYO"),
        Division(name: "DB-14", minAge: 15, maxAge: 100, gender: "All", beltColor: "PGB"),
        Division(name: "DB-15", minAge: 15, maxAge: 100, gender: "All", beltColor: "BR"),
        Division(name: "DB-16", minAge: 15, maxAge: 100, gender: "All", beltColor: "B"),
    ]
    
    
    var beltCode: String {
        if belt == "White" || belt == "Yellow" || belt == "Orange" {
            return "WYO"
        } else if belt == "Purple" || belt == "Green" || belt == "Blue" {
            return "PGB"
        } else if belt == "Brown" || belt == "Red" {
            return "BR"
        } else {
            return "B"
        }
    }

    func findDivision(divisions: [Division]) -> [Division] {
        return divisions.filter { division in
            let ageMatches = age >= division.minAge && age <= division.maxAge
            let genderMatches = division.gender == "All" || division.gender == gender
            let beltColorMatches = beltCode == division.beltColor
            return ageMatches && genderMatches && beltColorMatches
        }
    }
    
    
    func findPoomsae() -> String {
        let poomsae = findDivision(divisions: poomsaeDivision)
        return "\(poomsae[0].name) Regular Poomsae"
    }
    
    func findSparring() -> String {
        let sparring = findDivision(divisions: sparringDivision)
        return "\(sparring[0].name) Sparring"
    }
    
    func findPowerBreaking() -> String {
        let powerBreaking = findDivision(divisions: powerHandBrakingDivision)
        return "\(powerBreaking[0].name) Power Hand Breaking"
    }
    
    func findOpenPoomsae() -> String {
        let openPoomsae = findDivision(divisions: openPoomsaeDivision)
        return "\(openPoomsae[0].name) Open Poomsae"
    }
    
    func findWeapon() -> String {
        let weapon = findDivision(divisions: weaponDivision)
        return "\(weapon[0].name) Weapons Forms"
    }
    
    func findThreeBreaking() -> String {
        let threeBreaking = findDivision(divisions: threeBreakingDivision)
        return "\(threeBreaking[0].name) 3 Directional Breaking"
    }
}


struct Division {
    let name: String
    let minAge: Int
    let maxAge: Int
    let gender: String
    let beltColor: String
}
