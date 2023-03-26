//
//  MainViewController.swift
//  BaseProject
//
//  Created by 신병기 on 2023/03/26.
//

import UIKit
import RxSwift

final class MainViewController: BaseViewController {

    let vm: MainViewModel = MainViewModel()
    
    private var sample: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initView()
        setBinding()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        vm.loadInitData()
    }

    private func initView() {
        
    }

    private func setBinding() {
        vm.sample.subscribe(onNext: { [weak self] string in
            guard let self = self else { return }
            self.sample = string
        }).disposed(by: bag)
    }
}

