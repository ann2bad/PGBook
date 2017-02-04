// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
let success = "### 神奇！ \n命令正确！顺序正确！Byte 成功完成了任务！你做到了！ \n\n[**下一关**](@next)"

let solution = "```swift\nmoveForward()\nmoveForward()\nturnLeft()\nmoveForward()\ncollectGem()\nmoveForward()\nturnLeft()\nmoveForward()\nmoveForward()\ntoggleSwitch()\n```"

import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
    let checker = ContentsChecker(contents: PlaygroundPage.current.text)
    
var hints = [
    "在地图上寻找开关的位置。",
    "和从前一样使用 `moveForward()`， `turnLeft()`，以及 `collectGem()` 命令，并且在你到达开关位置时使用 `toggleSwitch()` 命令，让 Byte 切换它的状态。"
]

    
    if world.commandQueue.containsIncorrectCollectGemCommand() {
        hints[0] = "在使用 `collectGem()` 命令前，需要确保 Byte 已经移动到宝石的位置。"
    }
    
    if world.commandQueue.containsIncorrectToggleCommand() {
        hints[0] = "Byte 必须到达开关的位置，才能转换开关的状态。"
    }

    if checker.functionCallCount(forName: "collectGem") == 0 {
        hints[0] = "别忘记使用 `collectGem` 命令收集宝石。"
    } else if checker.functionCallCount(forName: "toggleSwitch") == 0 && !world.commandQueue.containsIncorrectCollectGemCommand() {
        hints[0] = "除了收集宝石，还要让 Byte 移动到开关的位置，并使用 `toggleSwitch()` 命令打开开关。"
    } else if world.commandQueue.containsIncorrectToggleCommand() && checker.functionCallCount(forName: "collectGem") == 1 && checker.numberOfStatements < 8 {
        hints[0] = "记住，每一个 `moveForward()` 命令只能让 Byte 向前移动一步，在上下楼梯的时候也是一样。"
    }
    
    

    
    
    
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}



