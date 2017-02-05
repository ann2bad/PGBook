// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//

var solution: String? = nil

import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
    let checker = ContentsChecker(contents: PlaygroundPage.current.text)
    
    var success = "### 干得好！ \n\n你写下并使用了自己的函数。[函数](glossary://function) 使你能够将命令组织到一起，而通过一次 [调用](glossary://call) 来将全部这些命令按顺序执行。使用函数可以令你的代码更可读，更好理解。 \n\n[**下一关**](@next)"
    
    var hints = [
        "试着在这个谜题中找到一个可重复的模式。比如说，每行都有三颗宝石。",
        "一旦你找到了可以重复执行的模式，用一系列命令将其定义为一个函数，并在需要执行模式的地方调用你的函数。",
        "这是一个 **挑战关**。 通过挑战是一次测试你编程技能的好机会。因为挑战中可能会有很多种不同的方式解决问题，你要做的，就是尽可能找到最好的方案。"
        
        ]
    let customFunction = checker.customFunctions.first ?? ""

    if checker.didUseForLoop || checker.didUseWhileLoop {
        success = "### 喔！ \n使用循环来解决问题是个好主意！ \n\n[**下一关**](@next)"
    } else if world.commandQueue.containsIncorrectCollectGemCommand(for: actor) {
        hints[0] = "啊哦，你在没有宝石的位置上调用了 `collectGem()`！实际上这是你程序中的一个 bug - 你只能在有宝石的格子上收集宝石。"
    } else if checker.functionCallCount(forName: customFunction) == 0 {
        success = "### 很好！ \n你找到了解决问题的方法，但是并没有 [定义](glossary://define) 你自己的函数。结果使用了 \(checker.calledFunctions.count) 条命令。你可以使用函数来组合那些可能重复的命令，以此减少解决问题需要调用的命令数量。[定义](glossary://define) 一个可以重复使用的函数，然后在需要的时候 [调用](glossary://call)。这样你就不再需要那么多的命令，也可以使你的代码更加可读。"
        hints[0] = "给你的函数一个名字，并用一系列命令定义，然后可以点击快捷栏上的函数名来 [调用](glossary://call)。"
    } else if checker.numberOfStatements > 20 {
        hints[0] = "你一共使用了 \(checker.calledFunctions.count) 条命令，但是这个谜题只要 12 条或更少的命令就能解决。调用一次函数就相当于调用了所有函数定义中的命令，使用函数可以让代码更短也更可读。"
    }
    
    
    
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}

