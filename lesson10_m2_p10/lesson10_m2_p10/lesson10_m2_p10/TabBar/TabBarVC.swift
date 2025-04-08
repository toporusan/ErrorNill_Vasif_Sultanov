//
//  TabBarVC.swift
//  lesson10_m2_p10
//
//  Created by Toporusan on 07.04.2025.
//

import UIKit

// 1 Если у класса A() есть функция КОТОРАЯ должна
// выполняться в классе B() — её выносим в протокол
protocol TabViewDelegate {
    func setTabIndex(index: Int)
}

// 2 Класс КОТОРЫЙ ДЕЛЕГИРУЕТ функцию ДОЛЖЕН подписаться под созданный протокол

// 3 Класс КОТОРЫЙ ПРИНИМАЕТ функцию должен реализовать протокол

// 4 Класс который будет Выполлять делегируемую функцию ДОЛЖЕН ПРИНЯТЬ ДЕЛЕГАТ!!!

class TabBarVC: UITabBarController, TabViewDelegate {
    
    lazy var homeVC: UIViewController = {
        $0.tabBarItem.title = "home"
        $0.view.backgroundColor = .white
        $0.delegate = self
        return $0
    }(HomeVC())

    lazy var messagesVC: UIViewController = {
        $0.tabBarItem.title = "messages"
        $0.view.backgroundColor = .white
        // $0.delegate = self
        return $0
    }(MessagesVC())

    lazy var newsVC: UIViewController = {
        $0.tabBarItem.title = "news"
        $0.view.backgroundColor = .white
        // $0.delegate = self
        return $0
    }(NewsVC())

    lazy var profileVC: UIViewController = {
        $0.tabBarItem.title = "profile"
        $0.delegate = self
        return $0
    }(ProfileVC())

    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers([homeVC, messagesVC, newsVC, profileVC], animated: true)
        setIcon()
        setupTabBar()
    }

    func setIcon() {
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        homeVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")

        messagesVC.tabBarItem.image = UIImage(systemName: "paperplane.circle")
        messagesVC.tabBarItem.selectedImage = UIImage(systemName: "paperplane.circle.fill")

        newsVC.tabBarItem.image = UIImage(systemName: "newspaper")
        newsVC.tabBarItem.selectedImage = UIImage(systemName: "newspaper.fill")
        newsVC.tabBarItem.badgeValue = "10+"

        profileVC.tabBarItem.image = UIImage(systemName: "person.circle")
        profileVC.tabBarItem.selectedImage = UIImage(systemName: "person.circle.fill")
    }

    func setupTabBar() {
        tabBar.backgroundColor = .white
        tabBar.tintColor = .black
        tabBar.barTintColor = .black
    }

    // MARK: Делегировать эту функцию в SecondVC()

    // Эту функцию может выполнять SecondVC()

    func setTabIndex(index: Int) {
        selectedIndex = index
    }
    
}
