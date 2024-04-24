//
//  NetworkError.swift
//  sample-twos
//
//  Created by  Apple on 24/04/2024.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case invalidRequest
    case badResponse
    case badStatus
    case failedToDecodeResponse
}
