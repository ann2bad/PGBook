// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
let success = "### 恭喜！ \n你已经成功找到代码中的 bug。所有命令都是正确的，但是他们的位置有错误的。通过重新排列命令的顺序来“调试”程序，直到成功解决问题。 \n\n[**下一关**](@next) "


let solution = "```swift\nmoveForward()\nmoveForward()\nturnLeft()\nmoveForward()\ncollectGem()\nmoveForward()\ntoggleSwitch()\n```"

import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
    let checker = ContentsChecker(contents: PlaygroundPage.current.text)
    
    var hints = [
        "好好想一想正确的命令顺序应该是什么？将现有的代码调整到这个顺序。",
        "改变命令的顺序来修复 bug ，让 Byte 成功收集宝石并打开开关。",
        ]
    
    let defaultContents = [
        "moveForward",
        "turnLeft",
        "moveForward",
        "moveForward",
        "collectGem",
        "moveForward",
        "toggleSwitch"
    ]

    if checker.numberOfStatements > 7 {
        hints[0] = "你添加了并不需要的命令。点击现有命令，然后将其拖拽到正确的位置。"
    } else if world.commandQueue.containsIncorrectCollectGemCommand() {
        hints[0] = "还没有找到 bug 吗？Byte 尝试在一个并没有宝石的位置收集宝石！重新排列命令，让 Byte 先到达宝石的位置再用 `collectGem()` 命令收集。"
    } else if world.commandQueue.containsIncorrectCollectGemCommand() && world.commandQueue.containsIncorrectToggleCommand() {
        hints[0] = "啊哦，你让 Byte 收集宝石和打开开关的时候 Byte 并没有处于正确的位置！试着先让 Byte 到达正确的位置再使用响应的命令。"
    } else if checker.calledFunctions == defaultContents {
        hints[0] = "注意到 bug 在什么时候发生了吗？重新排列代码，点击现有命令，然后将其拖拽到正确的位置。"
        
    }
    

    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}




