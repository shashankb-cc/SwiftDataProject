//
//  UsersView.swift
//  SwiftDataProject
//
//  Created by Shashank B on 28/02/25.
//

import SwiftUI
import SwiftData

struct UsersView: View {
    @Query var users: [User]

    init(minimumJoinDate: Date) {
        _users = Query(filter: #Predicate<User> { user in
            user.joinDate >= minimumJoinDate
        }, sort: \User.name)
    }
    
    var body: some View {
        List(users) { user in
            Text(user.name)
        }
    }
}

#Preview {
    UsersView(minimumJoinDate: .now)
        .modelContainer(for: User.self)
}
