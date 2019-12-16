sideBar <- sidebarMenu(
  id = id.general.sidebar,

  #Empty selectInputs to be filled serverside
  selectInput(id.general.book, label = "Book", choices = c(""), multiple = FALSE),
  selectInput(id.general.chapter, label = "Chapter", choices = c(""), multiple = FALSE),
  selectInput(id.general.word, label = "Word", choices = c(""), multiple = FALSE),

  #TextGen
  sliderInput(id.textGen.markov.maxOverlapTotal, label = "Markov max overlap total", min = 1, max = 100, value = 15),
  sliderInput(id.textGen.markov.maxOverlapRatio, label = "Markov max overlap ratio", min = 1, max = 100, value = 70),
  sliderInput(id.textGen.markov.maxSentenceLength, label = "Markov max sentence length (letters)", min = 1, max = 500, value = 150),

  htmlOutput("urlText", inline = TRUE)
)

print("shiny - ui - sideBar.R")