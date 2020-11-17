//
//  SourceEditorCommand.swift
//  XTComment
//
//  Created by admin on 2018/9/28.
//  Copyright © 2018年 clcw. All rights reserved.
//

import Foundation
import XcodeKit
//TODO: 为全部选中行添加注释
/*
    invocation.buffer.selections：选中行数组range
    range.start：起始行start
    range.end：结束行end
    invocation.buffer.lines：行文本
    //插入行
    invocation.buffer.lines.insert("hello world", at: lineNumber)
    插入行文本
 */
class SourceEditorCommand: NSObject, XCSourceEditorCommand {
    
    func perform(with invocation: XCSourceEditorCommandInvocation, completionHandler: @escaping (Error?) -> Void ) -> Void {
        var lineIndexes = [Int]()
        //选中行
        for range in invocation.buffer.selections {
            guard let range = range as? XCSourceTextRange else {
                continue
            }
            let start = range.start //起始行
            let end = range.end     //结束行
            //start.line            //行索引
            for i in start.line...end.line {
                lineIndexes.append(i)
            }
        }
        lineIndexes.reverse()
        for lineNumber in lineIndexes {
            guard let line = invocation.buffer.lines[lineNumber] as? NSString else {
                continue
            }
            let commentLine = NSString(format: "// %@", line)
            invocation.buffer.lines.insert(commentLine, at: lineNumber)
        }
        // Implement your command here, invoking the completion handler when done. Pass it nil on success, and an NSError on failure.
        completionHandler(nil)
    }
}
