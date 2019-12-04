package main

import (
	"encoding/json"
	"fmt"
	"math/rand"
	"os"
	"strings"
	"time"
)

type city struct {
	name       string
	state      string
	population int
	growth     string
}

var cities = []city{
	{"New York", "New York", 8405837, "4.8%"},
	{"Los Angeles", "California", 3884307, "4.8%"},
	{"Chicago", "Illinois", 2718782, "-6.1%"},
	{"Houston", "Texas", 2195914, "11.0%"},
	{"Philadelphia", "Pennsylvania", 1553165, "2.6%"},
	{"Phoenix", "Arizona", 1513367, "14.0%"},
	{"San Antonio", "Texas", 1409019, "21.0%"},
	{"San Diego", "California", 1355896, "10.5%"},
	{"Dallas", "Texas", 1257676, "5.6%"},
	{"San Jose", "California", 998537, "10.5%"},
	{"Austin", "Texas", 885400, "31.7%"},
	{"Indianapolis", "Indiana", 843393, "7.8%"},
	{"Jacksonville", "Florida", 842583, "14.3%"},
	{"San Francisco", "California", 837442, "7.7%"},
	{"Columbus", "Ohio", 822553, "14.8%"},
	{"Charlotte", "North Carolina", 792862, "39.1%"},
	{"Fort Worth", "Texas", 792727, "45.1%"},
	{"Detroit", "Michigan", 688701, "-27.1%"},
	{"El Paso", "Texas", 674433, "19.4%"},
	{"Memphis", "Tennessee", 653450, "-5.3%"},
	{"Seattle", "Washington", 652405, "15.6%"},
	{"Denver", "Colorado", 649495, "16.7%"},
	{"Washington", "District of Columbia", 646449, "13.0%"},
	{"Boston", "Massachusetts", 645966, "9.4%"},
	{"Nashville-Davidson", "Tennessee", 634464, "16.2%"},
	{"Baltimore", "Maryland", 622104, "-4.0%"},
	{"Oklahoma City", "Oklahoma", 610613, "20.2%"},
	{"Louisville/Jefferson County", "Kentucky", 609893, "10.0%"},
	{"Portland", "Oregon", 609456, "15.0%"},
	{"Las Vegas", "Nevada", 603488, "24.5%"},
	{"Milwaukee", "Wisconsin", 599164, "0.3%"},
	{"Albuquerque", "New Mexico", 556495, "23.5%"},
	{"Tucson", "Arizona", 526116, "7.5%"},
	{"Fresno", "California", 509924, "18.3%"},
	{"Sacramento", "California", 479686, "17.2%"},
	{"Long Beach", "California", 469428, "1.5%"},
	{"Kansas City", "Missouri", 467007, "5.5%"},
	{"Mesa", "Arizona", 457587, "13.5%"},
	{"Virginia Beach", "Virginia", 448479, "5.1%"},
	{"Atlanta", "Georgia", 447841, "6.2%"},
	{"Colorado Springs", "Colorado", 439886, "21.4%"},
	{"Omaha", "Nebraska", 434353, "5.9%"},
	{"Raleigh", "North Carolina", 431746, "48.7%"},
	{"Miami", "Florida", 417650, "14.9%"},
	{"Oakland", "California", 406253, "1.3%"},
	{"Minneapolis", "Minnesota", 400070, "4.5%"},
	{"Tulsa", "Oklahoma", 398121, "1.3%"},
	{"Cleveland", "Ohio", 390113, "-18.1%"},
	{"Wichita", "Kansas", 386552, "9.7%"},
	{"Arlington", "Texas", 379577, "13.3%"},
	{"New Orleans", "Louisiana", 378715, "-21.6%"},
	{"Bakersfield", "California", 363630, "48.4%"},
	{"Tampa", "Florida", 352957, "16.0%"},
	{"Honolulu", "Hawaii", 347884, "-6.2%"},
	{"Aurora", "Colorado", 345803, "24.4%"},
	{"Anaheim", "California", 345012, "4.7%"},
	{"Santa Ana", "California", 334227, "-1.2%"},
	{"St. Louis", "Missouri", 318416, "-8.2%"},
	{"Riverside", "California", 316619, "22.5%"},
	{"Corpus Christi", "Texas", 316381, "14.1%"},
	{"Lexington-Fayette", "Kentucky", 308428, "18.0%"},
	{"Pittsburgh", "Pennsylvania", 305841, "-8.3%"},
	{"Anchorage", "Alaska", 300950, "15.4%"},
	{"Stockton", "California", 298118, "21.8%"},
	{"Cincinnati", "Ohio", 297517, "-10.1%"},
	{"St. Paul", "Minnesota", 294873, "2.8%"},
	{"Toledo", "Ohio", 282313, "-10.0%"},
	{"Greensboro", "North Carolina", 279639, "22.3%"},
	{"Newark", "New Jersey", 278427, "2.1%"},
	{"Plano", "Texas", 274409, "22.4%"},
	{"Henderson", "Nevada", 270811, "51.0%"},
	{"Lincoln", "Nebraska", 268738, "18.0%"},
	{"Buffalo", "New York", 258959, "-11.3%"},
	{"Jersey City", "New Jersey", 257342, "7.2%"},
	{"Chula Vista", "California", 256780, "46.2%"},
	{"Fort Wayne", "Indiana", 256496, "1.0%"},
	{"Orlando", "Florida", 255483, "31.2%"},
	{"St. Petersburg", "Florida", 249688, "0.3%"},
	{"Chandler", "Arizona", 249146, "38.7%"},
	{"Laredo", "Texas", 248142, "38.2%"},
	{"Norfolk", "Virginia", 246139, "5.0%"},
	{"Durham", "North Carolina", 245475, "29.9%"},
	{"Madison", "Wisconsin", 243344, "15.8%"},
	{"Lubbock", "Texas", 239538, "19.6%"},
	{"Irvine", "California", 236716, "61.3%"},
	{"Winston-Salem", "North Carolina", 236441, "16.9%"},
	{"Glendale", "Arizona", 234632, "5.7%"},
	{"Garland", "Texas", 234566, "8.5%"},
	{"Hialeah", "Florida", 233394, "3.2%"},
	{"Reno", "Nevada", 233294, "26.8%"},
	{"Chesapeake", "Virginia", 230571, "15.1%"},
	{"Gilbert", "Arizona", 229972, "96.0%"},
	{"Baton Rouge", "Louisiana", 229426, "0.4%"},
	{"Irving", "Texas", 228653, "19.1%"},
	{"Scottsdale", "Arizona", 226918, "11.0%"},
	{"North Las Vegas", "Nevada", 226877, "92.2%"},
	{"Fremont", "California", 224922, "10.0%"},
	{"Boise City", "Idaho", 214237, "9.5%"},
	{"Richmond", "Virginia", 214114, "8.2%"},
	{"San Bernardino", "California", 213708, "13.0%"},
	{"Birmingham", "Alabama", 212113, "-12.3%"},
	{"Spokane", "Washington", 210721, "7.0%"},
	{"Rochester", "New York", 210358, "-4.1%"},
	{"Des Moines", "Iowa", 207510, "3.9%"},
	{"Modesto", "California", 204933, "7.7%"},
	{"Fayetteville", "North Carolina", 204408, "2.4%"},
	{"Tacoma", "Washington", 203446, "4.9%"},
	{"Oxnard", "California", 203007, "18.2%"},
	{"Fontana", "California", 203003, "38.3%"},
	{"Columbus", "Georgia", 202824, "8.7%"},
	{"Montgomery", "Alabama", 201332, "-0.1%"},
	{"Moreno Valley", "California", 201175, "40.4%"},
	{"Shreveport", "Louisiana", 200327, "-0.1%"},
	{"Aurora", "Illinois", 199963, "38.4%"},
	{"Yonkers", "New York", 199766, "1.8%"},
	{"Akron", "Ohio", 198100, "-8.6%"},
	{"Huntington Beach", "California", 197575, "3.9%"},
	{"Little Rock", "Arkansas", 197357, "7.6%"},
	{"Augusta-Richmond County", "Georgia", 197350, "1.1%"},
	{"Amarillo", "Texas", 196429, "12.8%"},
	{"Glendale", "California", 196021, "0.3%"},
	{"Mobile", "Alabama", 194899, "-1.9%"},
	{"Grand Rapids", "Michigan", 192294, "-2.8%"},
	{"Salt Lake City", "Utah", 191180, "5.1%"},
	{"Tallahassee", "Florida", 186411, "21.8%"},
	{"Huntsville", "Alabama", 186254, "16.3%"},
	{"Grand Prairie", "Texas", 183372, "43.1%"},
	{"Knoxville", "Tennessee", 183270, "3.9%"},
	{"Worcester", "Massachusetts", 182544, "5.8%"},
	{"Newport News", "Virginia", 182020, "0.9%"},
	{"Brownsville", "Texas", 181860, "26.8%"},
	{"Overland Park", "Kansas", 181260, "19.4%"},
	{"Santa Clarita", "California", 179590, "15.3%"},
	{"Providence", "Rhode Island", 177994, "2.3%"},
	{"Garden Grove", "California", 175140, "5.8%"},
	{"Chattanooga", "Tennessee", 173366, "10.5%"},
	{"Oceanside", "California", 172794, "6.6%"},
	{"Jackson", "Mississippi", 172638, "-6.8%"},
	{"Fort Lauderdale", "Florida", 172389, "0.7%"},
	{"Santa Rosa", "California", 171990, "15.2%"},
	{"Rancho Cucamonga", "California", 171386, "32.7%"},
	{"Port St. Lucie", "Florida", 171016, "91.7%"},
	{"Tempe", "Arizona", 168228, "5.8%"},
	{"Ontario", "California", 167500, "5.5%"},
	{"Vancouver", "Washington", 167405, "14.2%"},
	{"Cape Coral", "Florida", 165831, "60.4%"},
}

var states = []string{
	"AL",
	"AK",
	"AS",
	"AZ",
	"AR",
	"CA",
	"CO",
	"CT",
	"DE",
	"DC",
	"FM",
	"FL",
	"GA",
	"GU",
	"HI",
	"ID",
	"IL",
	"IN",
	"IA",
	"KS",
	"KY",
	"LA",
	"ME",
	"MH",
	"MD",
	"MA",
	"MI",
	"MN",
	"MS",
	"MO",
	"MT",
	"NE",
	"NV",
	"NH",
	"NJ",
	"NM",
	"NY",
	"NC",
	"ND",
	"MP",
	"OH",
	"OK",
	"OR",
	"PW",
	"PA",
	"PR",
	"RI",
	"SC",
	"SD",
	"TN",
	"TX",
	"UT",
	"VT",
	"VI",
	"VA",
	"WA",
	"WV",
	"WI",
	"WY",
}

func alpha() string {
	p := make([]byte, 26)
	for i := 0; i < 26; i++ {
		p[i] = 'a' + byte(i)
	}
	return string(p)
}

var seededRand = rand.New(rand.NewSource(time.Now().UnixNano()))

func randStringWithCharset(length int, charset string) string {
	b := make([]byte, length)
	for i := range b {
		b[i] = charset[seededRand.Intn(len(charset))]
	}
	return strings.Title(string(b))
}

func randString(length int) string {
	return randStringWithCharset(length, alpha())
}

func randState() string {
	return states[seededRand.Intn(len(states))]
}

func randCity() city {
	return cities[seededRand.Intn(len(cities))]
}

const numItems = 1000

func main() {
	f, err := os.Create("database.txt")
	if err != nil {
		panic(err)
	}
	defer f.Close()

	fmt.Fprintln(f, "---- PEOPLE ----")
	for i := 0; i < numItems; i++ {
		fName := randString(seededRand.Intn(12) + 2)
		lName := randString(seededRand.Intn(12) + 2)
		state := randState()
		city := randCity()
		dob := time.Now().AddDate(-(seededRand.Intn(100) + 1), -(seededRand.Intn(11) + 1), -(seededRand.Intn(26) + 1))
		joined := dob.AddDate((seededRand.Intn(100) + 1), (seededRand.Intn(11) + 1), (seededRand.Intn(26) + 1))
		if joined.After(time.Now()) {
			joined = time.Now()
		}
		lastvisit := joined.AddDate((seededRand.Intn(100) + 1), (seededRand.Intn(11) + 1), (seededRand.Intn(26) + 1))
		if lastvisit.After(time.Now()) {
			lastvisit = time.Now()
		}

		type favs struct {
			Desserts     []string
			Destinations []string
		}

		rds := []string{"cookie", "banana", "oranges", "ice cream", "strawberries", "blueberries", "cake"}
		rls := []string{"Hawaii", "Canada", "Spain", "France", "Italy", "Uruguay", "Peru", "Saudia Arabia", "Japan", "China", "India", "Bali", "Vietnam", "Thailand"}

		fv := favs{
			Desserts:     []string{"yum" + randString(seededRand.Intn(6)+2), "yum" + randString(seededRand.Intn(6)+2), "yum" + randString(seededRand.Intn(6)+2), rds[seededRand.Intn(len(rds))]},
			Destinations: []string{"loc" + randString(seededRand.Intn(6)+2), "loc" + randString(seededRand.Intn(6)+2), "loc" + randString(seededRand.Intn(6)+2),rls[seededRand.Intn(len(rls))]},
		}

		xb, err := json.Marshal(fv)
		if err != nil {
			panic(err)
		}

		const tf = "2006-01-02 15:04:05"

		points := (seededRand.Intn(10000) + 1)
		fmt.Fprintf(f, "('%s', '%s', '%s', '%s', '%s', '%s', '%s', %d, '%s')", fName, lName, state, city.name, dob.Format(tf), joined.Format(tf), lastvisit.Format(tf), points, string(xb))
		if i != numItems-1 {
			fmt.Fprint(f, ",")
		}
		fmt.Fprint(f, "\n")
	}
	fmt.Fprintln(f, "---- ITEMS ----")
	for i := 0; i < numItems; i++ {
		item := randString(seededRand.Intn(12) + 2)
		fmt.Fprintf(f, "('%s')", item)
		if i != numItems-1 {
			fmt.Fprint(f, ",")
		}
		fmt.Fprint(f, "\n")
	}
	fmt.Fprintln(f, "---- LISTS ----")
	for i := 0; i < numItems; i++ {
		num := seededRand.Intn(numItems) + 1
		lname := randString(seededRand.Intn(12) + 2)
		fmt.Fprintf(f, "(%d, '%s')", num, lname)
		if i != numItems-1 {
			fmt.Fprint(f, ",")
		}
		fmt.Fprint(f, "\n")
	}
	fmt.Fprintln(f, "---- LISTITEMS ----")
	for i := 0; i < numItems; i++ {
		lID := seededRand.Intn(numItems) + 1
		iID := seededRand.Intn(numItems) + 1
		ipurchased := seededRand.Intn(10) + 1
		idesired := seededRand.Intn(10) + ipurchased
		fmt.Fprintf(f, "(%d, %d, %d, %d)", lID, iID, idesired, ipurchased)
		if i != numItems-1 {
			fmt.Fprint(f, ",")
		}
		fmt.Fprint(f, "\n")
	}
}
