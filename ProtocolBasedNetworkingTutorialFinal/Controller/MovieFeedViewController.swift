//
//  ViewController.swift
//  ProtocolBasedNetworkingTutorialFinal
//
//  Created by James Rochabrun on 11/27/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

class MovieFeedViewController: UIViewController {
    
    private let client = MovieClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        client.getFeed(from: .nowPlaying) { [weak self] result in
      
            switch result {
            case .success(let movieResult):
                
                for t in movieResult.results {
                    
                    print("KMTITLE:  \(t.title)")
                }
            case .failure(let error):
                print("the error \(error)")
            }
        }
    }
}

