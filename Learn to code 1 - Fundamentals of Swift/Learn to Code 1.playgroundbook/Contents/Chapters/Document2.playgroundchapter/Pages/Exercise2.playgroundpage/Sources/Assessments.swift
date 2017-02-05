// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//

let solution = "```swift\nfunc turnRight() {\n   turnLeft()\n   turnLeft()\n   turnLeft()\n}\n\nmoveForward()\nturnLeft()\nmoveForward()\nmoveForward()\nturnRight()\nmoveForward()\nmoveForward()\nturnRight()\nmoveForward()\nmoveForward()\nturnRight()\nmoveForward()\nmoveForward()\nmoveForward()\nturnLeft()\nmoveForward()\ntoggleSwitch()\n"

import PlaygroundSupport
func evaluateContents(_ contents: String) -> (success: String, hints: [String]) {
    let checker = ContentsChecker(contents: contents)
    
    var hints = [
        "还记得吗？ `turnRight()` 是组合了三次左转的命令。",
        "在任何需要右转的时候使用 `turnRight()` 命令。",
        
        ]
    
    var success = "### 现在你已经写出了第一个 [函数](glossary://function)！ \n你也可以使用函数为角色创建新的技能，要创建一个新的 [函数](glossary://function)，首先要想一个名字，然后用一组命令 [定义](glossary://define) 它的行为，最后在需要的地方 [调用](glossary://call) 它。 \n\n[**下一关**](@next)"
    
    let expectedContents = [
        "turnLeft",
        "turnLeft",
        "turnLeft"
    ]
    
    
    let turnRightMoveForward = [
        "turnLeft",
        "turnLeft",
        "turnLeft",
        "moveForward"
    ]
    
    if !checker.function("turnRight", matchesCalls: expectedContents) {
        hints[0] = "首先你需要正确 [定义](glossary://define) `turnRight()`：在 `turnRight()` 的花括号内点击，然后输入三个 `turnLeft()` 命令。试着使用 `turnRight()` 解决谜题吧。"
        success = "### 做的不错！ \n你已经解决了谜题，但是没有正确 [定义](glossary://define) `turnRight()` 函数！试着回头用三个 `turnLeft()` 命令重新定义 `turnRight()` 函数，然后再正确解决问题！"
    } else if checker.functionCallCount(forName: "turnLeft") >= 4 {
        hints[0] = "在定义了 `turnRight()` 函数之后，你不再需要连续用三个 `turnLeft()` 命令向右转了。直接调用 `turnRight()` 函数，就相当于调用了其内部的三个 `turnLeft()` 命令。"
    } else if world.commandQueue.closedAnOpenSwitch() {
        hints[0] = "我们的任务是打开所有的开关！对于已经打开的开关，就不要去管它了。"
    }
    
    if checker.function("turnRight", matchesCalls: expectedContents) && checker.functionCallCount(forName: "turnRight") < 1 {
        success = "你确实正确 [定义](glossary://define) 了 `turnRight()` 函数，但是你解决问题的时候并没有用到它。定义 `turnRight()` 函数后，在每次你的角色需要右转的时候使用。"
    }
    
    if checker.function("turnRight", matchesCalls: turnRightMoveForward) {
        success = "### 现在你已经写出了第一个 [函数](glossary://function)！ \n但是除了右转，你的函数还让角色向前移动了一格。当然它可以很好的解决眼前的问题，但是以后每次使用 `turnRight()` 的时候可能并不需要再向前移动。回去修改你的 `turnRight()` 函数，使它仅仅做让角色右转这一件事情。"
    }
    if checker.didUseForLoop {
        success = "### 现在你已经写出了第一个 [函数](glossary://function)！ \n更棒的是在写 `turnRight()` 函数时还用到了 [`for`循环](glossary://for%20loop)。你也可以使用函数为角色创建新的技能，要创建一个新的 [函数](glossary://function)，首先要想一个名字，然后用一组命令 [定义](glossary://define) 它的行为，最后在需要的地方 [调用](glossary://call) 它。 \n\n[**下一关**](@next)"
    }
    return (success, hints)
}
public func assessmentPoint() -> AssessmentResults {

    let (success, hints) = evaluateContents(PlaygroundPage.current.text)
    
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}
