//
//  SecondEditorCommand.swift
//  XTComment
//
//  Created by admin on 2018/9/28.
//  Copyright © 2018年 clcw. All rights reserved.
//

import Foundation
import XcodeKit

class SecondEditorCommand: NSObject, XCSourceEditorCommand {
    
    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void ) -> Void {
        
        
        // Implement your command here, invoking the completion handler when done. Pass it nil on success, and an NSError on failure.
        completionHandler(nil)
    }
    
}
