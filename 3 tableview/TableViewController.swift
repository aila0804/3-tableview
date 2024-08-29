//
//  TableViewController.swift
//  3 tableview
//
//  Created by Aila Aila on 27.08.2024.
//

import UIKit

class TableViewController: UITableViewController {
    
    //let array = [1, 2, 3, 4, 5]
    //var arrayNames = ["Emily", "Jasper", "Edward", "Tom", "Jerry"]
    //var arraySurnames = ["Blunt", "Spears", "Castell", "Sommery", "Cameron"]
    //var arrayImage = ["emily", "jasper", "edward", "tom", "jerry"]

    var arrayMovies = [Movie(name: "Lars and the Real Girl", year: 2007, genre: "Comedy, Drama, Romance", imagename: "lars", description: "Extremely shy Lars finds it impossible to make friends or socialize. His brother and sister-in-law worry about him, so when he announces that he has a girlfriend he met on the Internet, they are overjoyed. But Lars' new lady is a life-size plastic woman. On the advice of a doctor, his family and the rest of the community go along with his delusion."),
    Movie(name: "The Place Beyond the Pines", year: 2012, genre: "Crime, Drama, Thriller", imagename: "pines", description: "A stunt rider turns into a robber in order to lead a happy life with his child and lover and grabs the attention of a police officer. They both get on a collision course that affects their families."),
    Movie(name: "La La Land", year: 2016, genre: "Musical, Romance, Comedy, Drama", imagename: "land", description: "Sebastian and Mia are drawn together by their common desire to do what they love. But as success mounts they are faced with decisions that begin to fray the fragile fabric of their love affair, and the dreams they worked so hard to maintain in each other threaten to rip them apart."),
    Movie(name: "Blade Runner 2049", year: 2017, genre: "Action, Drama, Mystery, Sci-Fi, Thriller", imagename: "blade", description: "Officer K, a new blade runner for the Los Angeles Police Department, unearths a long-buried secret that has the potential to plunge what's left of society into chaos. His discovery leads him on a quest to find Rick Deckard, a former blade runner who's been missing for 30 years."),
    Movie(name: "Barbie", year: 2023, genre: "Adventure, Comedy, Fantasy", imagename: "barbie", description: "Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.")]
                       
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    @IBAction func addPerson(_ sender: Any) {
        //arrayNames.append("new name")
        //arraySurnames.append("new surname")
        //arrayImage.append("avatar")
        
        arrayMovies.append(Movie(name: "New Movie", year: Int(), genre: "Genre", imagename: "gosling", description: ""))
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayMovies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = arrayMovies[indexPath.row].name

        let labelYear = cell.viewWithTag(1003) as! UILabel
        labelYear.text = String(arrayMovies[indexPath.row].year)
        
        let labelGenre = cell.viewWithTag(1001) as! UILabel
        labelGenre.text = arrayMovies[indexPath.row].genre
        
        let imageview = cell.viewWithTag(1002) as! UIImageView
        imageview.image = UIImage(named: arrayMovies[indexPath.row].imagename)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 89
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! ViewController
        
//        detailVc.name = arrayPersons[indexPath.row].name
//        detailVc.surname = arrayPersons[indexPath.row].surname
//        detailVc.imageName = arrayPersons[indexPath.row].imagename
        
        detailVc.movie = arrayMovies[indexPath.row]
        
        navigationController?.show(detailVc, sender: self)
        
    }
    
   

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            //arrayNames.remove(at: indexPath.row)
            //arraySurnames.remove(at: indexPath.row)
            //arrayImage.remove(at: indexPath.row)
            
            arrayMovies.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
