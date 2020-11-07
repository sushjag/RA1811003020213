library(robotstxt)
path<-paths_allowed("https://en.wikipedia.org/wiki/List_of_countries_and_dependencies_by_population")
link<-"https://en.wikipedia.org/wiki/List_of_countries_and_dependencies_by_population"
#Read this website
library(rvest)
web<-read_html(link)
Name<-web%>%html_nodes("th+ td")%>%html_text()
View(Name)
