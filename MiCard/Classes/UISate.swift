//
//  UISate.swift
//  miCardAnimation
//
//  Created by Sara_Yang on 2021/1/6.
//  Copyright © 2021 Sara_Yang. All rights reserved.
//

import Foundation
import RxSwift
public class UIState {
    public static var instance: UIState = UIState()
    public var isVertical: BehaviorSubject<Bool> =     BehaviorSubject<Bool>(value: true)
    public var touchPoint: BehaviorSubject<CGPoint> =     BehaviorSubject<CGPoint>(value: CGPoint(x: 0, y: 0))
    public var reset: BehaviorSubject<Bool> =     BehaviorSubject<Bool>(value:false)
    public var release: BehaviorSubject<Bool> = BehaviorSubject<Bool>(value: true)
    public var enterDragingCorner: BehaviorSubject<Corner> = BehaviorSubject<Corner>(value: .none)
    public var flipCard: BehaviorSubject<Bool> = BehaviorSubject<Bool>(value: false)
    
    public func releaseTouch() {
        
        self.release.onNext(true)
    }
    
    public func setFlipCard() {
        self.touchPoint.onNext(CGPoint(x:0, y:0))
        self.flipCard.onNext(true)
    }
    
    public func setTouchPoint(point: CGPoint) {
        self.touchPoint.onNext(point)
        self.release.onNext(false)
        self.reset.onNext(false)
        self.flipCard.onNext(false)
    }
}
