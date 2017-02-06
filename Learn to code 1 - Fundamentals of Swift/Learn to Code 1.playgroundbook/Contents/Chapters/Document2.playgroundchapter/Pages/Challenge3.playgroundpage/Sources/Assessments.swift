// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
let success = "### 学会了吗？ \n将一个复杂问题 [分解](glossary://decomposition) 成若干的小问题然后逐个击破，你的代码会变得更可读和更可用。 \n\n[**下一关**](@next)"
let hints = [
    "使用 `collectGemTurnAround()` 函数来 [定义](glossary://define) `solveRow()`函数。",
    "解决问题的方法有很多，选一个你喜欢的，然后尝试。",
    "有一个办法：在 [定义](glossary://define) `solveRow()` 时，[调用](glossary://call) 两次 `collectGemTurnAround()`。",
    "这是一个 **挑战关**。 通过挑战是一次测试你编程技能的好机会。因为挑战中可能会有很多种不同的方式解决问题，你要做的，就是尽可能找到最好的方案。"
]

let solution: String? = nil
public func assessmentPoint() -> AssessmentResults {
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}
