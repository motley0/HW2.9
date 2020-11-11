//
//  Extension + CGFloat.swift
//  HW2.9
//
//  Created by Dmitry Shcherbakov on 11.11.2020.
//

import Foundation


extension CGFloat {
    func discardDigitsAfterDecimalPoint() -> CGFloat {
        round(self * 10) / 10
    }
}
