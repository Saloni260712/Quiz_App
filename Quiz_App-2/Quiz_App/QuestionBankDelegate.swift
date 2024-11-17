//
//  QuestionBankDelegate.swift
//  Quiz_App
//
//  Created by Meet Patel on 15/11/24.
//

import Foundation

protocol QuestionBankDelegate: AnyObject {
    func didAddQuestion(_ question: Question)
    func didUpdateQuestion(_ question: Question, at index: Int) // Add 'at index' parameter
}

