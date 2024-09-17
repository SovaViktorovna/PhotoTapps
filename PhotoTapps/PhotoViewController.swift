//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Виктория Демченко on 17.09.24.
//

import UIKit

class PhotoViewController: UIViewController {
    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: Any) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, Bool, _, _ in
            if Bool == true {
                print("true")
            }
            
        }
        
        present(shareController, animated: true, completion: nil)
    }
}
