//
//  LeagueVC.swift
//  SWOOSH-APP
//
//  Created by Ravneet kaur on 2020-05-05.
//  Copyright © 2020 Ravneet kaur. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player : Player!

    @IBOutlet weak var nextbtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       player = Player()
    }
    @IBAction func aNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
       }

    @IBAction func onmenTapped(_ sender: Any) {
        selectLeague(leagueType: "men")
    }
    
    
    @IBAction func onWomenTapped(_ sender: Any) {
          selectLeague(leagueType: "womens")
    }
    
    
    @IBAction func onCoedTapped(_ sender: Any) {
          selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType : String){
        player.desiredleague = leagueType
        nextbtn.isEnabled = true
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
        
    }

}
