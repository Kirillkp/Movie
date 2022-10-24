//
//  MainViewController.swift
//  Movie
//
//  Created by Кирилл Полосов on 15.09.2022.
//

import UIKit
import CoordinatorLib

protocol MainModule: Presentable {
    
}

protocol MainModuleInput {
    func showFilm(with data: [Film])
}

final class MainViewController: BaseViewController<MainViewModel>, MainModule {

    private let posterTableView = MainCollectionView(sizeForItem: CGSize(width: .mainTableViewWidth, height: .mainTableViewHeight))
    private let backgroundImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Movie"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .white
        viewModel.viewDidLoad()
    }

    override func addViews() {
        super.addViews()
        
        view.addSubviews(backgroundImage,
                         posterTableView)
    }
    
    override func configureLayout() {
        super.configureLayout()
        
        backgroundImage.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        posterTableView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(CGFloat.mainTableViewHeight + 10)
        }
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        posterTableView.backgroundColor = .clear
        
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.applyBlurEffect()
        backgroundImage.image = .mainBackgroundImage()
    }
    
    override func bindViews() {
        super.bindViews()
        
        posterTableView.backgroundFilm = { [weak self] in
            self?.backgroundImage.sd_setImage(with: URL(string: $0 ?? ""))
        }
    }
    
}

extension MainViewController: MainModuleInput {
    
    func showFilm(with data: [Film]) {
        posterTableView.configure(with: data)
        posterTableView.reloadData()
    }
}

private extension CGFloat {
    static let mainTableViewHeight: CGFloat = 300
    static let mainTableViewWidth: CGFloat = UIScreen.main.bounds.width / 2
}

