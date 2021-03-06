//
//  GraphDateTitleFormatter.swift
//  MyDietDiaryApp1
//
//  Created by inomata on 2021/09/10.
//

import Foundation
import Charts

class GraphDateTitleFormatter: IAxisValueFormatter {
    
    var dateList: [Date] = []
    
    func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        let index = Int(value)
        guard dateList.count > index else { return ""}
        let targetDate = dateList[index]
        let formatter = DateFormatter()
        let dateFormatString = "M/d"
        formatter.dateFormat = dateFormatString
        return formatter.string(from: targetDate)
    }
}
