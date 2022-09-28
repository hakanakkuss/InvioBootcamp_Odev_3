//
//  ViewController.swift
//  Odev3
//
//  Created by Macbook Pro on 29.09.2022.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    var animationView = AnimationView()
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        animationView = .init(name: "cyrpto")
        animationView.frame = view.bounds
        //animationView.contentMode = .topRight
        animationView.frame = CGRect(x: -38, y: -28, width: 500, height: 500)//position için kullanıldı
        animationView.loopMode = .loop
        animationView.animationSpeed = 0.5
        view.addSubview(animationView)
        animationView.play()
        
        
        self.navigationItem.title = "Binance"
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "AnaRenk")
        appearance.titleTextAttributes = [.foregroundColor:UIColor(named: "YaziRenk1")!,.font:UIFont(name: "Poppins-SemiBold", size: 22)!]
        navigationController?.navigationBar.barStyle = .black //wifi göstergesi pil göstergesi gibi sembollerin renklerini düzenler
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }


}

