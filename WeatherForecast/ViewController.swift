//
//  ViewController.swift
//  WeatherForecast
//
//  Created by Biren Subudhi on 06/04/2017.
//  Copyright © 2017 Biren Subudhi. All rights reserved.
//

import UIKit
import MBProgressHUD

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var city: String?
    @IBOutlet weak var citySearchBar: UISearchBar!
    @IBOutlet weak var weatherListView: UITableView!
    let cellReuseIdentifier = "DataCell"
    var weatherData: [[String:AnyObject]]?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.weatherListView.rowHeight = 60
//        self.weatherListView.register(DataCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        self.weatherData = []
    }

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        //Search City
        let service = ServiceController()
        service.getCityString(searchText: searchBar.text)
        
        //Get weather forecast info
        self.getWeatherForecastInfo(cityString:self.city!)
        self.hideLoadingHUD()
        
    }
    
    private func getWeatherForecastInfo (cityString:String) {
        
        self.showLoadingHUD(loadText: Constants.Message.checkingForecast)
        
        let service = ServiceController()
        service.getWeather(city: cityString)
        
        self.hideLoadingHUD()

    }
    
    
    private func showLoadingHUD(loadText:String) {
        let hud = MBProgressHUD.showAdded(to: self.view, animated: true)
        hud.label.text = loadText
    }
    
    private func hideLoadingHUD() {
        MBProgressHUD.hide(for: self.view, animated: true)
    }

    //MARK: - Tableview Delegate & Datasource
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        return (self.weatherData?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:DataCell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for:indexPath) as! DataCell

        var dict = self.weatherData?[indexPath.row]
        
        if let time = dict?["dt_txt"] as? String, let weatherInfo = ((dict?["weather"] as! NSArray) as Array)[0]["description"] as? String{
            cell.timestamp.text = time
            cell.weather.text = weatherInfo
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //  Dispose of any resources that can be recreated.
    }


}

