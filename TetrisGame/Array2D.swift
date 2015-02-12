//
//  Array2D.swift
//  TetrisGame
//
//  Created by Work on 12/02/2015.
//  Copyright (c) 2015 Work. All rights reserved.
//

import Foundation

class Array2D<T> {
    let columns: Int
    let rows: Int
    
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(count:rows * columns, repeatedValue: nil)
    }
        subscript(column: Int, row: Int) -> T? {
            get {
                return array[(row * columns) + column]
            }
            set(newValue) {
                array[(row * columns) + column] = newValue
        }
    }
}
