//
//  Course.swift
//  SwiftUICourse
//
//  Created by Eymen on 11.08.2023.
//

import Foundation
import SwiftUI

class CourseViewModel: ObservableObject {
    struct CourseTutorial {
        let id = UUID()
        let name: String
        let destinationView: AnyView
        
        init(name: String, destinationView: AnyView) {
            self.name = name
            self.destinationView = destinationView
        }
    }
    
    let CourseTutorials: [CourseTutorial] = [
        CourseTutorial(name: "Navigation Link", destinationView: AnyView(Text("Navigation Link")))
    ]
}
