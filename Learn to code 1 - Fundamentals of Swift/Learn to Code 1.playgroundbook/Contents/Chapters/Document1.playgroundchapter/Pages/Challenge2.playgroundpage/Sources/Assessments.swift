// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
let success = "### 不可思议！ \n你发现了代码中所有的 bug！ \n\n[**下一关**](@next)"

let solution: String? = nil

import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
    let checker = ContentsChecker(contents: PlaygroundPage.current.text)
    
    var hints = [
        "有时候仅仅一个命令的位置错了就会产生 bug。想一下是哪个命令，应该在哪个位置才能让你顺利的完成任务？将这个（这几个）产生 bug 的命令放到正确的位置！",
        "想象一下每一步应该在地图上如何移动，再和代码进行比较，是不是看到哪里出错了？",
        "这是一个 **挑战关** ，并不会提供答案。尝试着独立找出解决问题的方案，会对你编程技能有很大的提升。"

    ]
    
    let defaultContents = [
        "moveForward",
        "moveForward",
        "moveForward",
        "turnLeft",
        "toggleSwitch",
        "moveForward",
        "moveForward",
        "moveForward",
        "collectGem",
        "moveForward"
    ]
    
    if checker.calledFunctions == defaultContents {
        hints[0] = "Byte 将一个 **打开** 状态的开关 **关闭** 了。这又是一个 bug！重新排列现有的命令使得 Byte 打开所有的开关，并成功收集宝石。"
    } else if checker.numberOfStatements > 10 {
        hints[0] = "这里使用更多的命令并不会帮到你。试着重新排列现有的代码，让每个命令都在其正确的位置上。"
        
    } else if checker.numberOfStatements > 12 {
        hints[0] = "已经把代码搞乱了？可以点击代码区最上方三个红点的图标，然后选择 Reset Page 来重置。"
    }
    
    

    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}






