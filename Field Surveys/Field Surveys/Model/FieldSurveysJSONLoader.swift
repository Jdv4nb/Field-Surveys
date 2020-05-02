//
//  FieldSurveysJSONLoader.swift
//  Field Surveys
//
//  Created by Jonathan Van Egeren on 5/1/20.
//  Copyright © 2020 Jonathan Van Egeren. All rights reserved.
//

import Foundation

class FieldSurveysJSONLoader {
    
    class func load(fileName: String) -> [FieldSurvey] {
        var observations = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
                observations = FieldSurveysJSONParser.parse(data)
            
        }
        
        return observations
    }
}
