// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
var success = "### 真棒！ \n你通过了第一个挑战关！\n\n[**下一关**](@next)"

let solution: String? = nil



import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
    let checker = ContentsChecker(contents: PlaygroundPage.current.text)
    
    var hints = [
        "首先让 Byte 走上斜坡，然后向左转，打开开关，最后走到传送门。",
        "当走到传送门时，Byte 会立刻到达传送门的出口，并保持之前面向的方向。",
        "独自给出方案通过 **挑战关** 会使你的编程技能有所提高。"

        ]
    
    if world.commandQueue.containsIncorrectToggleCommand(for: actor) {
        hints[0] = "在使用 `toggleSwitch()` 命令前，确保 Byte 的位置确实有开关。"
    }
    
    if checker.functionCallCount(forName: "toggleSwitch") == 0 && checker.functionCallCount(forName: "collectGem") == 0 {
        hints[0] = "首先让 Byte 移动到开关的位置，然后使用 `toggleSwitch()` 命令打开开关。"
    } else if !world.commandQueue.containsIncorrectToggleCommand(for: actor) && checker.functionCallCount(forName: "collectGem") == 0 {
        hints[0] = "打开开关以后，需要让 Byte 通过传送门。Byte 在通过传送门的前后会保持面向的方向不变。"
    } else if !world.commandQueue.containsIncorrectToggleCommand(for: actor) && checker.numberOfStatements < 13 {
        hints[0] = "在本关中，你可能不得不多次使用前进的命令来到达目的地，如果要前进三格，你需要使用三次 `moveForward()` 命令。"
    }
    
    
    let queue = world.commandQueue
    if let openSwitchIndex = queue.indexOfFirstCorrectToggle(), let collectGemIndex = queue.indexOfFirstCollectedGem() {
        if openSwitchIndex > collectGemIndex {
            success = "虽然你解决了谜题，但是顺序有些问题。你应该首先打开开关，然后通过传送门去收集宝石。"
        }
    }
    
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}





