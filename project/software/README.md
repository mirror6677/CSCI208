# AntSchedule API
Backend REST API implemented in Go to support the course scheduling web application [AntSchedule](http://antschedule.io)

Github repository of the whole application is available at: [https://github.com/mirror6677/AntSchedule](https://github.com/mirror6677/AntSchedule)

## Key Features
* Web scaper that retrieves course data by using channels and Goroutines to concurrently fetch and parse multiple Bucknell bannerweb sites at the same time
* Supports courses search autocomplete by department, course number, CCC Requirements, course title, and more to come
* Supports course detail queries (CRN, meeting time, room, instructor, description, etc) for one course at a time
* Course detail includes information about all linked courses (Labs, Recitations, Problem Sessions) so that users will not need to know what linked courses they need to add

## How to Run
* Put `main.go` inside the go source folder, like this: `~/go/src/project_name/main.go`
* Change directory into the folder containing `main.go`
* Install all required packages and dependencies

```bash
go get github.com/gorilla/mux github.com/rs/cors github.com/yhat/scrape golang.org/x/net/html golang.org/x/net/html/atom
```

* Run `main.go`

```bash
go run main.go
```

* Open a browser and go to `localhost:8080`

## How to Use
This API is currently hosted at: [https://antschedule-api.herokuapp.com](https://antschedule-api.herokuapp.com), and can be accessed through the following endpoints.
* `/searchCourses/{query}`
    * returns a list of courses with basic information (department, course number, title) that matches the query
    * query is a string that can be a department, department + course number, CCC requirement, or part of a course title
* `/courseDetail/{department}/{number}/[{title}]`
    * returns a list of sections of the course being searched with detailed information (department, course number, section number, title, time, room, instructor, seats, CCC requirements, description, notes, linked lab/recitation/problem sections)
    * department is a department 4-letter code; number is a course number; title is an optional parameter that limits the results to only sections that match the title

## Video Demo
[Demo link](https://vimeo.com/267703975)

Password: iloveCS208