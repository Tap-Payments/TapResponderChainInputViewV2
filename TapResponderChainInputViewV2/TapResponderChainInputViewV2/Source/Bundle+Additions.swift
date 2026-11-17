//
//  Bundle+Additions.swift
//  TapResponderChainInputView
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

import Foundation
import TapAdditionsKitV2

internal extension Bundle {
    
    // MARK: - Internal -
    // MARK: Properties
    
    static let responderChainInputViewResourcesBundle: Bundle = {
        
        #if SWIFT_PACKAGE
        // Swift Package Manager puts the xib and images in the package's own resource bundle.
        return Bundle.module
        #else
        guard let result = Bundle(for: TapResponderChainInputView.self).tap_childBundle(named: Constants.resourcesBundleName) else {
            
            fatalError("There is no \(Constants.resourcesBundleName) bundle.")
        }
        
        return result
        #endif
    }()
    
    // MARK: - Private -
    
    private struct Constants {
        
        fileprivate static let resourcesBundleName = "TapResponderChainInputViewResources"
        
        @available(*, unavailable) private init() {}
    }
}
