library(dplyr)
library(tidyr)

#Make map
library(maps)
library(mapdata)

#Draw arrows (for the 2nd map)
library(shape)

#Box
WEST_X<-(13.4)
EAST_X<-(24.6)
NORTH_Y<-(-28.2)
SOUTH_Y<-(-35.8)

#Other parameters
CEX<-1.1
TCK<--0.03
CEX_AXS<-1.1
CEX_TEXT<-0.9
CEX_RATE<-0.8
TEXT_FACTOR<-0.25
TEXT_FACTOR_H<-0.16
TEXT_FACTOR_V<-0.16

#Map of Semimytilus algosus in South Africa - ocurrence records
#Updated on 19 May 2020
setwd("/Users/kevinckma/Desktop/")
#pdf("semimytilus map occurence.pdf",width=6,height=4.7)
{
    #Map
    par(oma=c(1.7,3,0,0)+0.1,mfrow=c(1,1),family="ArialMT")
    map("worldHires",
        xlim=c(WEST_X,EAST_X),
        ylim=c(SOUTH_Y,NORTH_Y),
        col="gray65",
        lwd=1,
        border="gray35",fill=T,mar=c(0,0,0,0))
    
    segments(16.454843-0.03,-28.635067+0.03,16.454843-0.03-0.4,-28.635067+0.03-0.07,lty=1,lwd=1,col="#000000") #Oranjemund
    text(16.454843-0.03-0.4-0.1,-28.635067-0.07,"Oranjemund",cex=CEX_TEXT,adj=1) #Oranjemund
    segments(16.482333,-28.649500,16.482333-0.2,-28.649500-0.39+0.02,lty=1,lwd=1,col="#000000") #Alexanderbaai
    text(16.482333-0.2-0.12,-28.649500-0.39-0.02,"Alexanderbaai",cex=CEX_TEXT,adj=1) #Alexanderbaai
    text(16.867159+TEXT_FACTOR,-29.251993,"Port Nolloth",cex=CEX_TEXT,adj=0) #Port Nolloth
    text(17.055940+TEXT_FACTOR,-29.695139,"Kleinsee",cex=CEX_TEXT,adj=0) #Kleinsee
    text(17.27383+TEXT_FACTOR,-30.31341,"Hondeklipbaai",cex=CEX_TEXT,adj=0) #Hondeklipbaai
    text(17.568079-0.03+TEXT_FACTOR,-30.835533+0.03,"Groenriviermond",cex=CEX_TEXT,adj=0) #Groenriviermond
    text(17.881037+TEXT_FACTOR,-31.299596,"Brand-se-baai",cex=CEX_TEXT,adj=0) #Brand-se-baai
    text(18.23491+TEXT_FACTOR,-31.81317+0.06,"Doringbaai",cex=CEX_TEXT,adj=0) #Doringbaai
    text(18.301891+TEXT_FACTOR,-32.098771+0.02,"Lambertsbaai",cex=CEX_TEXT,adj=0) #Lambertsbaai
    segments(18.330919,-32.314516,18.330919+0.4,-32.314516-0.12,lty=1,lwd=1,col="#000000") #Elandsbaai
    text(18.330919+0.4+0.1,-32.314516-0.12,"Elandsbaai",cex=CEX_TEXT,adj=0) #Elandsbaai
    segments(18.016652,-32.750936,18.016652-0.5,-32.750936+0.9-0.124,lty=1,lwd=1,col="#000000") #St. Helena Bay
    text(18.016652-0.55,-32.750936+0.9+0.12-0.124,"St. Helena Bay",cex=CEX_TEXT,adj=1) #St. Helena Bay
    segments(17.88643,-32.80704,17.88643-0.6,-32.80704+0.6-0.115,lty=1,lwd=1,col="#000000") #Paternoster
    text(17.88643-0.7,-32.80704+0.6+0.1-0.115,"Paternoster",cex=CEX_TEXT,adj=1) #Paternoster
    segments(17.88526-0.05,-32.94307,17.88526-0.7-0.05,-32.94307+0.4-0.075,lty=1,lwd=1,col="#000000") #Jacobsbaai
    text(17.88526-0.7-0.1-0.05,-32.94307+0.41-0.075,"Jacobsbaai",cex=CEX_TEXT,adj=1) #Jacobsbaai
    segments(17.967418,-33.045382-0.04,17.967418-0.65,-33.045382+0.075-0.02-0.05,lty=1,lwd=1,col="#000000") #Marcus Island
    text(17.967418-0.65-0.1,-33.045382+0.1-0.05,"Marcus Island",cex=CEX_TEXT,adj=1) #Marcus Island
    segments(18.15079,-33.35424,18.15079-0.5,-33.35424,lty=1,lwd=1,col="#000000") #Yzerfontein
    text(18.15079-0.6,-33.35424,"Yzerfontein",cex=CEX_TEXT,adj=1) #Yzerfontein
    segments(18.442226,-33.721320,18.442226+0.35,-33.721320+0.66-0.06,lty=1,lwd=1,col="#000000") #Melkbosstrand
    text(18.442226+0.4+0.1-0.046,-33.721320+0.7,"Melkbosstrand",cex=CEX_TEXT,adj=0) #Melkbosstrand
    segments(18.350486,-33.986861,18.350486-0.7,-33.986861+0.19-0.05,lty=1,lwd=1,col="#000000") #Oudekraai
    text(18.350486-0.7-0.1,-33.986861+0.19-0.05,"Oudekraai",cex=CEX_TEXT,adj=1)  #Oudekraai
    segments(18.345291,-34.058865,18.345291-0.5,-34.058865-0.17,lty=1,lwd=1,col="#000000") #Hout Bay
    text(18.345291-0.5-0.1,-34.058865-0.17,"Hout Bay",cex=CEX_TEXT,adj=1) #Hout Bay
    segments(18.450939-0.025+0.065,-34.195563-0.05,18.450939-0.025-0.3,-34.195563-0.67+0.1,lty=1,lwd=1,col="#000000") #Seaforth
    text(18.450939-0.025-0.3-0.67,-34.195563-0.67-0.145+0.1,"Seaforth",cex=CEX_TEXT,adj=0.5) #Seaforth
    segments(19.27048,-34.40920,19.27048+0.35,-34.40920+0.25,lty=1,lwd=1,col="#000000") #Hermanus
    text(19.27048+0.35+0.1,-34.40920+0.25+0.05,"Hermanus",cex=CEX_TEXT,adj=0) #Hermanus
    segments(18.86976,-34.15993,18.86976+0.5,-34.15993-0.8,lty=1,lwd=1,col="#000000") #Gordons Bay
    text(18.86976+0.5+0.95,-34.15993-0.81-0.2,"Gordons Bay",cex=CEX_TEXT,adj=0.5) #Gordons Bay
    
    #2009-2016 data
    points(16.454843-0.03,-28.635067+0.03,pch=21,cex=CEX,col="#000000",bg="#FFFFFF") #Oranjemund
    points(16.482333,-28.649500,pch=21,cex=CEX,col="#000000",bg="#484848") #Alexanderbaai
    points(17.212067,-30.155500,pch=21,cex=CEX,col="#000000",bg="#FFFFFF") #21 km n of Hondeklipbaai
    points(17.248450,-30.243667,pch=21,cex=CEX,col="#000000",bg="#FFFFFF") #5 km n of Hondeklipbaai
    points(17.351583,-30.453850,pch=21,cex=CEX,col="#000000",bg="#FFFFFF") #20 km s of Hondeklipbaai
    points(17.296317,-30.369700,pch=21,cex=CEX,col="#000000",bg="#FFFFFF") #5 km s of Hondeklipbaai
    points(17.554183-0.03,-30.814850+0.03,pch=21,cex=CEX,col="#000000",bg="#FFFFFF") #5 km n of Groenriviermond
    points(16.867159,-29.251993,pch=21,cex=CEX,col="#000000",bg="#FFFFFF") #Port Nolloth
    points(17.055940,-29.695139,pch=21,cex=CEX,col="#000000",bg="#FFFFFF") #Kleinsee
    points(17.568079,-30.835533,pch=21,cex=CEX,col="#000000",bg="#484848") #Groenriviermond
    points(17.881037,-31.299596,pch=21,cex=CEX,col="#000000",bg="#484848") #Brand-se-baai
    points(17.967418,-33.045382-0.03,pch=21,cex=CEX,col="#000000",bg="#484848") #Marcus Island
    points(18.301891,-32.098771,pch=21,cex=CEX,col="#000000",bg="#FFFFFF") #Lambertsbaai
    points(18.016652,-32.750936,pch=21,cex=CEX,col="#000000",bg="#484848") #St. Helena Bay
    points(18.442226,-33.721320,pch=21,cex=CEX,col="#000000",bg="#484848") #Melkbosstrand
    points(18.350486-0.04,-33.986861+0.02,pch=21,cex=CEX,col="#000000",bg="#484848")  #Oudekraai
    points(18.345291-0.04,-34.058865-0.02,pch=21,cex=CEX,col="#000000",bg="#484848") #Hout Bay
    points(18.450939-0.025+0.05,-34.195563-0.075,pch=21,cex=CEX,col="#000000",bg="#484848") #Seaforth

    segments(18.831386,-34.387159,18.831386+0.42,-34.387159-0.91,lty=1.12,lwd=1,col="#000000") #Hangklip
    text(18.831386+0.42+0.60,-34.387159-1.08-0.05,"Hangklip",cex=CEX_TEXT,adj=0.5) #Hangklip
    
    points(18.831386,-34.387159,pch=21,cex=CEX,col="#000000",bg="#FFFFFF") #Hangklip
    segments(18.813214,-34.297266,18.813214-0.05,-34.10971-1.3,lty=1,lwd=1,col="#000000") #Rooi-Els
    text(18.813214-0.05-0.35,-34.10971-1.335-0.17,"Rooi-Els",cex=CEX_TEXT,adj=0.5) #Rooi-Els
    
    points(18.813214,-34.297266,pch=21,cex=CEX,col="#000000",bg="#484848") #Rooi-Els
    
    segments(18.39328,-33.90837+0.05,18.39328+0.48,-33.90837+0.42,lty=1,lwd=1,col="#000000") #Bloubergstrand
    text(18.463081+0.52+0.02-0.03,-33.805693+0.38,"Bloubergstrand",cex=CEX_TEXT,adj=0) #Bloubergstrand

    #2020 data
    points(17.27383,-30.31341,pch=22,cex=CEX,col="#000000",bg="#000000") #Hondeklipbaai
    points(18.23491,-31.81317,pch=22,cex=CEX,col="#000000",bg="#000000") #Doringbaai
    points(18.330919,-32.314516,pch=22,cex=CEX,col="#000000",bg="#000000") #Elandsbaai
    points(17.88643,-32.80704,pch=22,cex=CEX,col="#000000",bg="#000000") #Paternoster
    points(17.88526-0.05,-32.94307-0.01,pch=22,cex=CEX,col="#000000",bg="#000000") #Jacobsbaai
    points(18.15079,-33.35424,pch=22,cex=CEX,col="#000000",bg="#000000") #Yzerfontein
    points(18.463081,-33.805693,pch=22,cex=CEX,col="#000000",bg="#000000") #Bloubergstrand
    segments(18.39328,-33.90837,18.39328+0.6,-33.90837+0.12,lty=1,lwd=1,col="#000000") #Three Anchor Bay
    points(18.39328,-33.90837,pch=22,cex=CEX,col="#000000",bg="#FFFFFF") #Three Anchor Bay
    text(18.39328+0.6+0.1,-33.90837+0.12,"Three Anchor Bay",cex=CEX_TEXT,adj=0) #Three Anchor Bay
    segments(18.46866-0.025+0.07,-34.10971,18.46866-0.025+0.07-0.15,-34.10971-1.14+0.13,lty=1,lwd=1,col="#000000") #Muizenberg
    text(18.46866-0.025+0.07-0.75-0.15,-34.10971-1.14-0.17+0.13,"Muizenberg",cex=CEX_TEXT,adj=0.5) #Muizenberg
    points(18.46866-0.025+0.07,-34.10971,pch=22,cex=CEX,col="#000000",bg="#000000") #Muizenberg
    segments(18.43353-0.025,-34.14197,18.43353-0.029-0.3-0.2,-34.14197-0.5+0.08,lty=1,lwd=1,col="#000000") #Fish Hoek
    text(18.43353-0.025-0.3-0.1-0.2,-34.14197-0.5+0.08,"Fish Hoek",cex=CEX_TEXT,adj=1) #Fish Hoek
    points(18.43353-0.029,-34.14197,pch=22,cex=CEX,col="#000000",bg="#FFFFFF") #Fish Hoek
    points(18.86976,-34.15993,pch=22,cex=CEX,col="#000000",bg="#000000") #Gordons Bay
    points(19.27048,-34.40920,pch=22,cex=CEX,col="#000000",bg="#000000") #Hermanus
    segments(20.05056,-34.81411,20.05056+0.35,-34.81411,lty=1,lwd=1,col="#000000") #Cape Agulhas
    text(20.05056+0.35+0.1,-34.81411,"Cape Agulhas",cex=CEX_TEXT,adj=0) #Cape Agulhas
    points(20.05056,-34.81411,pch=22,cex=CEX,col="#000000",bg="#FFFFFF") #Cape Agulhas
    segments(22.15809,-34.18121,22.15809+0.27,-34.18121-0.25,lty=1,lwd=1,col="#000000") #Mosselbaai
    text(22.15809+0.27+0.1,-34.18121-0.25,"Mosselbaai",cex=CEX_TEXT,adj=0) #Mosselbaai
    points(22.15809,-34.18121,pch=22,cex=CEX,col="#000000",bg="#FFFFFF") #Mosselbaai
    
    segments(22.21037,-34.06488,22.21037,-34.06488+0.75,lty=1,lwd=1,col="#000000") #Groot-Brakrivier
    text(22.21037+0.83,-34.06488+0.75+0.17,"Groot-Brakrivier",cex=CEX_TEXT,adj=0.5) #Groot-Brakrivier
    points(22.21037,-34.06488,pch=22,cex=CEX,col="#000000",bg="#FFFFFF") #Groot-Brakrivier

    segments(23.54832,-33.98637,23.54832,-33.98637+0.32,lty=1,lwd=1,col="#000000") #Nature's Valley
    text(23.54832-0.06,-33.98637+0.32+0.15,"Nature's Valley",cex=CEX_TEXT,adj=0.5) #Nature's Valley
    points(23.54832,-33.98637,pch=22,cex=CEX,col="#000000",bg="#FFFFFF") #Nature's Valley

    text(22.7,-31.6,"SOUTH AFRICA",cex=0.8,font=1)
    text(18.5,-28.4,"NAMIBIA",cex=0.8,font=1)
    
    #Lengend
    
    points(20.67,-28.75+0.3,pch=22,cex=CEX,col="#000000",bg="#000000")
    points(20.67,-29.10+0.3,pch=22,cex=CEX,col="#000000",bg="#FFFFFF")
    points(20.67,-29.45+0.3,pch=21,cex=CEX,col="#000000",bg="#484848")
    points(20.67,-29.80+0.3,pch=21,cex=CEX,col="#000000",bg="#FFFFFF")
    text(20.67+0.35,-28.75+0.3,"Present (2020)",cex=0.8,adj=0)
    text(20.67+0.35,-29.10+0.3,"Not detected (2020)",cex=0.8,adj=0)
    text(20.67+0.35,-29.45+0.3,"Present (2009-2019)",cex=0.8,adj=0)
    text(20.67+0.35,-29.80+0.3,"Not detected (2009-2019)",cex=0.8,adj=0)
    
    #Scale bar
    map.scale(13.67,-35.2,relwidth=0.15,metric=T,ratio=F,
              cex=0.8,col="black")
    
    #North arrow, created manually
    X_POS<-34
    Y_POS<--32.7
    N_CEX<-2.2
    points(X_POS,Y_POS+1.0,pch=17,cex=2.1,col="gray10")
    text(X_POS,Y_POS,"N",cex=N_CEX,col="gray10")
    segments(X_POS,Y_POS+0.8,X_POS,Y_POS-0.8,lwd=2.7,col="gray10")
    
    #Axes
    axis(1,at=c(14,15,16,17,18,19,20,21,22,23,24),
         labels=c("14°E",
                  "15°E",
                  "16°E",
                  "17°E",
                  "18°E",
                  "19°E",
                  "20°E",
                  "21°E",
                  "22°E",
                  "23°E",
                  "24°E"),
         lwd=0.75,cex.lab=1.4,las=1,cex.axis=CEX_AXS,tck=TCK,line=0)
    axis(2,at=c(-28,-29,-30,-31,-32,-33,-34,-35,-36),
         labels=c("28°S",
                  "29°S",
                  "30°S",
                  "31°S",
                  "32°S",
                  "33°S",
                  "34°S",
                  "35°S",
                  "36°S"),
         lwd=0.75,cex.lab=1.4,las=1,cex.axis=CEX_AXS,tck=TCK,line=0)
    box(lwd=1.4)
}
#dev.off()

#Map of Semimytilus algosus in South Africa - rate of spread - invasion history
#This map is not included in the manuscript
#Created on 29 March 2020
setwd("/Users/kevinckma/Desktop/")
#pdf("semimytilus map spread.pdf",width=6,height=4.7)
{
    #Map
    par(oma=c(1.7,3,0,0)+0.1,mfrow=c(1,1),family="ArialMT")
    map("worldHires",
        xlim=c(WEST_X,EAST_X),
        ylim=c(SOUTH_Y,NORTH_Y),
        col="gray65",
        lwd=1,
        border="gray25",fill=T,mar=c(0,0,0,0))
    
    text(17.27383+TEXT_FACTOR,-30.31341,"2020 (Hondeklipbaai)",cex=CEX_TEXT,adj=0) #Hondeklipbaai
    text(17.568079+TEXT_FACTOR,-30.835533,"2010, 2012 (Groenriviermond)",cex=CEX_TEXT,adj=0) #Groenriviermond
    text(18.330919+TEXT_FACTOR,-32.314516,"2009 (Elandsbaai)",cex=CEX_TEXT,adj=0) #Elandsbaai
    text(18.330919-TEXT_FACTOR,-32.314516,"First record",cex=CEX_RATE,adj=1) #Elandsbaai
    
    Arrows(17.568079-(TEXT_FACTOR*1.5)+0.05,-30.835533-0.2,
           17.27383-(TEXT_FACTOR*1.5),-30.31341-0.2,
           lty=1,lwd=2,arr.type="triangle",arr.adj=0.5,col="#484848",
           arr.col="#484848",arr.length=0.17,arr.width=0.17)
    
    text(17.42095-(TEXT_FACTOR*2.4),-30.57447-0.35,
         expression(paste("8 km ",yr^-1)),cex=CEX_RATE,adj=1,col="#484848")
    
    segments(18.463081,-33.805693,18.463081+0.4,-33.805693+1.08,lty=1,lwd=1,col="#000000") #Bloubergstrand
    text(18.463081+0.4+0.1,-33.805693+1.08,"2010 (Bloubergstrand)",cex=CEX_TEXT,adj=0) #Bloubergstrand
    segments(18.345291,-34.058865,18.345291-0.5,-34.058865,lty=1,lwd=1,col="#000000") #Hout Bay
    text(18.345291-0.5-0.1,-34.058865+0.01,"2012, 2014 (Hout Bay)",cex=CEX_TEXT,adj=1) #Hout Bay
    
    Arrows(18.39328-(TEXT_FACTOR*1.25)-0.04,-33.90837+0.25+0.1,
           18.345291-(TEXT_FACTOR*1.25)-0.07,-34.058865+0.25-0.05,
           lty=1,lwd=2,arr.type="triangle",arr.adj=0.5,col="#484848",
           arr.col="#484848",arr.length=0.17,arr.width=0.17)
    
    text(18.36929-(TEXT_FACTOR*2.1),-33.98362+0.37,
         expression(paste("25 km ",yr^-1)),cex=CEX_RATE,adj=1,col="#484848")
    
    Arrows(18.345291-(TEXT_FACTOR*1.25)-0.1,-34.058865-0.12,
           18.450939-(TEXT_FACTOR*1.25)-0.07,-34.10971-0.37,
           lty=1,lwd=2,arr.type="triangle",arr.adj=0.5,col="#484848",
           arr.col="#484848",arr.length=0.17,arr.width=0.17)
    
    text(18.00094-0.2,-34.10971-0.32,
         expression(paste("23.3 km ",yr^-1)),cex=CEX_RATE,adj=1,col="#484848")
    
    segments(18.450939-0.025+0.05,-34.195563-0.075,18.450939+0.05-0.4,-34.195563-0.05-0.5,lty=1,lwd=1,col="#000000") #Seaforth
    text(18.450939+0.05-0.4-0.1,-34.195563-0.05-0.61,"2015 (Seaforth)",cex=CEX_TEXT,adj=1) #Seaforth
    segments(18.46866+0.07,-34.10971,18.46866+0.9,-34.10971+1,lty=1,lwd=1,col="#000000") #Muizenberg
    text(18.46866+0.9+0.1,-34.10971+1,"2016 (Muizenburg)",cex=CEX_TEXT,adj=0) #Muizenberg

    Arrows(18.450939-(TEXT_FACTOR*1.25)+0.20,-34.10971-0.6,
           18.813214-(TEXT_FACTOR*1.25)+0.12,-34.10971-0.7,
           lty=1,lwd=2,arr.type="triangle",arr.adj=0.5,col="#484848",
           arr.col="#484848",arr.length=0.17,arr.width=0.17)
    
    text(18.5198+0.13,-34.17764-1.05,
         expression(paste("12, 40, & 25 km ",yr^-1)),cex=CEX_RATE,adj=1,col="#484848")
    
    segments(18.86976,-34.15993,18.86976+1,-34.15993+0.7,lty=1,lwd=1,col="#000000") #Gordons Bay
    text(18.86976+1+0.1,-34.15993+0.7,"2017 (Gordons Bay)",cex=CEX_TEXT,adj=0) #Gordons Bay
    segments(18.813214,-34.297266,18.813214+0.05,-34.10971-1.2,lty=1,lwd=1,col="#000000") #Rooi-Els
    text(18.813214+0.05+1.52,-34.10971-1.2-0.23,"2018, 2019 (Rooi-Els)",cex=CEX_TEXT,adj=0.5) #Rooi-Els
    
    Arrows(18.813214-(TEXT_FACTOR*1.25)+0.48,-34.297266-0.53,
           19.27048-(TEXT_FACTOR*1.25)+0.4,-34.40920-0.4,
           lty=1,lwd=2,arr.type="triangle",arr.adj=0.5,col="#484848",
           arr.col="#484848",arr.length=0.17,arr.width=0.17)

    text(19.18,-35.1,
         expression(paste("35 km ",yr^-1)),cex=CEX_RATE,adj=0,col="#484848")
    
    segments(19.27048,-34.40920,19.27048+1.1,-34.40920+0.6,lty=1,lwd=1,col="#000000") #Hermanus
    text(19.27048+1.1+0.1,-34.40920+0.6,"2020 (Hermanus)",cex=CEX_TEXT,adj=0) #Hermanus
    
    
    points(17.568079,-30.835533,pch=21,cex=CEX,col="#000000",bg="#000000") #Groenriviermond
    points(18.345291-0.04,-34.058865-0.02,pch=21,cex=CEX,col="#000000",bg="#000000") #Hout Bay
    points(18.450939-0.025+0.05,-34.195563-0.075,pch=21,cex=CEX,col="#000000",bg="#000000") #Seaforth
    points(18.813214,-34.297266,pch=21,cex=CEX,col="#000000",bg="#000000") #Rooi-Els
    points(17.27383,-30.31341,pch=21,cex=CEX,col="#000000",bg="#000000") #Hondeklipbaai
    points(18.330919,-32.314516,pch=21,cex=CEX,col="#000000",bg="#000000") #Elandsbaai
    points(18.463081,-33.805693,pch=21,cex=CEX,col="#000000",bg="#000000") #Bloubergstrand
    points(18.46866-0.025+0.07,-34.10971,pch=21,cex=CEX,col="#000000",bg="#000000") #Muizenberg
    points(18.86976,-34.15993,pch=21,cex=CEX,col="#000000",bg="#000000") #Gordons Bay
    points(19.27048,-34.40920,pch=21,cex=CEX,col="#000000",bg="#000000") #Hermanus
    
    text(22.7,-31.6,"SOUTH AFRICA",cex=0.8,font=1)
    text(18.5,-28.4,"NAMIBIA",cex=0.8,font=1)
    
    #Scale bar
    map.scale(13.67,-35.2,relwidth=0.15,metric=T,ratio=F,
              cex=0.8,col="black")
    
    #North arrow, created manually
    X_POS<-34
    Y_POS<--32.7
    N_CEX<-2.2
    points(X_POS,Y_POS+1.0,pch=17,cex=2.1,col="gray10")
    text(X_POS,Y_POS,"N",cex=N_CEX,col="gray10")
    segments(X_POS,Y_POS+0.8,X_POS,Y_POS-0.8,lwd=2.7,col="gray10")
    
    #Axes
    axis(1,at=c(14,15,16,17,18,19,20,21,22,23,24),
         labels=c("14°E",
                  "15°E",
                  "16°E",
                  "17°E",
                  "18°E",
                  "19°E",
                  "20°E",
                  "21°E",
                  "22°E",
                  "23°E",
                  "24°E"),
         lwd=0.75,cex.lab=1.4,las=1,cex.axis=CEX_AXS,tck=TCK,line=0)
    axis(2,at=c(-28,-29,-30,-31,-32,-33,-34,-35,-36),
         labels=c("28°S",
                  "29°S",
                  "30°S",
                  "31°S",
                  "32°S",
                  "33°S",
                  "34°S",
                  "35°S",
                  "36°S"),
         lwd=0.75,cex.lab=1.4,las=1,cex.axis=CEX_AXS,tck=TCK,line=0)
    box(lwd=1.4)
}
#dev.off()