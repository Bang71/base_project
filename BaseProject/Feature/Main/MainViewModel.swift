//
//  MainViewModel.swift
//  BaseProject
//
//  Created by 신병기 on 2023/03/26.
//

import Foundation
import RxSwift

final class MainViewModel: BaseViewModel {

    let sample: PublishSubject<String> = PublishSubject()
    
    func loadInitData() {
        self.sample.onNext("")
    }
}
