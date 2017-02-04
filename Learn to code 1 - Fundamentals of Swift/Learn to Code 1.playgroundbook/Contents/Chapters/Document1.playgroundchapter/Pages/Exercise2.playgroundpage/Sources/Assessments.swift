// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
let success = "### 真棒！ \n你写出了更复杂的代码，并且应该注意到代码中命令的顺序是至关重要的。\n\n每一步中包含的命令也很重要，如果不小心弄错，Byte 可能就无法完成任务了。 \n\n[**下一关**](@next)"

let solution = "```swift\nmoveForward()\nmoveForward()\nturnLeft()\nmoveForward()\nmoveForward()\ncollectGem()\n```"

import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
    let checker = ContentsChecker(contents: PlaygroundPage.current.text)

var hints = [
    "Byte 想要得到宝石，首先需要向前走两格，然后向左转，最后再向前走两格。",
    "``moveForward()`` [命令](glossary://command) 只会让 Byte 向前移动一格，所以你需要使用两次这个命令才能让 Byte 收集到宝石。"
]
    
    let oneTileMovement = [
        "moveForward",
        "turnLeft",
        "moveForward",
        "collectGem"
    ]
    
    let oneTileMovementNoCollect = [
        "moveForward",
        "turnLeft",
        "moveForward",
    ]
    
    if world.commandQueue.containsIncorrectCollectGemCommand() {
        hints[0] = "要让 `collectGem()` 命令正常工作， Byte 需要停留在有宝石的格子上。"
    }
    
    if checker.functionCallCount(forName: "turnLeft") == 0 {
        hints[0] = "要到达宝石的格子，需要使用新命令： `turnLeft()`。"
    } else if checker.calledFunctions == oneTileMovement {
        hints[0] = "啊哦！每一个 `moveForward()` 命令只会让 Byte 向前移动一格，要移动两格需要使用 **两次** `moveForward()` 命令。"
    } else if checker.calledFunctions == oneTileMovementNoCollect {
        hints[0] = "啊哦！每一个 `moveForward()` 命令只会让 Byte 向前移动一格，要移动两格需要使用 **两次** `moveForward()` 命令。并且不要忘记收集宝石。"
    }

    


    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}

