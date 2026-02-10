//
//  BooksAPIClient.swift
//  booklist
//
//  Created by honamiNAKASUJI on 2026/02/07.
//

import SwiftUI
import Combine

class BooksAPICliant: ObservableObject {
    @Published var books: BookResponse?
    private let apiClient = APIClient()
    
    func fetchBooks(queryString: String) {
        Task{ @MainActor in
            self.books = await apiClient.fetchData(
                from: "https://www.googleapis.com/books/v1/volumes?q=\(queryString)",
                responseType: BookResponse.self 
            )
        }
    }
}
