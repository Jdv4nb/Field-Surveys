//
//  FieldSurveysJSONParser.swift
//  Field Surveys
//
//  Created by Jonathan Van Egeren on 5/1/20.
//  Copyright © 2020 Jonathan Van Egeren. All rights reserved.
//

import Foundation

class FieldSurveysJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    func parse(_ data: Data) -> [FieldSurvey] {
        var fieldSurveys = [FieldSurvey]()
        FieldSurveysJSONParser.dateFormatter.dateFormat = "YYYY-MM-DDTHH:MM:SSZ"
        
        if let json = try? JSONSerialization.jsonObject(with: <#T##Data#>, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            
            if let observations = root["observations"] as? [Any] {
                for observation in observations {
                    if let observation = observation as? [String: String] {
                        if let classificationName = observation["classification"],
                        let title = observation["title"],
                        let description = observation["description"],
                            let dateString = observation["date"],
                            let date = FieldSurveysJSONParser.dateFormatter.date(from: dateString) {
                                
                            if let fieldSurvey = FieldSurvey(classificationName: classificationName, title: title, description: description, date: date) {
                                fieldSurveys.append(fieldSurvey)
                            }
                            }
                        }
                    }
                }
            }
            
        
        
        return fieldSurveys
    }
}
