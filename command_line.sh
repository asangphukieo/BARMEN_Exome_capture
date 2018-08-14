# Calculer les zones communes entre 2 beds
windowBed -a MedExome_hg19_capture_targets.bed -b S30409818_Regions.bed | bedtools overlap -i stdin -cols 2,3,6,7 | awk '{if($9>0)SUM += $9}END{print SUM}'
# Calculer la taille d'un bed
awk '{SUM += $3 - $2 +1} END {print "sum = ", SUM}' file.bed
#
#Downsampling:

#Phase exploratoire :
#	Generer 3 sets de fastQ R1/R2 à 10 M reads avec différentes pseudorandomidation (différentes seeds)
#	  nenufaar  analyse des metrics pour voir si différence importante.
#Les metrics sont absolument identiques entre les 3 sets, ils n’est pas utile de faire des réplicats de
#downsampling pour le même échantillon

#Info : création du script replace.sh pour remplacer les « , » par « . » dans les fichiers de metrics générés par Picard.
#En effet, les valeurs séparées par des « ’ » sont incompatible avec le module qualimap de MultiQC.
#Downsampling :

seqkt sample -s1 I18_S4_R1_001.fastq 10000000 > seed1/sub1.fastq
seqkt sample -s1 I18_S4_R2_001.fastq 10000000 > seed1/sub2.fastq

seqkt sample -s1 I18_S4_R1_001.fastq 10000000 > seed2/sub1.fastq
seqkt sample -s1 I18_S4_R2_001.fastq 10000000 > seed2/sub2.fastq

seqkt sample -s1 I18_S4_R1_001.fastq 10000000 > seed3/sub1.fastq
seqkt sample -s1 I18_S4_R2_001.fastq 10000000 > seed3/sub2.fastq
