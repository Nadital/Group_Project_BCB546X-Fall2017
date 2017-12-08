# "Characterising the bacterial microbiota across the gastrointestinal tracts of dairy cattle: membership and potential function"
## Shengyong Mao, Mengling Zhang, Junhua Liu, & Weiyun Zhu
### Published in Nature-Scientific Reports November 3rd, 2015

*<u>Introduction</u>*:

The primary goal of this study was to examine the bacterial community composition and function of the gastrointestinal tracts of dairy cattle. They analyzed the bacterial communities of ten gastrointestinal tract (GIT) sites in six dairy cattle. These sites include the digest and mucosa of the rument, reticulum, omasum, abomasum, duodenum, jejunum, ileum, cecum, colon, and rectum. Due to the interest of our group, we were primarily interested in that of the mucosa of the rumen. 

The study analyzed the diversity, richness and composition of mucosa-associated bacterial communties across the cattle GITs. They found that the mucosa-associated communities in the forestomach clustered more closely to each other than did other members of the combined large intestinal communities. 

At the phylum level, 22 bacterial phyla or groups were identified in mucosal samples. The majority of the sequences belonged to the following:

|      Phyla     | Percentage |
| ---------------|------------|
|     Firmicutes |   42.44%   |
|  Bacteroidetes |   21%      |
| Proteobacteria |   17.56 %  |

As shown in the table above and the figure below, Firmicutes dominated all mucosa-associated bacterial communities along the GITs, except for in the duodenum. 

[![phyla_dairy_cattle_BCB_group_project.jpg](https://s7.postimg.org/5mac9v1sr/phyla_dairy_cattle_BCB_group_project.jpg)](https://postimg.org/image/ki8vhgd7b/)

In the original paper, the data analysis was comprehensive but lacked documentation. Per the materials and methods, the amplicons were paired-end seqeunced on an Illumina MiSeq platform and raw FASTQ files were receved. These raw FASTQ files were demultiplexed and quality filtered using QIIME 1.70 with a variety of criteria. Unassembled reads were discarded. They clustered OTUs with a 97% similarity cut-off using UPARSE. They used UCHIME to identify and remove chimeric sequences. The most abundant sequences within each OTU were designated as 'representative sequences' and aligned against the core set of Greengenes 13.5 using PYNAST with the default parameters set by QIIME. A PH Lane mask supplied by QIIME was used to remove hypervariable regions from the aligned sequences. FASTTREE was used to create a phylogenetic tree of the representative sequences. Sequences were classified using the Ribosomal Database Project (RDP) classifier with a standard minimum support threshold of 80%. 

*Explanation of technical details of analysis replication*



Summarization of replication of original results
