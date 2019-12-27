//
//  DatePickerSample.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/27.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI
import Combine

struct DatePickerSample: View {
    
    @ObservedObject var server = DateServer()
    var speaceDate: Range<Date>?
    
    init() {

    }
    
    var body: some View {
        VStack {
            VStack(spacing: 10) {
                Text("选择日期: \(server.date.datetime())")
                DatePicker(selection: $server.date, in: server.speaceDate, displayedComponents: .date) {
                    Text("")
                }
            }
        }.padding(.top)
        .navigationBarTitle("DatePicker")
    }
    
    class DateServer: ObservableObject {
        var didChange = PassthroughSubject<DateServer, Never>()
        var date: Date = Date() {
            didSet {
                didChange.send(self)
                debugPrint("当前日期:\(date.datetime())")
            }
        }
        
        var speaceDate: ClosedRange<Date> {
            let now = Calendar.current.date(byAdding: .year, value: -1, to: date) ?? Date()
            let later = Calendar.current.date(byAdding: .year, value: 1, to: date) ?? Date()
            let speaceDate = now...later
            return speaceDate
        }
    }
    
}

#if DEBUG

struct DatePickerSample_Previews: PreviewProvider {
    
    static var previews: some View {
        DatePickerSample()
    }
}

#endif
