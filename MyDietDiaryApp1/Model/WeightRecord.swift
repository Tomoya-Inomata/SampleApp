//
//  WeightRecord.swift
//  MyDietDiaryApp1
//
//  Created by inomata on 2021/09/06.
//

import Foundation
import RealmSwift

class WeightRecord: Object {
    override static func primaryKey() -> String? {
        return "id"
    }
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var date: Date = Date()
    @objc dynamic var weight: Double = 0
}


