 //
//  OnboardingViewController.swift
//  Yummie
//
//  Created by Yusuf Pektaş on 5.04.2023.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides = [OnboardingSlide]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        slides.append(OnboardingSlide(title: "Delicious Dishes", description: "Experience a variaty of dishes from different cultures around the world", image: UIImage(named: "slide1")!))
        slides.append(OnboardingSlide(title: "Delicious Dishes", description: "Experience a variaty of dishes from different cultures around the world", image: UIImage(named: "slide2")!))
        slides.append(OnboardingSlide(title: "Delicious Dishes", description: "Experience a variaty of dishes from different cultures around the world", image: UIImage(named: "slide3")!))
        
    }
    
    @IBAction func nextBtnClicked(_ sender: Any) {
        
    }
    
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    
    
}
