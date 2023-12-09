//
//  dataStruct.swift
//  BookManagement
//
//  Created by Michael233 on 2023/12/9.
//

import Foundation

struct ReaderInfo {
    var readerID: Int
    var identity: String
    var readerName: String
    var readerGender: Int
    var department: String
    var telphone1: String
    var telphone2: String
    var telphone3: String
    var illegalTime: Int
    var registerTime: Date
    var timeTo: Date
    var remark: String
}

struct IdentityInfo {
    var identityName: String
    var borrowLimit: Int
    var timeLimit: Date
}

struct PublisherInfo {
    var publishName: String
    var publishProvince: String
    var publishCity: String
    var publishDistrict: String
    var publishStreet: String
    var publishNumber: String
    var publishPerson: String
    var telphone1: String
    var telphone2: String
    var telphone3: String
}

struct BookBasicInfo {
    var isbn: String
    var bookName: String
    var bookAuthor: String
    var
}
