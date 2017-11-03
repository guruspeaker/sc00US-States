//
//  StatesTableViewController.m
//  sc00US-States
//
//  Created by PAUL CHRISTIAN on 11/1/17.
//  Copyright © 2017 PAUL CHRISTIAN. All rights reserved.
//

#import "StatesTableViewController.h"
#import "stateInfo.h"
#import "StateTableViewCell.h"
#import "StateDetailViewController.h"

@interface StatesTableViewController ()
@property (strong, nonatomic) NSMutableArray* usStates;
//@property (strong, nonatomic) stateData* usStates[];

@end

@implementation StatesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Populate lists of characteristics
    [self AssignStateName];
    [self AssignCapitalName];
    [self AssignMotto];
    [self AssignFlagSMFileName];
    [self AssignFlagLGFileName];
    [self AssignBirdPicFileName];
    [self AssignBird];
    [self AssignPopulation];
    
    //initialize holding array
    _usStates = [NSMutableArray arrayWithCapacity:50];
    
    // initialize stateDataPack instance as collector / packer for usStates
        //stateInfo* stateDataPack = [[stateInfo alloc]init];

    //Populate holdin array with items from list
    for (int i=0;i<50;i++)
    {
        stateInfo* stateDataPack = [[stateInfo alloc]init];
        stateDataPack.name = _state[i];
        stateDataPack.capital = _capital[i];
        stateDataPack.motto = _motto[i];
        stateDataPack.flagLG =[UIImage imageNamed:_flagLGFileName[i]];
        stateDataPack.flagSM =[UIImage imageNamed:_flagSMFileName[i]];
        stateDataPack.birdPic = [UIImage imageNamed:_birdPicFileName[i]];
        stateDataPack.bird = _bird[i];
        stateDataPack.population = _population[i];
        
        // Pack the StateDatapackage into the usStates array
        [_usStates insertObject:stateDataPack atIndex:i];

        // Reset the Packer
        // stateDataPack = nil;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

        return [_usStates count];
        //return [states]
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* cellIdentifier = @"stateInfoCellID";
    StateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    //Populate Cell With Data
    stateInfo *item = [_usStates objectAtIndex:indexPath.row];
    cell.stateName.text = [NSString stringWithFormat:@"%@", item.name];
    cell.stateMoto.text = [NSString stringWithFormat:@"%@", item.motto];
    cell.flagImageView.image = item.flagSM;
    
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier]isEqualToString:@"sguShowDetail"])
    {
        StateDetailViewController *detailVC = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        stateInfo* item = [self.usStates objectAtIndex:myIndexPath.row];
        detailVC.myState = item;
        
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
}
- (void)AssignStateName{
    _state = @[
               @"Alabama",
               @"Alaska",
               @"Arizona",
               @"Arkansas",
               @"California",
               @"Colorado",
               @"Connecticut",
               @"Delaware",
               @"Florida",
               @"Georgia",
               @"Hawaii",
               @"Idaho",
               @"Illinois",
               @"Indiana",
               @"Iowa",
               @"Kansas",
               @"Kentucky",
               @"Louisiana",
               @"Maine",
               @"Maryland",
               @"Massachusetts",
               @"Michigan",
               @"Minnesota",
               @"Mississippi",
               @"Missouri",
               @"Montana",
               @"Nebraska",
               @"Nevada",
               @"New Hampshire",
               @"New Jersey",
               @"New Mexico",
               @"New York",
               @"North Carolina",
               @"North Dakota",
               @"Ohio",
               @"Oklahoma",
               @"Oregon",
               @"Pennsylvania",
               @"Rhode Island",
               @"South Carolina",
               @"South Dakota",
               @"Tennessee",
               @"Texas",
               @"Utah",
               @"Vermont",
               @"Virginia",
               @"Washington",
               @"West Virginia",
               @"Wisconsin",
               @"Wyoming"];
}
- (void)AssignCapitalName{
    _capital = @[
                 @"Montgomery",
                 @"Juneau",
                 @"Phoenix",
                 @"Little Rock",
                 @"Sacramento",
                 @"Denver",
                 @"Hartford",
                 @"Dover",
                 @"Tallahassee",
                 @"Atlanta",
                 @"Honolulu",
                 @"Boise",
                 @"Springfield",
                 @"Indianapolis",
                 @"Des Moines",
                 @"Topeka",
                 @"Frankfort",
                 @"Baton Rouge",
                 @"Augusta",
                 @"Annapolis",
                 @"Boston",
                 @"Lansing",
                 @"Saint Paul",
                 @"Jackson",
                 @"Jefferson City",
                 @"Helena",
                 @"Lincoln",
                 @"Carson City",
                 @"Concord",
                 @"Trenton",
                 @"Santa Fe",
                 @"Albany",
                 @"Raleigh",
                 @"Bismarck",
                 @"Columbus",
                 @"Oklahoma City",
                 @"Salem",
                 @"Harrisburg",
                 @"Providence",
                 @"Columbia",
                 @"Pierre",
                 @"Nashville",
                 @"Austin",
                 @"Salt Lake City",
                 @"Montpelier",
                 @"Richmond",
                 @"Olympia",
                 @"Charleston",
                 @"Madison",
                 @"Cheyenne"];
    
}
- (void)AssignMotto{
    _motto = @[
               @"Audemus jura nostra defendere (We dare defend our rights!)",
               @"North to the future",
               @"Ditat Deus (God enriches)",
               @"Regnat populus (The people rule)",
               @"Eureka (Εὕρηκα) (I have found it)",
               @"Nil sine numine (Nothing without providence.)",
               @"Qui transtulit sustinet (He who transplanted sustains)",
               @"Liberty and Independence",
               @"In God We Trust",
               @"Wisdom, Justice, Moderation",
               @"Ua mau ke ea o ka ʻāina i ka pono (The life of the land is perpetuated in righteousness.)",
               @"Esto perpetua (Let it be perpetual)",
               @"State sovereignty, national union",
               @"The Crossroads of America",
               @"Our liberties we prize and our rights we will maintain",
               @"Ad astra per aspera (To the stars through difficulties)",
               @"United we stand, divided we fall (Let us be grateful to God)",
               @"Union, justice, confidence",
               @"Dirigo (I lead)",
               @"Fatti maschii, parole femine (Manly deeds, womanly words)",
               @"Ense petit placidam sub libertate quietem (By the sword we seek peace, but peace only under liberty)",
               @"Si quaeris peninsulam amoenam circumspice (If you seek a pleasant peninsula, look about you)",
               @"L'étoile du Nord (The star of the North)",
               @"Virtute et armis (By valor and arms)",
               @"Salus populi suprema lex esto (Let the welfare of the people be the supreme law)",
               @"Oro y plata (Gold and silver)",
               @"Equality before the law",
               @"All For Our Country",
               @"Live Free or Die",
               @"Liberty and prosperity",
               @"Crescit eundo (It grows as it goes)",
               @"Excelsior (Ever upward)",
               @"Esse quam videri (To be, rather than to seem)",
               @"Liberty and union, now and forever, one and inseparable (One sows for the benefit of another age)",
               @"With God, all things are possible",
               @"Labor omnia vincit (Labor conquers all things)",
               @"Alis volat propriis (She flies with her own wings)",
               @"Virtue, liberty, and independence",
               @"Hope",
               @"Dum spiro spero (While I breathe, I hope)",
               @"Under God the people rule",
               @"Agriculture and Commerce",
               @"Friendship",
               @"Industry",
               @"Freedom and Unity (May the fourteenth star shine bright)",
               @"Sic semper tyrannis (Thus always to tyrants)",
               @"Al-ki (By and by)",
               @"Montani semper liberi (Mountaineers are always free)",
               @"Forward",
               @"Equal Rights"];
}
- (void)AssignFlagSMFileName{
    _flagSMFileName = @[
                        @"Flags/Small/alabama-flag-small",
                        @"Flags/Small/alaska-flag-small",
                        @"Flags/Small/arizona-flag-small",
                        @"Flags/Small/arkansas-flag-small",
                        @"Flags/Small/california-flag-small",
                        @"Flags/Small/colorado-flag-small",
                        @"Flags/Small/connecticut-flag-small",
                        @"Flags/Small/delaware-flag-small",
                        @"Flags/Small/florida-flag-small",
                        @"Flags/Small/georgia-flag-small",
                        @"Flags/Small/hawaii-flag-small",
                        @"Flags/Small/idaho-flag-small",
                        @"Flags/Small/illinois-flag-small",
                        @"Flags/Small/indiana-flag-small",
                        @"Flags/Small/iowa-flag-small",
                        @"Flags/Small/kansas-flag-small",
                        @"Flags/Small/kentucky-flag-small",
                        @"Flags/Small/louisiana-flag-small",
                        @"Flags/Small/maine-flag-small",
                        @"Flags/Small/maryland-flag-small",
                        @"Flags/Small/massachusetts-flag-small",
                        @"Flags/Small/michigan-flag-small",
                        @"Flags/Small/minnesota-flag-small",
                        @"Flags/Small/mississippi-flag-small",
                        @"Flags/Small/missouri-flag-small",
                        @"Flags/Small/montana-flag-small",
                        @"Flags/Small/nebraska-flag-small",
                        @"Flags/Small/nevada-flag-small",
                        @"Flags/Small/new-hampshire-flag-small",
                        @"Flags/Small/new-jersey-flag-small",
                        @"Flags/Small/new-mexico-flag-small",
                        @"Flags/Small/new-york-flag-small",
                        @"Flags/Small/north-carolina-flag-small",
                        @"Flags/Small/north-dakota-flag-small",
                        @"Flags/Small/ohio-flag-small",
                        @"Flags/Small/oklahoma-flag-small",
                        @"Flags/Small/oregon-flag-small",
                        @"Flags/Small/pennsylvania-flag-small",
                        @"Flags/Small/rhode-island-flag-small",
                        @"Flags/Small/south-carolina-flag-small",
                        @"Flags/Small/south-dakota-flag-small",
                        @"Flags/Small/tennessee-flag-small",
                        @"Flags/Small/texas-flag-small",
                        @"Flags/Small/utah-flag-small",
                        @"Flags/Small/vermont-flag-small",
                        @"Flags/Small/virginia-flag-small",
                        @"Flags/Small/washington-flag-small",
                        @"Flags/Small/west-virginia-flag-small",
                        @"Flags/Small/wisconsin-flag-small",
                        @"Flags/Small/wyoming-flag-small"];
    
}
- (void)AssignFlagLGFileName{
    _flagLGFileName = @[
                        @"Flags/Large/alabama-flag-medium",
                        @"Flags/Large/alaska-flag-medium",
                        @"Flags/Large/arizona-flag-medium",
                        @"Flags/Large/arkansas-flag-medium",
                        @"Flags/Large/california-flag-medium",
                        @"Flags/Large/colorado-flag-medium",
                        @"Flags/Large/connecticut-flag-medium",
                        @"Flags/Large/delaware-flag-medium",
                        @"Flags/Large/florida-flag-medium",
                        @"Flags/Large/georgia-flag-medium",
                        @"Flags/Large/hawaii-flag-medium",
                        @"Flags/Large/idaho-flag-medium",
                        @"Flags/Large/illinois-flag-medium",
                        @"Flags/Large/indiana-flag-medium",
                        @"Flags/Large/iowa-flag-medium",
                        @"Flags/Large/kansas-flag-medium",
                        @"Flags/Large/kentucky-flag-medium",
                        @"Flags/Large/louisiana-flag-medium",
                        @"Flags/Large/maine-flag-medium",
                        @"Flags/Large/maryland-flag-medium",
                        @"Flags/Large/massachusetts-flag-medium",
                        @"Flags/Large/michigan-flag-medium",
                        @"Flags/Large/minnesota-flag-medium",
                        @"Flags/Large/mississippi-flag-medium",
                        @"Flags/Large/missouri-flag-medium",
                        @"Flags/Large/montana-flag-medium",
                        @"Flags/Large/nebraska-flag-medium",
                        @"Flags/Large/nevada-flag-medium",
                        @"Flags/Large/new hampshire-flag-medium",
                        @"Flags/Large/new jersey-flag-medium",
                        @"Flags/Large/new mexico-flag-medium",
                        @"Flags/Large/new york-flag-medium",
                        @"Flags/Large/north carolina-flag-medium",
                        @"Flags/Large/north dakota-flag-medium",
                        @"Flags/Large/ohio-flag-medium",
                        @"Flags/Large/oklahoma-flag-medium",
                        @"Flags/Large/oregon-flag-medium",
                        @"Flags/Large/pennsylvania-flag-medium",
                        @"Flags/Large/rhode island-flag-medium",
                        @"Flags/Large/south carolina-flag-medium",
                        @"Flags/Large/south dakota-flag-medium",
                        @"Flags/Large/tennessee-flag-medium",
                        @"Flags/Large/texas-flag-medium",
                        @"Flags/Large/utah-flag-medium",
                        @"Flags/Large/vermont-flag-medium",
                        @"Flags/Large/virginia-flag-medium",
                        @"Flags/Large/washington-flag-medium",
                        @"Flags/Large/west virginia-flag-medium",
                        @"Flags/Large/wisconsin-flag-medium",
                        @"Flags/Large/wyoming-flag-medium"];
    
}
- (void)AssignBirdPicFileName{
    _birdPicFileName = @[
                         @"birds/bird_alabama.jpg",
                         @"birds/bird_alaska.jpg",
                         @"birds/bird_arizona.jpg",
                         @"birds/bird_arkansas.jpg",
                         @"birds/bird_california.jpg",
                         @"birds/bird_colorado.jpg",
                         @"birds/bird_connecticut.jpg",
                         @"birds/bird_delaware.jpg",
                         @"birds/bird_florida.jpg",
                         @"birds/bird_georgia.jpg",
                         @"birds/bird_hawaii.jpg",
                         @"birds/bird_idaho.jpg",
                         @"birds/bird_illinois.jpg",
                         @"birds/bird_indiana.jpg",
                         @"birds/bird_iowa.jpg",
                         @"birds/bird_kansas.jpg",
                         @"birds/bird_kentucky.jpg",
                         @"birds/bird_louisiana.jpg",
                         @"birds/bird_maine.jpg",
                         @"birds/bird_maryland.jpg",
                         @"birds/bird_massachusetts.jpg",
                         @"birds/bird_michigan.jpg",
                         @"birds/bird_minnesota.jpg",
                         @"birds/bird_mississippi.jpg",
                         @"birds/bird_missouri.jpg",
                         @"birds/bird_montana.jpg",
                         @"birds/bird_nebraska.jpg",
                         @"birds/bird_nevada.jpg",
                         @"birds/bird_new hampshire.jpg",
                         @"birds/bird_new jersey.jpg",
                         @"birds/bird_new mexico.jpg",
                         @"birds/bird_new york.jpg",
                         @"birds/bird_north carolina.jpg",
                         @"birds/bird_north dakota.jpg",
                         @"birds/bird_ohio.jpg",
                         @"birds/bird_oklahoma.jpg",
                         @"birds/bird_oregon.jpg",
                         @"birds/bird_pennsylvania.jpg",
                         @"birds/bird_rhode island.jpg",
                         @"birds/bird_south carolina.jpg",
                         @"birds/bird_south dakota.jpg",
                         @"birds/bird_tennessee.jpg",
                         @"birds/bird_texas.jpg",
                         @"birds/bird_utah.jpg",
                         @"birds/bird_vermont.jpg",
                         @"birds/bird_virginia.jpg",
                         @"birds/bird_washington.jpg",
                         @"birds/bird_west virginia.jpg",
                         @"birds/bird_wisconsin.jpg",
                         @"birds/bird_wyoming.jpg"];
    
}
- (void)AssignBird{
    
    _bird = @[
              @"Northern flicker",
              @"Willow ptarmigan",
              @"Cactus wren",
              @"Northern mockingbird",
              @"California quail",
              @"Lark bunting",
              @"American robin",
              @"Delaware Blue Hen",
              @"Northern mockingbird",
              @"Brown thrasher",
              @"Nēnē",
              @"Mountain bluebird",
              @"Northern cardinal",
              @"Northern cardinal",
              @"Eastern goldfinch",
              @"Western meadowlark",
              @"Northern cardinal",
              @"Brown pelican",
              @"Black-capped chickadee",
              @"Baltimore oriole",
              @"Black-capped chickadee",
              @"American robin",
              @"Common loon",
              @"Northern mockingbird",
              @"Eastern bluebird",
              @"Western meadowlark",
              @"Western meadowlark",
              @"Mountain bluebird",
              @"Purple finch",
              @"Eastern goldfinch",
              @"Roadrunner",
              @"Eastern bluebird",
              @"Northern cardinal",
              @"Western meadowlark",
              @"Northern cardinal",
              @"Scissor-tailed flycatcher",
              @"Western meadowlark",
              @"Ruffed grouse",
              @"Rhode Island Red",
              @"Northern mockingbird",
              @"Ring-necked pheasant",
              @"Northern mockingbird",
              @"Northern mockingbird",
              @"California gull",
              @"Hermit thrush",
              @"Northern cardinal",
              @"Willow goldfinch",
              @"Northern cardinal",
              @"American robin",
              @"Western meadowlark"];
    
    
}
- (void)AssignPopulation{
    _population = @[
                    @"4,863,300",
                    @"741,894",
                    @"6,931,071",
                    @"2,988,248",
                    @"39,250,017",
                    @"5,540,545",
                    @"3,576,452",
                    @"952,065",
                    @"20,612,439",
                    @"10,310,371",
                    @"1,428,557",
                    @"1,683,140",
                    @"12,801,539",
                    @"6,633,053",
                    @"3,134,693",
                    @"2,907,289",
                    @"4,436,974",
                    @"4,681,666",
                    @"1,331,479",
                    @"6,016,447",
                    @"6,811,779",
                    @"9,928,300",
                    @"5,519,952",
                    @"2,988,726",
                    @"6,093,000",
                    @"1,042,520",
                    @"1,907,116",
                    @"2,940,058",
                    @"1,334,795",
                    @"8,944,469",
                    @"2,081,015",
                    @"19,745,289",
                    @"10,146,788",
                    @"757,952",
                    @"11,614,373",
                    @"3,923,561",
                    @"4,093,465",
                    @"12,784,227",
                    @"1,056,426",
                    @"4,961,119",
                    @"865,454",
                    @"6,651,194",
                    @"27,862,596",
                    @"3,051,217",
                    @"624,594",
                    @"8,411,808",
                    @"7,288,000",
                    @"1,831,102",
                    @"5,778,708",
                    @"585,501"];
    
    
}

@end
