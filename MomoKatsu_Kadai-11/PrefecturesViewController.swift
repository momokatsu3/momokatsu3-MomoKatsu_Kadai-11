//
//  PrefecturesViewController.swift
//  MomoKatsu_Kadai-11
//  Created by モモカツ on 2023/06/24.
// Part11 TableViewで47都道府県を選択するアプリ


import UIKit

class PrefecturesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // テーブルビューに表示する都道府県名
    let prefecturesList = ["北海道", "青森県", "岩手県", "宮城県", "秋田県",
                           "山形県", "福島県", "茨城県", "栃木県", "群馬県",
                           "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県",
                           "富山県", "石川県", "福井県", "山梨県", "長野県",
                           "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県",
                           "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県",
                           "鳥取県", "島根県", "岡山県", "広島県", "山口県",
                           "徳島県", "香川県", "愛媛県", "高知県", "福岡県",
                           "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県",
                           "鹿児島県", "沖縄県"]


    // 遷移先の selectedPrefecture に選択した都道府県名を設定するための変数
    private(set) var selectedPrefecture: String?

    // テーブルビューに表示するデータを返すメソッド（スクロールなどでページを更新する必要が出るたびに呼び出される）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //セルを取得する
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "")

        // UITableViewCellのtextLabelに選択した都道府県名を設定
        cell.textLabel?.text = prefecturesList[indexPath.row]
        // セルのフォント変更
        cell.textLabel!.font = UIFont(name: "Arial", size: 20)
        
        return cell
    }

    // テーブルビューに表示するデータ個数を返すメソッド
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        //print(prefecturesList.count)
        return prefecturesList.count
    }

    // テーブルビューのデータ選択後に呼び出されるメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        // 遷移先の selectedPrefecture に選択した都道府県名を設定し、遷移元でunWindSegueを実行。
        selectedPrefecture = prefecturesList[indexPath.row]
        performSegue(withIdentifier: "didSelectPrefecture", sender: nil)

    }

    // キャンセルを選択した場合
    @IBAction func tapCancelButtonItems(_ sender: Any) {
        // モーダル遷移で元に画面遷移
        //（退出させる(dismiss)、アニメーションありで、完了した後の処理なし）
        dismiss(animated: true, completion: nil)
    }


}
