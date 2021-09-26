//
//  ViewController.swift
//  SearchBar
//
//  Created by Sandip Das on 26/09/21.
//

import UIKit

class ViewController: UIViewController, UISearchResultsUpdating {
    
    class ResultsVC: UIViewController{
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .systemTeal
        }
    }
    
    let searchController = UISearchController(searchResultsController: ResultsVC())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Search"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .white
        
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
        
    }
    
    func updateSearchResults(for searchController: UISearchController){
        guard let text = searchController.searchBar.text else {
            return
        }
        
        print(text)
    }


}

