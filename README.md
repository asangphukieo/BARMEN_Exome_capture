# BARMEN welcome you !
- [BARMEN - The BenchmARking from Mobidic for Exome sequencing at Nucleotide scale](#BARMEN-welcome-you!)
	- [Overview](#overview)
		- [Main Workflow](#main-workflow)
		- [Cite BARMEN](#cite-barmen)
		- [Input](#input)
		- [Output](#output)
	- [Installation](#installation)
		- [Requirements](#requirements)
	- [BARMEN command](#barmen-command)
		- [In silico design analysis](#in-silico-design-analysis)
		- [ClinVar pathogenic variant coverage](#clinvar-pathogenic-variant-coverage)
		- [Gene Panel coverage](#gene-panel-coverage)
		- [RefSeq Coding regions coverage](#refseq-coding-regions-coverage)	

-----------

The BenchmARking from Mobidic for Exome sequencing at Nucleotide scale aims to compare recent Whole Exome capture library performance with several items : 
- In silico design analysis
- Coverage of ClinVar pathogenic variants 
- Coverage of gene panel sequencing routine diagnosis
- Coverage of RefSeq Coding regions

Capture library benchmark include : 
- Nimblegen MedExome 
- Agilent SureSelect V7
- Agilent Clinical Research Exome V2

## Overview

### Main workflow

For performance benchmark, we use the capture targets bed (and not the empirical or covered bed).

- MedExome_hg19_capture_targets.bed : MedExome capture target intervals converted to UCSC human genome build hg19 using the NCBI Genome Remapping Service.

- Agilent for SureSelect Clinical Research Exome V7 and SureSelect Human All Exon V7  [design ID]_Regions.bed : This BED file contains a single track of the target regions of interest that SureDesign used to select the probes. You can use this track to see the exact regions that the program was attempting to cover when selecting the probes.

###  Cite BARMEN

> *Pegeot et al.*, BARMEN : Benchmarking from Mobidic for Whole Exome sequencing at Nucleotide scale (2019).

### Input

### Output

## Installation

To download scripts of BARMEN, please use git to download the most recent development tree.
Currently, the tree is hosted on github, and can be obtained via:

```bash
$ git clone https://github.com/mobidic/BARMEN.git
```

### Requirements 

- Linux or macOS
- bedtools v2.27.1



## BARMEN command

### In silico design analysis

### ClinVar pathogenic variant coverage

### Gene Panel coverage

### RefSeq Coding regions coverage

--------------------------------------------------------------------------------

**Montpellier Bioinformatique pour le Diagnostique Clinique (MoBiDiC)**

*CHU de Montpellier*

France

![MoBiDiC](logo-mobidic.png)

[Visit our website](https://neuro-2.iurc.montp.inserm.fr/mobidic/)

--------------------------------------------------------------------------------
