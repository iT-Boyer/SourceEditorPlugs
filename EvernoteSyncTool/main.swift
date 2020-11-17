//
//  main.swift
//  EvernoteSyncTool
//
//  Created by admin on 2018/10/20.
//  Copyright © 2018年 clcw. All rights reserved.
//

import Foundation

let EVERNOTE_HOST = BootstrapServerBaseURLStringSandbox
let CONSUMER_KEY = ""
let CONSUMER_SECRET = ""

print("Hello, World!")
///
EvernoteSession.setSharedSessionHost(EVERNOTE_HOST, consumerKey: CONSUMER_KEY, consumerSecret: CONSUMER_SECRET)
