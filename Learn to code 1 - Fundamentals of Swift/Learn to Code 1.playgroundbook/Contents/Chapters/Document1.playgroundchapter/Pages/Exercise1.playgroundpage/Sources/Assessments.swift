// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//

let solution = "```swift\nmoveForward()\nmoveForward()\nmoveForward()\ncollectGem()\n```"


var success = "### 恭喜！ \n这是你的第一段 [Swift](glossary://Swift) 代码。 \n\nByte 已经按照你写下的命令顺序完成了你让他做的事。 \n\n[**下一关**](@next)"


import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
let checker = ContentsChecker(contents: PlaygroundPage.current.text)

    var hints = [
        "在这里，你要使用向前移动和收集宝石的命令来让 Byte 完成任务，这些命令已经显示在快捷栏上了。",
        "首先点击3次 `moveForward()` ，然后点击一次 `collectGem()`。如果你的代码出现问题，可以点击代码区最上方三个红点的图标，然后选择 Reset Page 来重置。"
    ]


    
    
    if checker.numberOfStatements == 0 {
        hints[0] = "你需要输入一些命令。 首先点击 \"点这里输入代码\"区域，然后使用 `moveForward()` 与 `collectGem()` 命令来解决谜题。"
    } else if checker.numberOfStatements < 3 {
        hints[0] = "啊哦！每一个 `moveForward()` 命令只能让 Byte 向前移动一格。要向前移动三格，你需要 **三个** `moveForward()` 命令。"
    } else if checker.functionCallCount(forName: "collectGem") == 0 {
        hints[0] = "是不是忘记收集宝石了？当 Byte 停在有宝石的格子上时，使用 `collectGem()` 来收集宝石。"
    }
    
    if world.commandQueue.containsIncorrectCollectGemCommand() {
        hints[0] = "要让 `collectGem()` 命令正常工作， Byte 需要停留在有宝石的格子上。"
    }
    
    if world.commandQueue.containsIncorrectMoveForwardCommand() {
        success = "### 干的好！ \n这是你的第一段 [Swift](glossary://Swift) 代码。 \n\n你是否已经注意到，Byte 会无条件的执行你写下的所有命令。哪怕你想通过 `moveForward()` 命令让 Byte 跳下悬崖。。。 \n\n在你的方案中，即时有多余的命令，Byte 还是成功的解决了谜题。下一次，尽量做到不要有多余的命令。  \n\n[**下一关**](@next)"
    }
    
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}
