
# Load the taxonomy table
library(readxl)
taxa<- read_excel("Desktop/SRR1778214.fasta/taxa_assignment_cleaned.xls")
# Only leave the phylum information, disgard the header information
taxa<-taxa[,2]


library(plyr)
# Count the frequencies of each phylum
ct<-count(taxa, c("Phylm"))
View(ct)
# Remove the last empty row
ct<-ct[1:23,]
# Assign the specie name
ct$name<-c("Rumen_Mucosa")

library(ggplot2)
# Sort the phylum frequency by decreasing order
ct<-ct[order(ct$freq, decreasing = TRUE),]
# Select the 10 most abundant phylums
ct<-ct[1:10,] 
# Order the Phylum names based on the frequency not alphabetical order
ct$Phylm<-factor(ct$Phylm,levels = ct$Phylm[order(ct$freq)])

# Use ggplot to plot it
pl<-ggplot(data=ct, aes(x=ct$name, y=ct$freq, fill=ct$Phylm))+
  geom_bar(stat="identity")+
  # Use "Paired" as the coloring pallete
  scale_fill_brewer(palette="Paired")+
  # Change the plot title and axies labels
  xlab("")+ylab("")+ggtitle("Phylum Abundance")+
  # Remove the legend title
  guides(fill=guide_legend(title=""))+
  # Make the background white, plot boarder black
  theme(axis.text.x = element_blank(), axis.text.y = element_blank(),axis.line = element_line(colour = "black"))+
  theme(panel.background = element_rect(fill="#ffffff"),panel.border = element_rect(fill = NA,colour = "black"))

# Save the plot
ggsave("phylum_plot.png",pl,height =8)




