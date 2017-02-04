// 
//  Assessments.swift
//
//  Copyright (c) 2016 Apple Inc. All Rights Reserved.
//

let solution: String? = nil


import PlaygroundSupport
public func assessmentPoint() -> AssessmentResults {
    let checker = ContentsChecker(contents: PlaygroundPage.current.text)
    
    var success = "### 不可思议！ \n你已经完成命令的课程，是时候开始学习函数了。 \n\n[**函数-简介**](函数/简介)"
    
    
    var hints = [
        "仔细查看地图，试着用最少的命令收集到宝石。",
        "使用传送门缩短你的路径。",
        "这是一个 **挑战关** ，并不会提供答案。尝试着独立找出解决问题的方案，会对你编程技能有很大的提升。"

        ]
    
    if checker.numberOfStatements < 9 {
        success = "### 这。。。是真的吗？ \n你的方案真是万里挑一！ \n是时候开始学习函数了 \n\n[**函数-简介**](函数/简介)"
    } else if checker.numberOfStatements == 9 {
        success = "### 这就是最短路径！ \n恭喜你找到了最有效率的方案之一。\n\n你已经完成命令的课程，是时候开始学习函数了。 \n\n[**函数-简介**](函数/简介)"
    } else if checker.numberOfStatements > 9 && checker.numberOfStatements <= 13 {
        success = "### 干得好！ \n不过还不是最短路径，你可以继续学习函数章节，或者能否再努努力，找出这个挑战更好的方案呢？ \n\n[**函数-简介**](函数/简介)"
        hints[0] = "你的思路很正确，但是还有更好的方案。传送门是有颜色匹配的，或者试着用绿色的传送门来完成这个挑战？"
    } else if checker.numberOfStatements > 13 {
        success = "### 还不错。 \n你已经成功通过了这个挑战。现在可以继续学习函数章节，或者能否再努努力，找出这个挑战更好的方案呢？ \n\n[**函数-简介**](函数/简介)"
        hints[0] = "有更好的方案存在。仔细想想如何通过传送门来减少使用命令的数量？"
        
    }

    
    
    return updateAssessment(successMessage: success, failureHints: hints, solution: solution)
}

