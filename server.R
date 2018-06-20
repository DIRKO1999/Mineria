#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

source("global.R", local = T)


library(shiny)
library(readr)
library(readxl)
library(quantmod)
library(plotly)
library(xts)
library(dygraphs)



shinyServer(function(input, output) {
   
  output$time1 <- renderDygraph({
    
    vcc_xts <- xts(vCC$Toneladas,order.by=vCC$Date,frequency=365)
    dygraph(vcc_xts,ylab="Toneladas", 
            main="Produccion de Carbon por anhios") %>%
      dySeries("V1",label="VCC") %>%
      dyOptions(colors = c("blue")) %>%
      dyRangeSelector()
    
  })
  
  output$time2 <- renderDygraph({
    
    ded_xts <- xts(dED$Toneladas,order.by=dED$Date,frequency=365)
    dygraph(ded_xts,ylab="Toneladas", 
            main="Produccion de Carbon por anhios") %>%
      dySeries("V1",label="DED") %>%
      dyOptions(colors = c("red")) %>%
      dyRangeSelector()
    
  })
  
  output$time3 <- renderDygraph({
    
    nl_xts <- xts(NL$Toneladas,order.by=NL$Date,frequency=365)
    
     dygraph(nl_xts,ylab="Toneladas", 
                 main="Produccion de Carbon por anhios") %>%
      dySeries("V1",label="NL") %>%
      dyOptions(colors = c("black")) %>%
      dyRangeSelector()
    
  })
  
  output$time4 <- renderDygraph({
    
    cmu_xts <- xts(cMU$Toneladas,order.by=cMU$Date,frequency=365)
    
    dygraph(cmu_xts,ylab="Toneladas", 
            main="Produccion de Carbon por anhios") %>%
      dySeries("V1",label="CMU") %>%
      dyOptions(colors = c("green")) %>%
      dyRangeSelector()
    
  })
  
  output$time5 <- renderDygraph({
    
    cp_xts <- xts(cP$Toneladas,order.by=cP$Date,frequency=365)
    
    dygraph(cp_xts,ylab="Toneladas", 
            main="Produccion de Carbon por anhios") %>%
      dySeries("V1",label="CP") %>%
      dyOptions(colors = c("orange")) %>%
      dyRangeSelector()
    
  })
  
  output$time6 <- renderDygraph({
    
    clj_xts <- xts(cLJ$Toneladas,order.by=cLJ$Date,frequency=365)
    
    dygraph(clj_xts,ylab="Toneladas", 
            main="Produccion de Carbon por anhios") %>%
      dySeries("V1",label="CLJ") %>%
      dyOptions(colors = c("purple")) %>%
      dyRangeSelector()
    
  })
  
  output$time7 <- renderDygraph({
    
    dll_xts <- xts(dLL$Toneladas,order.by=dLL$Date,frequency=365)
    
    dygraph(dll_xts,ylab="Toneladas", 
            main="Produccion de Carbon por anhios") %>%
      dySeries("V1",label="DLL") %>%
      dyOptions(colors = c("violet")) %>%
      dyRangeSelector()
    
  })
  
  output$time8 <- renderDygraph({
    
    lf_xts <- xts(lF$Toneladas,order.by=lF$Date,frequency=365)
    
    dygraph(lf_xts,ylab="Toneladas", 
            main="Produccion de Carbon por anhios") %>%
      dySeries("V1",label="LF") %>%
      dyOptions(colors = c("brown")) %>%
      dyRangeSelector()
    
  })
  
  output$time9 <- renderDygraph({
    
    cdt_xts <- xts(cDT$Toneladas,order.by=cDT$Date,frequency=365)
    
    dygraph(cdt_xts,ylab="Toneladas", 
            main="Produccion de Carbon por anhios") %>%
      dySeries("V1",label="CDT") %>%
      dyOptions(colors = c("#00FFFF")) %>%
      dyRangeSelector()
    
  })
  
  output$time10 <- renderDygraph({
    
    ca_xts <- xts(cA$Toneladas,order.by=cA$Date,frequency=365)
    
    dygraph(ca_xts,ylab="Toneladas", 
            main="Produccion de Carbon por anhios") %>%
      dySeries("V1",label="CA") %>%
      dyOptions(colors = c("#0B5F0B")) %>%
      dyRangeSelector()
    
  })
  
  output$timeresu <- renderDygraph({
    vcc_xts <- xts(vCC$Toneladas,order.by=vCC$Date,frequency=365)
    ded_xts <- xts(dED$Toneladas,order.by=dED$Date,frequency=365)
    nl_xts <- xts(NL$Toneladas,order.by=NL$Date,frequency=365)
    cmu_xts <- xts(cMU$Toneladas,order.by=cMU$Date,frequency=365)
    cp_xts <- xts(cP$Toneladas,order.by=cP$Date,frequency=365)
    clj_xts <- xts(cLJ$Toneladas,order.by=cLJ$Date,frequency=365)
    dll_xts <- xts(dLL$Toneladas,order.by=dLL$Date,frequency=365)
    lf_xts <- xts(lF$Toneladas,order.by=lF$Date,frequency=365)
    cdt_xts <- xts(cDT$Toneladas,order.by=cDT$Date,frequency=365)
    ca_xts <- xts(cA$Toneladas,order.by=cA$Date,frequency=365)
    
    stocks <- cbind(vcc_xts, ded_xts, nl_xts, cmu_xts, cp_xts, clj_xts, dll_xts, lf_xts, cdt_xts, ca_xts)
    
    dygraph(stocks,ylab="Toneladas", 
            main="Produccion de Carbon por anhios") %>%
      dySeries("..1",label="VCC") %>%
      dySeries("..2", label = "DED")%>%
      dySeries("..3", label = "NL")%>%
      dySeries("..4", label = "CMU")%>%
      dySeries("..5", label = "CP")%>%
      dySeries("..6", label = "CLJ")%>%
      dySeries("..7", label = "DLL")%>%
      dySeries("..8", label = "LF")%>%
      dySeries("..9", label = "CDT")%>%
      dySeries("..10", label = "CA")%>%
      dyOptions(colors = c("#0B5F0B", "#2214F8", "#7370A2", "#D11725", "#25D117", "#122E10", "#1F102E", "#14D5CC", "#D56C14", "#879406")) %>%
      dyRangeSelector()
    
  })
  
  output$box1 <- renderPlotly({
    dat <- data.frame(
      Toneladas <- vCC$Toneladas
    )
    
    dat$cond <- 'VCC'
    
    p <- ggplot(dat, aes(x=cond, y=Toneladas, fill=cond)) + geom_boxplot()
    
    p <- ggplotly(p)
  })
  
  output$box2 <- renderPlotly({
    dat <- data.frame(
      Toneladas <- dED$Toneladas
    )
    
    dat$cond <- 'DED'
    
    p <- ggplot(dat, aes(x=cond, y=Toneladas, fill=cond)) + geom_boxplot()
    
    p <- ggplotly(p)
  })
  
  output$box3 <- renderPlotly({
    dat <- data.frame(
      Toneladas <- NL$Toneladas
    )
    
    dat$cond <- 'NL'
    
    p <- ggplot(dat, aes(x=cond, y=Toneladas, fill=cond)) + geom_boxplot()
    
    p <- ggplotly(p)
  })
  
  output$box4 <- renderPlotly({
    dat <- data.frame(
      Toneladas <- cMU$Toneladas
    )
    
    dat$cond <- 'CMU'
    
    p <- ggplot(dat, aes(x=cond, y=Toneladas, fill=cond)) + geom_boxplot()
    
    p <- ggplotly(p)
  })
  
  output$box5 <- renderPlotly({
    dat <- data.frame(
      Toneladas <- cP$Toneladas
    )
    
    dat$cond <- 'CP'
    
    p <- ggplot(dat, aes(x=cond, y=Toneladas, fill=cond)) + geom_boxplot()
    
    p <- ggplotly(p)
  })
  
  output$box6 <- renderPlotly({
    dat <- data.frame(
      Toneladas <- cLJ$Toneladas
    )
    
    dat$cond <- 'CLJ'
    
    p <- ggplot(dat, aes(x=cond, y=Toneladas, fill=cond)) + geom_boxplot()
    
    p <- ggplotly(p)
  })
  
  output$box7 <- renderPlotly({
    dat <- data.frame(
      Toneladas <- dLL$Toneladas
    )
    
    dat$cond <- 'DLL'
    
    p <- ggplot(dat, aes(x=cond, y=Toneladas, fill=cond)) + geom_boxplot()
    
    p <- ggplotly(p)
  })
  
  output$box8 <- renderPlotly({
    dat <- data.frame(
      Toneladas <- lF$Toneladas
    )
    
    dat$cond <- 'LF'
    
    p <- ggplot(dat, aes(x=cond, y=Toneladas, fill=cond)) + geom_boxplot()
    
    p <- ggplotly(p)
  })
  
  output$box9 <- renderPlotly({
    dat <- data.frame(
      Toneladas <- cDT$Toneladas
    )
    
    dat$cond <- 'CDT'
    
    p <- ggplot(dat, aes(x=cond, y=Toneladas, fill=cond)) + geom_boxplot()
    
    p <- ggplotly(p)
  })
  
  output$box10 <- renderPlotly({
    dat <- data.frame(
      Toneladas <- cA$Toneladas
    )
    
    dat$cond <- 'CA'
    
    p <- ggplot(dat, aes(x=cond, y=Toneladas, fill=cond)) + geom_boxplot()
    
    p <- ggplotly(p)
  })
  
  output$resu1 <- renderPlotly({
    dat1 <- data.frame(
      Toneladas = vCC$Toneladas
     
    )
    
    dat2 <- data.frame(
      Toneladas = dED$Toneladas
    
    )
    
    dat3 <- data.frame(
      
      Toneladas = NL$Toneladas
      
    )
    
    dat4 <- data.frame(
      
      Toneladas = cMU$Toneladas
      
    )
    
    dat5 <- data.frame(
      
      Toneladas = cP$Toneladas
      
    )
    
    dat6 <- data.frame(
      
      Toneladas = cLJ$Toneladas
      
    )
    
    dat7 <- data.frame(
      
      Toneladas = dLL$Toneladas
      
    )
    
    dat8 <- data.frame(
      
      Toneladas = lF$Toneladas
      
    )
    
    dat9 <- data.frame(
      
      Toneladas = cDT$Toneladas
      
    )
    
    dat10 <- data.frame(
      
      Toneladas = cA$Toneladas
      
    )
    
    dat1$cond <- 'CA'
    dat2$cond <- 'DED'
    dat3$cond <- 'NL'
    dat4$cond <- 'CMU'
    dat5$cond <- 'CP'
    dat6$cond <- 'CLJ'
    dat7$cond <- 'DLL'
    dat8$cond <- 'LF'
    dat9$cond <- 'CDT'
    dat10$cond <- 'CA'
    
    dat <- rbind(dat1, dat2, dat3, dat4, dat5, dat6, dat7, dat8, dat9, dat10)
    
    
    p <- ggplot(dat, aes(x=cond, y=Toneladas, fill=cond)) + geom_boxplot()
    
    p <- ggplotly(p)
  })

  
})
