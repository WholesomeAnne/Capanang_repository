#1a Sequence from -5 to 5.
five <- -5:5
five

#1b
x <- 1:7
x

#2
jump <- seq(1, 3, by = 0.2)
jump

#3
workersAges <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,18)
workersAges

  #3a Third Element
    ThirdElement <- workersAges[3]
    ThirdElement

  #3b 
    SecondElement <- workersAges[2]
    SecondElement
    FourthElement <- workersAges[4]
    FourthElement
    SecondFourth <- c(SecondElement, FourthElement)
    SecondFourth
      
  #3c
    WorkersElements <- workersAges [c(2:50)]
    WorkersElements
          

#4
  x <- c("first"=3, "second"=0, "third"=9)
  names (x)
  
  #4a
    x[c("first", "third")]

#5
x <- c(-3:2)
x

  #5a
  x[2] = 0
  x
  
  
#6
  
  Month = c("Jan", "Feb", "March","April", "May","June")
  PricePerLiter <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
  PurchaseQuantity <- c(25, 30, 40, 50, 10, 45)
  
  DieselPurchased <- data.frame (
  Month, 
  PricePerLiter, 
  PurchaseQuantity 
  )
  DieselPurchased
  
  
  #6b
  weighted.mean(PricePerLiter, PurchaseQuantity)
  
  
  
#7
    rivers
    length(rivers)
    data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),sd(rivers), min(rivers), max(rivers))
    data
    
#8
    
    PowerRanking <- 1:25
    CelebrityName <- c("Tom Cruise","Rolling Stones", "Oprah Winfrey","U2","Tiger Woods",
                      "Steven Spielberg","Howarf Stern","50 Cent","Cast of the Sopranos","Dan Brown",
                      "Bruce Springsteen", "Donald Trump","Muhammand Ali","Paul McCartney","George Lucas",
                      "Elton John","David Letterman","Phil Mickelson", "J.K Rowling","Bradd Pitt",
                      "Peter Jackson","Dr.Phil McGraw","Jay Lenon","Celine Dion","Kobe Bryan")
    Pay <- c(67, 90, 225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31)
    
    CelebrityAnnualPay <- data.frame(
      PowerRanking, 
      CelebrityName,
      Pay
    )
    CelebrityAnnualPay
    
    
    #8b
      CelebrityAnnualPay [19, "PowerRanking"] = 15
      CelebrityAnnualPay[19, "Pay"] = 90
      CelebrityAnnualPay
    


