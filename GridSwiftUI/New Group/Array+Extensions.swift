//
//  Array+Extensions.swift
//  GridSwiftUI
//
//  Created by Muhammat Rasid Ridho on 14/09/20.
//  Copyright © 2020 Muhammat Rasid Ridho. All rights reserved.
//

import Foundation

extension Array{
    func chunks(size: Int) -> [ArraySlice<Element>] {
        
        var chunks: [ArraySlice<Element>] = [ArraySlice<Element>]()
        for index in stride(from: 0, to: self.count - 1, by: size) {
            
            var chunk = ArraySlice<Element>()
            let end = index + size
            if end >= self.count {
                chunk = self[index..<self.count]
            }else {
                chunk = self[index..<end]
            }
            
            chunks.append(chunk)
            
            if (end + 1) == self.count {
                let remainingChunk = self[end..<self.count]
                chunks.append(remainingChunk)
            }
            
        }
        
        return chunks
    }
}
