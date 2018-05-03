# AntSchedule API
Backend REST API implemented in Go to support the course scheduling web application [AntSchedule](http://antschedule.io)
Github repository of the whole application is available at [](https://github.com/mirror6677/AntSchedule)

## Key Features
* Web scaper that retrieves course data by using channels and Goroutines to concurrently fetch multiple Bucknell bannerweb sites at the same time.
* Supports courses search autocomplete by department, course number, CCC Requirements, course title, and more to come!
* Supports course detail queries (CRN, meeting time, room, instructor, description, etc) for one course at a time.

## How to Run
* Put `main.go` inside the go source folder, like this: `~/go/src/project_name/main.go`
* Change directory into the folder containing `main.go`
* Install all dependencies by running the following

```bash
go get github.com/gorilla/mux github.com/rs/cors github.com/yhat/scrape golang.org/x/net/html golang.org/x/net/html/atom
```

* Run `main.go`

```bash
go run main.go
```

* Open a browser and go to `localhost:8080`
* Follow the video demo below to access main features

## Video Demo
[Demo link](https://vimeo.com/267703975)
Password: iloveCS208