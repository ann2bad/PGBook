// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
let success = "### 好主意！ \n即时没有右转的 [命令](glossary://command)，通过使用三次左转，成功的让你的角色转向右面。这就是 [组合](glossary://composition)，让你使用现有的命令完成新的任务。  \n\n[**下一关**](@next)"


let solution = "```swift\nmoveForward()\nmoveForward()\nmoveForward()\nturnLeft()\nturnLeft()\nturnLeft()\nmoveForward()\nmoveForward()\nmoveForward()\ncollectGem()\n```"


import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
    let checker = ContentsChecker(contents: PlaygroundPage.current.text)
    
    
    var hints = [
        "首先把你的角色移动到需要向右转的格子上，再使用已学过的命令组成一个向右转的命令。",
        "如果角色能够转身，那再使用 `turnLeft()` 命令就可以达到向右转的效果了。现在，问题变为：能否用 `turnLeft()` 命令达到向后转的效果？",
        "如果你向左转了适当的次数，最终你会转向背面。",
        ]
    
    if checker.functionCallCount(forName: "turnLeft") == 1 {
        hints[0] = "现在你要让角色向右转，但是没有 `turnRight()` 的命令。你要使用现有的命令达到这个效果，可能要使用某个命令不只一次。"
    } else if checker.functionCallCount(forName: "turnLeft") == 2 {
        hints[0] = "向左转两次的结果使角色向后转了，那么再向左转一次会怎样？"
    } else if checker.functionCallCount(forName: "turnLeft") == 4 {
        hints[0] = "啊哦！向左转了四次实际上你的角色每个方向都转到了。如果你停在第三次 `turnLeft()` 命令，你的角色会朝向哪边？"
    }
    
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}






