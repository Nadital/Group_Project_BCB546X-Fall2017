# "Characterising the bacterial microbiota across the gastrointestinal tracts of dairy cattle: membership and potential function"
## Shengyong Mao, Mengling Zhang, Junhua Liu, & Weiyun Zhu
### Published in Nature-Scientific Reports November 3rd, 2015

**<i>Introduction:</i>**

The primary goal of this study was to examine the bacterial community composition and function of the gastrointestinal tracts of dairy cattle. They analyzed the bacterial communities of ten gastrointestinal tract (GIT) sites in six dairy cattle. These sites include the digest and mucosa of the rumen, reticulum, omasum, abomasum, small intestines (duodenum, jejunum, ileum), and the large intestines (cecum, colon, and rectum). Due to the interest of our group, we were primarily interested in that of the mucosa of the rumen. 

The study analyzed the diversity, richness and composition of mucosa-associated bacterial communties across the cattle GITs. They found that the mucosa-associated communities in the forestomach clustered more closely to each other than did other members of the combined large intestinal communities. 

At the phylum level, 22 bacterial phyla or groups were identified in mucosal samples. The majority of the sequences belonged to the following:

|      Phyla     | Percentage |
| ---------------|------------|
|     Firmicutes |   42.44%   |
|  Bacteroidetes |   21%      |
| Proteobacteria |   17.56 %  |

As shown in the table above and the figure below, Firmicutes dominated all mucosa-associated bacterial communities along the GITs, except for in the duodenum. <br><br>

[![phyla_dairy_cattle_BCB_group_project.jpg](https://s7.postimg.org/hr4ayse4r/phyla_dairy_cattle_BCB_group_project.jpg)](https://postimg.org/image/9lm90mpvr/)

In the original paper, the data analysis was comprehensive but lacked documentation. Per the materials and methods, the amplicons were paired-end seqeunced on an Illumina MiSeq platform and raw FASTQ files were receved. These raw FASTQ files were demultiplexed and quality filtered using QIIME 1.70 with a variety of criteria. Unassembled reads were discarded. They clustered OTUs with a 97% similarity cut-off using UPARSE. The authors used UCHIME to identify and remove chimeric sequences. They designated ‘representative sequences’ as the most abundant sequences within each OTU. These representative sequences were then aligned against Greengenes 13.5 using PYNAST. Alignment was conducted with the default parameters set by QIIME. A QIIME-provided PH Lane mask was used to remove hypervariable regions from the aligned sequences. The authors then generated a phylogenetic tree of the assigned representative sequences, using FASTTREE. Finally, sequence classification was conducted with the Ribosomal Database Project (RDP) with an 80 % standard minimum support threshold. 

**<i>Explanation of technical details of analysis replication**</i>
  
*MOTHUR and QIIME*  
SRA Database:  SRA Toolkit was needed to download the sequences. We also downloaded the sequences with the ENA.  

Quality Control: We needed to transform the data into something more manageable. This included truncating reads based on quality, culling reads based on false read lengths, removal of chimeras and assigning groups and names to each sequence (Mothur only). This then allowed us to align the file to a reference database.  

Alignment: We compared sequences to a reference database that contained comprehensive coverage of sequences. Any portion of the sequences that was not covered in the alignment, however, were removed via this step. Once aligned, the files would fit the classification and not confuse the later commands with mismatched base pairs.  

Classification: This step was needed to assign taxonomical classification to each OTU. At this step, we turn the data into workable data, and we can begin to understand Who is there (based on 16s only, with a 97% cutoff)  

Visualization: in this step, using the Qiime software and R software, we were able to replicate the abundance stacked bar-chart that represent relative abundance percentages of present phyla. This was the ultimate end of our work, as it provided a comparable graph (only one sample was used, possibly explaining variation in data).



**<i>Summarization of replication of original results:</i>**

We were unable to replicate the results with Mothur, but we were able to complete the analysis with QIIME on one rumen mucosa sample from one cow. The phylum breakdown from this one sample does not represent the collective data from every cow. This can be seen in the breakdowns of the phyla. We noticed that the phylum composition shift is not completely identical between the single sample versus the entirety. In our sample in particular, Proteobacteria seem to be in higher abundance than Bacteroidetes, for example. However, all the major representative phyla are there in both analyses, indicating that if all samples were run through our pipeline, the combined data would be very similar to their data. <br><br>

[![QIIME_results.jpg](https://s7.postimg.org/4a7cfy6e3/QIIME_results.jpg)](https://postimg.org/image/5chiyhp7b/)
