//
//  Array+Only.swift
//  memorize
//
//  Created by Dr. Andreas Plagens on 13.04.21.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first: nil
    }
}
