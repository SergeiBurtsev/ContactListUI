//
//  UserStore.swift
//  ContactListUI
//
//  Created by Serj on 02.08.2023.
//

import Foundation

final class DataStore {
    static let shared = DataStore()
    
    let names = [
    "Anna", "Stas", "Viktoria", "Nikola",
    "Tim", "Daniil", "Martin", "Gomer",
    "Liza", "Marj"
    ]
    
    let surnames = [
    "Simson", "Cook", "Burtsev", "Vasilev",
    "Petters", "Saschenko", "Kazakov", "Stepanov",
    "Cvetkov", "Chulkov"
    ]
    
    let emails = [
    "aaaa@mail.ru", "bbbb@mail.ru", "cccc@mail.ru", "dddd@mail.ru",
    "eeee@mail.ru", "yyyy@mail.ru", "xxxx@mail.ru", "bbbb@mail.ru",
    "ffff@mail.ru", "ssss@mail.ru"
    ]
    
    let phones = [
    "1234567", "4343333", "55522233", "11255114",
    "21341523", "2352342", "234562462", "3236262",
    "31232523", "235236342"
    ]
    
    private init() {}
    
}
