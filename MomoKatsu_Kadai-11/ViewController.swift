//
//  ViewController.swift
//  MomoKatsu_Kadai-11
//  Created by モモカツ on 2023/06/24.
// Part11 TableViewで47都道府県を選択するアプリ

import UIKit

class ViewController: UIViewController {

    // 選択したテーブルビューを試験的に表示するラベル
    @IBOutlet weak var displaySelectValue: UILabel!

    // 遷移先に渡したい値を格納する変数を用意
    var selectTablaValue: String = "未選択"

    // 遷移先からの selectedPrefecture を受け取るため、 unwindSegue.source を確認して受け取る。
    @IBAction func didSelectPrefecture(unwindSegue: UIStoryboardSegue) {
        guard let prefectureSelectViewController = unwindSegue.source as? PrefecturesViewController else { return }
        displaySelectValue.text = prefectureSelectViewController.selectedPrefecture
    }

}



