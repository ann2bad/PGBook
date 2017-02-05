// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
let solution: String? = nil

import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
    
    let checker = ContentsChecker(contents: PlaygroundPage.current.text)
    
    var success = "### 你对函数的理解加深了！ \n你写了一个自己的函数！函数能让你容易的处理复杂行为。 \n\n[**下一关**](@next)"

    var hints = [
        "你的 [函数](glossary://function) 首先要收集宝石，然后前进，最后转换开关。",
        "在这个挑战中，你将在地图上几个不同的位置使用你的函数。",
        "这是一个 **挑战关** ，并不会提供答案。尝试着独立找出解决问题的方案，会对你编程技能有很大的提升。"

        ]

    
    let customFunction = checker.customFunctions.first ?? ""
    if checker.didUseForLoop || checker.didUseWhileLoop {
        success = "### 棒极了！ \n我很惊讶你会使用循环来解决问题，不要骄傲，继续努力！ \n[**下一关**](@next)"
    } else if checker.functionCallCount(forName: customFunction) == 0 {
        success = " ### 恭喜！ \n你一共使用了 \(checker.calledFunctions.count) 条命令来解决问题！试着用 `func name() {}` 的格式自己定义一个 [函数](glossary://function)，然后调用它来完成任务。这样你就不需要那么多命令，而且代码也会变得更加可读。不过你喜欢的话，也可以进入 [**下一关**](@next)。"
        hints[0] = "试着写一个自己的函数来解决问题。首先要给函数一个名字，然后 [定义](glossary://define) 为收集宝石，前进，转换开关。"
        
    } else if world.commandQueue.containsIncorrectCollectGemCommand() {
        hints[0] = "啊哦，你在没有宝石的位置上调用了 `collectGem()`！实际上这是你程序中的一个 bug - 你只能在有宝石的格子上收集宝石。"
    } else if checker.numberOfStatements > 18 {
        hints[0] = "你找到了解决问题的方法，但是你可以做的更好！这里你一共使用了 \(checker.calledFunctions.count) 条命令，其实要解决这个问题，只需要 16 条或更少的命令就够了。想要使代码更加高效，[定义](glossary://define) 一个可以重复使用的函数，然后在需要的时候 [调用](glossary://call)。不过如果你喜欢，也可以直接进入 [**下一关**](@next)"
    } else if checker.functionCallCount(forName: customFunction) < 4 {
        hints[0] = "要最高效率的利用你的函数，确保在每一个适当的位置调用它。"
    }
 



    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}



