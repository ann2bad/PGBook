// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
let success = "### 很好！ \n回想一下，目前为止你已经学过了：简单的命令，函数，还有 `for` 循环。你能利用这些技能变得更好吗？ \n\n[**下一关**](@next)"
let hints = [
    "首先仔细观察问题，最开始重复模式可能不明显。尝试先解决一个小部分，然后再创建循环。",
    "试试看先前进，左转，前进两次，最后再右转。",
    "这是一个 **挑战关** ，并不会提供答案。尝试着独立找出解决问题的方案，会对你编程技能有很大的提升。"

]

let solution: String? = nil

public func assessmentPoint() -> AssessmentResults {
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}
