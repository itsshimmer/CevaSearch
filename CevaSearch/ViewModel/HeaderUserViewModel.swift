//
//  HeaderUserViewModel.swift
//  CevaSearch
//
//  Created by Rodrigo Kroef Tarouco on 10/05/21.
//

import Foundation

struct DateDisplay {

    func displayYear() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY"
        let yearString = formatter.string(from: date)
        return yearString
    }
    
    func displayMonth() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM"
        let monthString = formatter.string(from: date)
        return monthString
    }

    func displayDay() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd"
        let dayString = formatter.string(from: date)
        return dayString
    }
}
