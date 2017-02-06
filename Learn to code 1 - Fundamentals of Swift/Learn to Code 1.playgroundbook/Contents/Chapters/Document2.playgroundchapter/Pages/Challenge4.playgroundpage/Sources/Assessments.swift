// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//
let success = "### 很不错！ \n实际上开发一个大型软件也就是将其先分解成无数个小问题，逐个解决每个小问题，最后将这些解决方案合成，最终解决了大问题。 \n\n同时，恭喜你已经学完了函数，可以进一步来学习 [**for 循环**](for%20循环/简介)。"
let hints = [
    "仔细观察开关所在的位置。能否找到模式来写出函数，最后将它们组合来解决最终的问题？",
    "试着首先定义一个函数，让角色向前移动两次然后转换开关，再定义一个新函数，让角色转身然后回到地图中心。",
    "这是一个 **挑战关**。 通过挑战是一次测试你编程技能的好机会。因为挑战中可能会有很多种不同的方式解决问题，你要做的，就是尽可能找到最好的方案。"

]

let solution: String? = nil

public func assessmentPoint() -> AssessmentResults {
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}
