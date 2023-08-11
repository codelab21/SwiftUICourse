//
//  SideBar.swift
//  SwiftUICourse
//
//  Created by Eymen on 11.08.2023.
//

import SwiftUI

struct SideBar: View {
    @ObservedObject var viewModel = CourseViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.CourseTutorials, id: \.id) { CourseTutorial in
                NavigationLink {
                    CourseTutorial.destinationView
                } label: {
                    Text(CourseTutorial.name)
                }
            }
            .navigationTitle("Tutorial List")
        }
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
