//
//  DraggableRect.swift
//  DSPs
//
//  Created by choijunios on 4/26/25.
//

import SwiftUI

struct DraggableView: View {
    @Binding var offset: CGSize
    @State private var isFirstMove: Bool = true
    @State private var currentOffset: CGSize
    
    init(offset: Binding<CGSize>) {
        self._offset = offset
        self.currentOffset = offset.wrappedValue
    }

    var body: some View {
        Rectangle()
            .fill(Color.blue)
            .frame(width: 100, height: 100)
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        if isFirstMove {
                            isFirstMove = false
                            currentOffset = offset
                        }
                        
                        let dx = value.location.x - value.startLocation.x
                        let dy = value.location.y - value.startLocation.y
                        offset = .init(
                            width: currentOffset.width+dx,
                            height: currentOffset.height+dy
                        )
                    }
                    .onEnded { _ in
                        isFirstMove = true
                    }
            )
    }
}
