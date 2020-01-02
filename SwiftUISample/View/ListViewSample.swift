//
//  ListViewSample.swift
//  SwiftUISample
//
//  Created by tony on 2019/12/30.
//  Copyright © 2019 tony. All rights reserved.
//

import SwiftUI
import Combine

struct ListViewSample: View {
    
    @ObservedObject var data = ItemDataSource()
    
    var body: some View {
        List {
            ForEach(data.items, id: \.self) { index in
                HStack {
                    Text("Hello List \(index)")
                    Spacer()
                    Text("Subtitle \(index)")
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 15))
                }
                .onTapGesture {
                    debugPrint("tap \(index)")
                }
            }.onDelete(perform: deletePlace)
            .onMove(perform: movePlace)
            
        }.navigationBarTitle("List用法", displayMode: .large)
        .navigationBarItems(trailing: EditButton())
    }
    
    func deletePlace(at offset: IndexSet) {
        if let last = offset.last {
            data.items.remove(at: last)
            data.didChange.send()
            
            debugPrint("数量：\(data.items.count)")
        }
    }
    
    func movePlace(from source: IndexSet, to destination: Int) {
        debugPrint("source: \(source), destination: \(destination)")
    }
    
    class ItemDataSource: ObservableObject {
        
        public var didChange = PassthroughSubject<Void, Never>()
        
        public var items: [Int] {
            didSet {
                didChange.send()
            }
        }
        
        init() {
            self.items = (0..<10).map { $0 }
        }
    }
}

#if DEBUG

struct ListViewSample_Previews: PreviewProvider {
    
    static var previews: some View {
        ListViewSample()
    }
}

#endif

