//
//  UserAPI.swift
//  listAlbum
//
//  Created by isa nur fajar on 06/12/19.
//  Copyright © 2019 isa nur fajar. All rights reserved.
//

import Foundation

class UserAPI {
static func getUsers() -> [User]{
  let user = [
    User(name: "Kelly Goodwin", jobTitle: "Designer", country: "bo"),
    User(name: "Mohammad Hussain", jobTitle: "SEO Specialist", country: "be"),
    User(name: "John Young", jobTitle: "Interactive Designer", country: "af"),
    User(name: "Tamilarasi Mohan", jobTitle: "Architect", country: "al"),
    User(name: "Kim Yu", jobTitle: "Economist", country: "br"),
    User(name: "Derek Fowler", jobTitle: "Web Strategist", country: "ar"),
    User(name: "Shreya Nithin", jobTitle: "Product Designer", country: "az"),
    User(name: "Emily Adams", jobTitle: "Editor", country: "bo"),
    User(name: "Aabidah Amal", jobTitle: "Creative Director", country: "au")
   ]
  return user
 }
}
