# World Weather Analysis


## Objective of the analysis project
The objective of this repository is to integrate into Python the genius of using APIs, after performing this analysis it is very clear how through an API we can obtain information in an easy and simple way to be manipulated.

## Weather Database

Weather Database, was developed to obtain 2000 random latitudes, which allowed us to generate a database with all the cities that were in those generated latitudes, this database was the basis of the analysis that was developed and that will be detailed below. .
The generated city database was called "Weather_database" and is a comma separated file.

As shown in the following image, a routine had to be created that read the coordinates in conjunction with the cities API to obtain the cities database, the output of the generated code. iImage 1
image1 [https://github.com/cbello03061/World_Weather_Analysis/blob/main/cities.png]

## Vacations Search

Through this development, the location of the nearby hotels according to the coordinates was determined with the weather database and the GMPAS API, with the aim of providing the possible visitor with the nearby hotels and with a type of climate according to their tastes. in order to show those destinations on a marker layer map with pop-up markers. By having to provide the visitor with an image, it allows you to generate attraction for the destination, as well as for the hotel combined with the weather that will exist at the time of the trip.

The map that is shown to the visitor is as it can be seen in the following image, since it allows him to locate on the map the points where the hotels are located, the name of the city, the country and the current climate, so the visitor can make a very simple planning of your next trip
image[https://github.com/cbello03061/World_Weather_Analysis/blob/main/challenge/vacation_search/WeatherPy_vacation_map.png]



## Vacations Itinerary

Once the visitor has already chosen a place to make his next trip thanks to the information provided, the following development will allow him to have an itinerary with a clear route according to the cities he wants to visit, the objective is to make an extraordinary experience, since , having all the important data of the trip the user his next step, it is only to enjoy each point that he visits without worrying more than taking the routes provided by our tool.

The first step to help the traveler is to choose from the number of hotels and cities that we previously provided, which ones they are interested in visiting.

image2[https://github.com/cbello03061/World_Weather_Analysis/blob/main/challenge/Vacation_Itinerary/WeatherPy_travel_map_markers.png.png]

Once you have chosen the cities and hotels to visit, you must provide us with the starting point and the return point, as well as the cities you will visit in between so that we can help you by providing you with an itinerary that you can view on the map.

In the following image we can see an itinerary with the points mentioned by the traveler.
Image 3 [https://github.com/cbello03061/World_Weather_Analysis/blob/main/challenge/Vacation_Itinerary/WeatherPy_travel_map.png]

## Conclusion
The power of APIs have come to revolutionize the world of data, they are so powerful because of the amount of information they contain, because of the easy way for a professional to manipulate that information that after learning about its majesty if there is a before and a after obtaining the information.