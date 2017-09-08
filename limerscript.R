#Use setwd('path/to/project') to set working directory

#Load packages

library(limer)
library(plyr)
library(reshape2)

#connect to limer, change api link, username and password where necessary

options(lime_api = 'http://survey.itechcenter.ne/index.php/admin/remotecontrol')
options(lime_username = 'your_username')
options(lime_password = 'your_password')
get_session_key()

survey_df<-call_limer(method='list_surveys')
View(survey_df)

#save date
date<-Sys.time()

#Download surveys. Check 'survey_df' table for any new files and add to list below.

AGA046<-get_responses(iSurveyID= 954197, sLanguageCode = 'fr', sResponseType = 'short')
DIF010<-get_responses(iSurveyID= 397193, sLanguageCode = 'fr', sResponseType = 'short')
AGA051<-get_responses(iSurveyID= 335852, sLanguageCode = 'fr', sResponseType = 'short')
DIF018<-get_responses(iSurveyID= 669388, sLanguageCode = 'fr', sResponseType = 'short')
NIA029<-get_responses(iSurveyID= 215531, sLanguageCode = 'fr', sResponseType = 'short')
AGA045<-get_responses(iSurveyID= 139427, sLanguageCode = 'fr', sResponseType = 'short')
AGA041<-get_responses(iSurveyID= 318229, sLanguageCode = 'fr', sResponseType = 'short')
DIF044<-get_responses(iSurveyID= 251232, sLanguageCode = 'fr', sResponseType = 'short')
AGA055<-get_responses(iSurveyID= 731787, sLanguageCode = 'fr', sResponseType = 'short')
TIL006<-get_responses(iSurveyID= 828848, sLanguageCode = 'fr', sResponseType = 'short')
AGA060<-get_responses(iSurveyID= 675145, sLanguageCode = 'fr', sResponseType = 'short')
AGA059<-get_responses(iSurveyID= 212898, sLanguageCode = 'fr', sResponseType = 'short')
AGA061<-get_responses(iSurveyID= 191773, sLanguageCode = 'fr', sResponseType = 'short')
DIF059<-get_responses(iSurveyID= 485985, sLanguageCode = 'fr', sResponseType = 'short')
TIL007<-get_responses(iSurveyID= 943461, sLanguageCode = 'fr', sResponseType = 'short')
TIL009<-get_responses(iSurveyID= 541311, sLanguageCode = 'fr', sResponseType = 'short')
DIF040<-get_responses(iSurveyID= 448111, sLanguageCode = 'fr', sResponseType = 'short')
DIF048<-get_responses(iSurveyID= 716422, sLanguageCode = 'fr', sResponseType = 'short')
DIF045<-get_responses(iSurveyID= 259664, sLanguageCode = 'fr', sResponseType = 'short')
AGA062<-get_responses(iSurveyID= 517332, sLanguageCode = 'fr', sResponseType = 'short')
DIF038<-get_responses(iSurveyID= 852367, sLanguageCode = 'fr', sResponseType = 'short')
AGA031<-get_responses(iSurveyID= 584813, sLanguageCode = 'fr', sResponseType = 'short')
CFWNM2<-get_responses(iSurveyID= 376845, sLanguageCode = 'fr', sResponseType = 'short')
TIL016<-get_responses(iSurveyID= 521157, sLanguageCode = 'fr', sResponseType = 'short')
AGA066<-get_responses(iSurveyID= 854153, sLanguageCode = 'fr', sResponseType = 'short')
DIF050<-get_responses(iSurveyID= 768344, sLanguageCode = 'fr', sResponseType = 'short')
AGA063<-get_responses(iSurveyID= 265525, sLanguageCode = 'fr', sResponseType = 'short')
TIL018<-get_responses(iSurveyID= 826566, sLanguageCode = 'fr', sResponseType = 'short')
TIL010<-get_responses(iSurveyID= 884843, sLanguageCode = 'fr', sResponseType = 'short')
TIL004<-get_responses(iSurveyID= 696635, sLanguageCode = 'fr', sResponseType = 'short')
AtelierLeader<-get_responses(iSurveyID= 181754, sLanguageCode = 'fr', sResponseType = 'short')
DIF055<-get_responses(iSurveyID= 533857, sLanguageCode = 'fr', sResponseType = 'short')
AGA052<-get_responses(iSurveyID= 675311, sLanguageCode = 'fr', sResponseType = 'short')
TIL023<-get_responses(iSurveyID= 182745, sLanguageCode = 'fr', sResponseType = 'short')
DIF094<-get_responses(iSurveyID= 627317, sLanguageCode = 'fr', sResponseType = 'short')
TIL025<-get_responses(iSurveyID= 933813, sLanguageCode = 'fr', sResponseType = 'short')
TIL026<-get_responses(iSurveyID= 138547, sLanguageCode = 'fr', sResponseType = 'short')
TIL014<-get_responses(iSurveyID= 913713, sLanguageCode = 'fr', sResponseType = 'short')
DIF100<-get_responses(iSurveyID= 679492, sLanguageCode = 'fr', sResponseType = 'short')
AGA074<-get_responses(iSurveyID= 198899, sLanguageCode = 'fr', sResponseType = 'short')
DIF105<-get_responses(iSurveyID= 979696, sLanguageCode = 'fr', sResponseType = 'short')
DIF130<-get_responses(iSurveyID= 391345, sLanguageCode = 'fr', sResponseType = 'short')
TIL027<-get_responses(iSurveyID= 582128, sLanguageCode = 'fr', sResponseType = 'short')
AGA071<-get_responses(iSurveyID= 431791, sLanguageCode = 'fr', sResponseType = 'short')
TIL005<-get_responses(iSurveyID= 117429, sLanguageCode = 'fr', sResponseType = 'short')
AGA067<-get_responses(iSurveyID= 619978, sLanguageCode = 'fr', sResponseType = 'short')
AGA086<-get_responses(iSurveyID= 124758, sLanguageCode = 'fr', sResponseType = 'short')
AGA072<-get_responses(iSurveyID= 647845, sLanguageCode = 'fr', sResponseType = 'short')
TIL039<-get_responses(iSurveyID= 433362, sLanguageCode = 'fr', sResponseType = 'short')
DIF138<-get_responses(iSurveyID= 949543, sLanguageCode = 'fr', sResponseType = 'short')
AGA083<-get_responses(iSurveyID= 152849, sLanguageCode = 'fr', sResponseType = 'short')
DIF140<-get_responses(iSurveyID= 946811, sLanguageCode = 'fr', sResponseType = 'short')
DIF142<-get_responses(iSurveyID= 887624, sLanguageCode = 'fr', sResponseType = 'short')
AGA085<-get_responses(iSurveyID= 378413, sLanguageCode = 'fr', sResponseType = 'short')
TIL035<-get_responses(iSurveyID= 813893, sLanguageCode = 'fr', sResponseType = 'short')
TIL037<-get_responses(iSurveyID= 772621, sLanguageCode = 'fr', sResponseType = 'short')
DIF107<-get_responses(iSurveyID= 262583, sLanguageCode = 'fr', sResponseType = 'short')
DIF145<-get_responses(iSurveyID= 185443, sLanguageCode = 'fr', sResponseType = 'short')
DIF123<-get_responses(iSurveyID= 123585, sLanguageCode = 'fr', sResponseType = 'short')
AGA077<-get_responses(iSurveyID= 235718, sLanguageCode = 'fr', sResponseType = 'short')
DIF121<-get_responses(iSurveyID= 888795, sLanguageCode = 'fr', sResponseType = 'short')
DIF108<-get_responses(iSurveyID= 499791, sLanguageCode = 'fr', sResponseType = 'short')
DIF125<-get_responses(iSurveyID= 121226, sLanguageCode = 'fr', sResponseType = 'short')
TIL044<-get_responses(iSurveyID= 243661, sLanguageCode = 'fr', sResponseType = 'short')
AGA084<-get_responses(iSurveyID= 541136, sLanguageCode = 'fr', sResponseType = 'short')
TIL061<-get_responses(iSurveyID= 914333, sLanguageCode = 'fr', sResponseType = 'short')
AGA101<-get_responses(iSurveyID= 637389, sLanguageCode = 'fr', sResponseType = 'short')
TIL024<-get_responses(iSurveyID= 249834, sLanguageCode = 'fr', sResponseType = 'short')
TIL038<-get_responses(iSurveyID= 582266, sLanguageCode = 'fr', sResponseType = 'short')
TIL040<-get_responses(iSurveyID= 996461, sLanguageCode = 'fr', sResponseType = 'short')
TIL015<-get_responses(iSurveyID= 628154, sLanguageCode = 'fr', sResponseType = 'short')



#Make copies with only the columns of interest, also excluding empty surveys

AGA041c <- AGA041[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10")]
AGA045c <- AGA045[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10")]
#AGA046c <- AGA046[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q17")]
AGA051c <- AGA051[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q17","Q41.1.","Q41.2.","Q41.3.","Q41.4.")]
AGA055c <- AGA055[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q41.1.","Q41.2.","Q41.3.","Q41.4.")]
AGA059c <- AGA059[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q23.1.","Q23.2.","Q23.3.","Q23.4.")]
AGA060c <- AGA060[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q16","Q23.1.","Q23.2.","Q23.3.","Q23.4.")]
AGA061c <- AGA061[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10")]
#DIF059c <- DIF059[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10",,"Q13","Q23.1.","Q23.2.","Q23.3.","Q23.4.")]
DIF010c <- DIF010[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q17","Q41.1.","Q41.2.","Q41.3.","Q41.4.")]
DIF018c <- DIF018[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q17","Q41.1.","Q41.2.","Q41.3.","Q41.4.")]
DIF044c <- DIF044[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q41.1.","Q41.2.","Q41.3.","Q41.4.")]
NIA029c <- NIA029[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q41.1.","Q41.2.","Q41.3.","Q41.4.")]
TIL006c <- TIL006[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10")]
TIL007c <- TIL007[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q23.1.","Q23.2.","Q23.3.","Q23.4.")]
TIL009c <- TIL009[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q21","Q25.1.","Q25.2.","Q25.3.","Q25.4.")]
DIF040c <- DIF040[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q15","Q16.1.","Q16.2.","Q16.3.")]
DIF048c <- DIF048[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q15","Q16.1.","Q16.2.","Q16.3.")]
DIF045c <- DIF045[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q15","Q16.1.","Q16.2.","Q16.3.")]
AGA062c <- AGA062[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q18","Q32.1.","Q32.2.","Q32.3.","Q32.4.")]
DIF038c <- DIF038[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q16","Q32.1.","Q32.2.","Q32.3.","Q32.4.")]
AGA031c <- AGA031[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q45","Q53.1.","Q53.2.","Q53.3.","Q53.4.")]
CFWNM2c <- CFWNM2[c("Q1","Q2","Q6","Q7","Q8","Q9","Q11","Q33","Q34.1.","Q34.2.","Q34.3.","Q34.4.")]
TIL016c <- TIL016[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q21","Q27.1.","Q27.2.","Q27.3.","Q27.4.")]
AGA066c <- AGA066[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q17","Q41.1.","Q41.2.","Q41.3.","Q41.4.")]
DIF050c <- DIF050[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q15")]
AGA063c <- AGA063[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q13","Q19.1.","Q19.2.","Q19.3.","Q19.4.")]
TIL018c <- TIL018[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q26","Q27.1.","Q27.2.","Q27.3.","Q27.4.")]
TIL010c <- TIL010[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q26","Q27.1.","Q27.2.","Q27.3.","Q27.4.")]
TIL004c <- TIL004[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q26","Q27.1.","Q27.2.","Q27.3.","Q27.4.")]
AtelierLeaderc<-AtelierLeader[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q13","Q19.1.","Q19.2.","Q19.3.","Q19.4.")]
DIF055c <- DIF055[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q13","Q19.1.","Q19.2.","Q19.3.","Q19.4.")]
AGA052c <- AGA052[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q31","Q32.1.","Q32.2.","Q32.3.","Q32.4.")]
TIL023c <- TIL023[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q27.1.","Q27.2.","Q27.3.","Q27.4.")]
DIF094c <- DIF094[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q21","Q27.1.","Q27.2.","Q27.3.","Q27.4.")]
TIL025c<-TIL025[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q27.1.","Q27.2.","Q27.3.","Q27.4.")]
TIL026c<-TIL026[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q27.1.","Q27.2.","Q27.3.","Q27.4.")]
TIL014c<-TIL014[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q27.1.","Q27.2.","Q27.3.","Q27.4.")]
DIF100c<-DIF100[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10")]
AGA074c<-AGA074[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10")]
DIF105c<-DIF105[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10")]
DIF130c<-DIF130[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10")]
#TIL027
AGA071c<-AGA071[c("Q1","Q2","Q6","Q7","Q8","Q9","Q10","Q27.1.","Q27.2.","Q27.3.","Q27.4.")]
#TIL005c




#Version 2
AGA072c<-AGA072[c("Q1","Q2","Q9","Q10","Q11","Q13","Q14","Q24")]
TIL039c<-TIL039[c("Q1","Q2","Q9","Q10","Q11","Q24")]
AGA067c<-AGA067[c("startdate","Q1","Q2","Q9","Q10","Q11","Q30")]
DIF138c<-DIF138[c("startdate","Q1","Q2","Q9","Q10","Q11","Q24")]
AGA086c<-AGA086[c("startdate","Q1","Q2","Q9","Q10","Q11","Q12","Q13","Q14","Q15.1.","Q15.2.","Q15.3.","Q15.4.","Q15.5.","Q16.1.","Q16.2.","Q16.3.","Q16.4.","Q16.5.","Q17","Q19","Q21","S20","S22","S23","Q20","R22","R21","Q24")]
AGA083c<-AGA083[c("startdate","Q1","Q2","Q9","Q10","Q11","Q12","Q13","Q14","Q15.1.","Q15.2.","Q15.3.","Q15.4.","Q15.5.","Q16.1.","Q16.2.","Q16.3.","Q16.4.","Q16.5.","Q17","Q19","Q21","S20","S22","S23","Q20","R22","R21","Q24")]
DIF140c<-DIF140[c("startdate","Q1","Q2","Q9","Q10","Q11","Q12","Q13","Q14","Q15.1.","Q15.2.","Q15.3.","Q15.4.","Q15.5.","Q16.1.","Q16.2.","Q16.3.","Q16.4.","Q16.5.","Q17","Q19","Q21","S20","S22","S23","Q20","R22","R21","Q24")]
#DIF142c
AGA085c<-AGA085[c("startdate","Q1","Q2","Q9","Q10","Q11","Q12","Q13","Q14","Q15.1.","Q15.2.","Q15.3.","Q15.4.","Q15.5.","Q16.1.","Q16.2.","Q16.3.","Q16.4.","Q16.5.","Q24")]
TIL035c<-TIL035[c("startdate","Q1","Q2","Q9","Q10","Q11","Q12","Q13","Q14","Q15.1.","Q15.2.","Q15.3.","Q15.4.","Q15.5.","Q16.1.","Q16.2.","Q16.3.","Q16.4.","Q16.5.","Q24")]
TIL037c<-TIL037[c("startdate","Q1","Q2","Q9","Q10","Q11","Q12","Q13","Q14","Q15.1.","Q15.2.","Q15.3.","Q15.4.","Q15.5.","Q16.1.","Q16.2.","Q16.3.","Q16.4.","Q16.5.","Q24")]
DIF107c<-DIF107[c("startdate","Q1","Q2","Q9","Q10","Q11","Q12","Q13","Q14","Q15.1.","Q15.2.","Q15.3.","Q15.4.","Q15.5.","Q16.1.","Q16.2.","Q16.3.","Q16.4.","Q16.5.","Q24")]
DIF145c<-DIF145[c("startdate","Q1","Q2","Q9","Q10","Q11","Q12","Q13","Q14","Q15.1.","Q15.2.","Q15.3.","Q15.4.","Q15.5.","Q16.1.","Q16.2.","Q16.3.","Q16.4.","Q16.5.","Q24")]
DIF123c<-DIF123[c("startdate","Q1","Q2","Q9","Q10","Q11","Q24")]
AGA077c<-AGA077[c("startdate","Q1","Q2","Q9","Q10","Q11","Q12","Q13","Q14","Q15.1.","Q15.2.","Q15.3.","Q15.4.","Q15.5.","Q16.1.","Q16.2.","Q16.3.","Q16.4.","Q16.5.","Q24")]
DIF121c<-DIF121[c("startdate","Q1","Q2","Q9","Q10","Q11","Q24")]
DIF108c<-DIF108[c("startdate","Q1","Q2","Q9","Q10","Q11","Q24")]
DIF125c<-DIF125[c("startdate","Q1","Q2","Q9","Q10","Q11","Q13","Q14","Q24")]
DIF130c<-DIF130[c("startdate","Q1","Q2","Q7","Q8","Q9","Q10")]
#TIL044c
AGA084c<-AGA084[c("startdate","Q1","Q2","Q6","Q7","Q8","Q10","Q14","Q24")]
TIL061c<-TIL061[c("startdate","Q1","Q2","Q9","Q10","Q11","Q24")]
AGA101c<-AGA101[c("startdate","Q1","Q2","Q9","Q10","Q11","Q24")]
TIL024c<-TIL024[c("startdate","Q1","Q2","Q6","Q7","Q8","Q10","Q14","Q24")]
#TIL038c
TIL040c<-TIL040[c("startdate","Q1","Q2","Q9","Q10","Q11","Q24")]
TIL015c<-TIL015[c("startdate","Q1","Q2","Q6","Q7","Q8","Q10","Q14","Q24")]



#Add identification column

AGA041c$Survey <- 'AGA041'
AGA045c$Survey <- 'AGA045'
#AGA046c$Survey <- 'AGA046'
AGA051c$Survey <- 'AGA051'
AGA055c$Survey <- 'AGA055'
AGA059c$Survey <- 'AGA059'
AGA060c$Survey <- 'AGA060'
AGA061c$Survey <- 'AGA061'
DIF010c$Survey <- 'DIF010'
DIF018c$Survey <- 'DIF018'
DIF044c$Survey <- 'DIF044'
NIA029c$Survey <- 'NIA029'
TIL006c$Survey <- 'TIL006'
TIL007c$Survey <- 'TIL007'
TIL009c$Survey <- 'TIL009'
DIF040c$Survey <- 'DIF040'
DIF048c$Survey <- 'DIF048'
DIF045c$Survey <- 'DIF045'
AGA062c$Survey <- 'AGA062'
DIF038c$Survey <- 'DIF038'
AGA031c$Survey <- 'AGA031'
CFWNM2c$Survey <- 'CFWNM2'
TIL016c$Survey <- 'TIL016'
AGA066c$Survey <- 'AGA066'
DIF050c$Survey <- 'DIF050'
AGA063c$Survey <- 'AGA063'
TIL018c$Survey <- 'TIL018'
TIL010c$Survey <- 'TIL010'
TIL004c$Survey <- 'TIL004'
AtelierLeaderc$Survey<-'AtelierLeader'
DIF055c$Survey <- 'DIF055'
AGA052c$Survey <- 'AGA052'
TIL023c$Survey <- 'TIL023'
DIF094c$Survey <- 'DIF094'
TIL025c$Survey<-'TIL025'
TIL026c$Survey<-'TIL026'
TIL014c$Survey<-'TIL014'
DIF100c$Survey<-'DIF100'
AGA074c$Survey<-'AGA074'
DIF105c$Survey<-'DIF105'
DIF130c$Survey<-'DIF130'
#TIL027
AGA067c$Survey<-'AGA067'
AGA071c$Survey<-'AGA071'
DIF138c$Survey<-'DIF138'
AGA072c$Survey<-'AGA072'
TIL039c$Survey<-'TIL039'
AGA086c$Survey<-'AGA086'
AGA083c$Survey<-'AGA083'
DIF140c$Survey<-'DIF140'
#DIF142c
AGA085c$Survey<-'AGA085'
TIL035c$Survey<- 'TIL035'
TIL037c$Survey<- 'TIL037'
DIF107c$Survey<- 'DIF107'
DIF145c$Survey<- 'DIF145'
DIF123c$Survey<-'DIF123'
AGA077c$Survey<- 'AGA077'
DIF108c$Survey<- 'DIF108'
DIF125c$Survey<- 'DIF125'
DIF121c$Survey<- 'DIF121'
DIF130c$Survey<- 'DIF130'
AGA084c$Survey<- 'AGA084'
TIL061c$Survey<-'TIL061'
AGA101c$Survey<-'AGA101'
TIL024c$Survey<-'TIL024'
#TIL038c
TIL040c$Survey<-'TIL040'
TIL015c$Survey<-'TIL015'



#Move misaligned columns to desired, consistent location

AGA059c$Q41.1.<-AGA059c$Q23.1.
AGA059c$Q41.2.<-AGA059c$Q23.2.
AGA059c$Q41.3.<-AGA059c$Q23.3.
AGA059c$Q41.4.<-AGA059c$Q23.4.

AGA060c$Q41.1.<-AGA060c$Q23.1.
AGA060c$Q41.2.<-AGA060c$Q23.2.
AGA060c$Q41.3.<-AGA060c$Q23.3.
AGA060c$Q41.4.<-AGA060c$Q23.4.

TIL007c$Q41.1.<-TIL007c$Q23.1.
TIL007c$Q41.2.<-TIL007c$Q23.2.
TIL007c$Q41.3.<-TIL007c$Q23.3.
TIL007c$Q41.4.<-TIL007c$Q23.4.

TIL009c$Q17<-TIL009c$Q21
TIL009c$Q41.1.<-TIL009c$Q25.1.
TIL009c$Q41.2.<-TIL009c$Q25.2.
TIL009c$Q41.3.<-TIL009c$Q25.3.
TIL009c$Q41.4.<-TIL009c$Q25.4.

DIF040c$Q41.1.<-DIF040c$Q16.1.
DIF040c$Q41.2.<-DIF040c$Q16.2.
DIF040c$Q41.3.<-DIF040c$Q16.3.
DIF040c$Q41.4.<- NA
DIF040c$Q17<-DIF040c$Q15

DIF048c$Q41.1.<-DIF048c$Q16.1.
DIF048c$Q41.2.<-DIF048c$Q16.2.
DIF048c$Q41.3.<-DIF048c$Q16.3.
DIF048c$Q41.4.<- NA
DIF048c$Q17<-DIF048c$Q15

DIF045c$Q41.1.<-DIF045c$Q16.1.
DIF045c$Q41.2.<-DIF045c$Q16.2.
DIF045c$Q41.3.<-DIF045c$Q16.3.
DIF045c$Q41.4.<- NA
DIF045c$Q17<-DIF045c$Q15

AGA062c$Q41.1.<-AGA062c$Q32.1.
AGA062c$Q41.2.<-AGA062c$Q32.2.
AGA062c$Q41.3.<-AGA062c$Q32.3.
AGA062c$Q41.4.<- AGA062c$Q32.4.
AGA062c$Q17<-AGA062c$Q18

AGA059c$Q23.1.<-NULL
AGA059c$Q23.2.<-NULL
AGA059c$Q23.3.<-NULL
AGA059c$Q23.4.<-NULL

AGA060c$Q23.1.<-NULL
AGA060c$Q23.2.<-NULL
AGA060c$Q23.3.<-NULL
AGA060c$Q23.4.<-NULL

TIL007c$Q23.1.<-NULL
TIL007c$Q23.2.<-NULL
TIL007c$Q23.3.<-NULL
TIL007c$Q23.4.<-NULL

AGA060c$Q17<-AGA060c$Q16
AGA060c$Q16<-NULL

TIL009c$Q25.1.<-NULL
TIL009c$Q25.2.<-NULL
TIL009c$Q25.3.<-NULL
TIL009c$Q25.4.<-NULL
TIL009c$Q21<-NULL

DIF040c$Q16.1.<-NULL
DIF040c$Q16.2.<-NULL
DIF040c$Q16.3.<-NULL
DIF040c$Q15<-NULL

DIF048c$Q16.1.<-NULL
DIF048c$Q16.2.<-NULL
DIF048c$Q16.3.<-NULL
DIF048c$Q15<-NULL

DIF045c$Q16.1.<-NULL
DIF045c$Q16.2.<-NULL
DIF045c$Q16.3.<-NULL
DIF045c$Q15<-NULL

AGA062c$Q32.1.<-NULL
AGA062c$Q32.2.<-NULL
AGA062c$Q32.3.<-NULL
AGA062c$Q32.4.<-NULL
AGA062c$Q18<-NULL

DIF038c$Q41.1.<-DIF038c$Q32.1.
DIF038c$Q41.2.<-DIF038c$Q32.2.
DIF038c$Q41.3.<-DIF038c$Q32.3.
DIF038c$Q41.4.<-DIF038c$Q32.4.
DIF038c$Q17<-DIF038c$Q16

DIF038c$Q32.1.<- NULL
DIF038c$Q32.2.<- NULL
DIF038c$Q32.3.<- NULL
DIF038c$Q32.4.<- NULL
DIF038c$Q16<- NULL

AGA031c$Q41.1.<-AGA031c$Q53.1.
AGA031c$Q41.2.<-AGA031c$Q53.2.
AGA031c$Q41.3.<-AGA031c$Q53.3.
AGA031c$Q41.4.<-AGA031c$Q53.4.
AGA031c$Q17<-AGA031c$Q45

AGA031c$Q53.1.<- NULL
AGA031c$Q53.2.<- NULL
AGA031c$Q53.3.<- NULL
AGA031c$Q53.4.<- NULL
AGA031c$Q45<- NULL

CFWNM2c$Q10<-CFWNM2c$Q11
CFWNM2c$Q17<-CFWNM2c$Q33
CFWNM2c$Q41.1.<-CFWNM2c$Q34.1.
CFWNM2c$Q41.2.<-CFWNM2c$Q34.2.
CFWNM2c$Q41.3.<-CFWNM2c$Q34.3.
CFWNM2c$Q41.4.<-CFWNM2c$Q34.4.
CFWNM2c$Q11<-NULL
CFWNM2c$Q33<-NULL
CFWNM2c$Q34.1.<-NULL
CFWNM2c$Q34.2.<-NULL
CFWNM2c$Q34.3.<-NULL
CFWNM2c$Q34.4.<-NULL

TIL016c$Q17<-TIL016c$Q21
TIL016c$Q41.1.<-TIL016c$Q27.1.
TIL016c$Q41.2.<-TIL016c$Q27.2.
TIL016c$Q41.3.<-TIL016c$Q27.3.
TIL016c$Q41.4.<-TIL016c$Q27.4.
TIL016c$Q21<-NULL
TIL016c$Q27.1.<-NULL
TIL016c$Q27.2.<-NULL
TIL016c$Q27.3.<-NULL
TIL016c$Q27.4.<-NULL

DIF050c$Q17<-DIF050c$Q15
DIF050c$Q15<-NULL

AGA063c$Q17<-AGA063c$Q13
AGA063c$Q41.1.<-AGA063c$Q19.1.
AGA063c$Q41.2.<-AGA063c$Q19.2.
AGA063c$Q41.3.<-AGA063c$Q19.3.
AGA063c$Q41.4.<-AGA063c$Q19.4.
AGA063c$Q13<-NULL
AGA063c$Q19.1.<-NULL
AGA063c$Q19.2.<-NULL
AGA063c$Q19.3.<-NULL
AGA063c$Q19.4.<-NULL

TIL018c$Q17<-TIL018c$Q26
TIL018c$Q41.1.<-TIL018c$Q27.1.
TIL018c$Q41.2.<-TIL018c$Q27.2.
TIL018c$Q41.3.<-TIL018c$Q27.3.
TIL018c$Q41.4.<-TIL018c$Q27.4.
TIL018c$Q26<-NULL
TIL018c$Q27.1.<-NULL
TIL018c$Q27.2.<-NULL
TIL018c$Q27.3.<-NULL
TIL018c$Q27.4.<-NULL

TIL010c$Q17<-TIL010c$Q26
TIL010c$Q41.1.<-TIL010c$Q27.1.
TIL010c$Q41.2.<-TIL010c$Q27.2.
TIL010c$Q41.3.<-TIL010c$Q27.3.
TIL010c$Q41.4.<-TIL010c$Q27.4.
TIL010c$Q26<-NULL
TIL010c$Q27.1.<-NULL
TIL010c$Q27.2.<-NULL
TIL010c$Q27.3.<-NULL
TIL010c$Q27.4.<-NULL

TIL004c$Q17<-TIL004c$Q26
TIL004c$Q41.1.<-TIL004c$Q27.1.
TIL004c$Q41.2.<-TIL004c$Q27.2.
TIL004c$Q41.3.<-TIL004c$Q27.3.
TIL004c$Q41.4.<-TIL004c$Q27.4.
TIL004c$Q26<-NULL
TIL004c$Q27.1.<-NULL
TIL004c$Q27.2.<-NULL
TIL004c$Q27.3.<-NULL
TIL004c$Q27.4.<-NULL

AtelierLeaderc$Q17<-AtelierLeaderc$Q13
AtelierLeaderc$Q41.1.<-AtelierLeaderc$Q19.1.
AtelierLeaderc$Q41.2.<-AtelierLeaderc$Q19.2.
AtelierLeaderc$Q41.3.<-AtelierLeaderc$Q19.3.
AtelierLeaderc$Q41.4.<-AtelierLeaderc$Q19.4.
AtelierLeaderc$Q13<-NULL
AtelierLeaderc$Q19.1.<-NULL
AtelierLeaderc$Q19.2.<-NULL
AtelierLeaderc$Q19.3.<-NULL
AtelierLeaderc$Q19.4.<-NULL

DIF055c$Q17<-DIF055c$Q13
DIF055c$Q41.1.<-DIF055c$Q19.1.
DIF055c$Q41.2.<-DIF055c$Q19.2.
DIF055c$Q41.3.<-DIF055c$Q19.3.
DIF055c$Q41.4.<-DIF055c$Q19.4.
DIF055c$Q13<-NULL
DIF055c$Q19.1.<-NULL
DIF055c$Q19.2.<-NULL
DIF055c$Q19.3.<-NULL
DIF055c$Q19.4.<-NULL

AGA052c$Q17<-AGA052c$Q31
AGA052c$Q41.1.<-AGA052c$Q32.1.
AGA052c$Q41.2.<-AGA052c$Q32.2.
AGA052c$Q41.3.<-AGA052c$Q32.3.
AGA052c$Q41.4.<-AGA052c$Q32.4.
AGA052c$Q31<-NULL
AGA052c$Q32.1.<-NULL
AGA052c$Q32.2.<-NULL
AGA052c$Q32.3.<-NULL
AGA052c$Q32.4.<-NULL

TIL023c$Q41.1.<-TIL023c$Q27.1.
TIL023c$Q41.2.<-TIL023c$Q27.2.
TIL023c$Q41.3.<-TIL023c$Q27.3.
TIL023c$Q41.4.<-TIL023c$Q27.4.
TIL023c$Q27.1.<-NULL
TIL023c$Q27.2.<-NULL
TIL023c$Q27.3.<-NULL
TIL023c$Q27.4.<-NULL

DIF094c$Q41.1.<-DIF094c$Q27.1.
DIF094c$Q41.2.<-DIF094c$Q27.2.
DIF094c$Q41.3.<-DIF094c$Q27.3.
DIF094c$Q41.4.<-DIF094c$Q27.4.
DIF094c$Q17<-DIF094c$Q21
DIF094c$Q27.1.<-NULL
DIF094c$Q27.2.<-NULL
DIF094c$Q27.3.<-NULL
DIF094c$Q27.4.<-NULL
DIF094c$Q21<-NULL

TIL025c$Q41.1.<-TIL025c$Q27.1.
TIL025c$Q41.2.<-TIL025c$Q27.2.
TIL025c$Q41.3.<-TIL025c$Q27.3.
TIL025c$Q41.4.<-TIL025c$Q27.4.
TIL025c$Q27.1.<-NULL
TIL025c$Q27.2.<-NULL
TIL025c$Q27.3.<-NULL
TIL025c$Q27.4.<-NULL

TIL026c$Q41.1.<-TIL026c$Q27.1.
TIL026c$Q41.2.<-TIL026c$Q27.2.
TIL026c$Q41.3.<-TIL026c$Q27.3.
TIL026c$Q41.4.<-TIL026c$Q27.4.
TIL026c$Q27.1.<-NULL
TIL026c$Q27.2.<-NULL
TIL026c$Q27.3.<-NULL
TIL026c$Q27.4.<-NULL

TIL014c$Q41.1.<-TIL014c$Q27.1.
TIL014c$Q41.2.<-TIL014c$Q27.2.
TIL014c$Q41.3.<-TIL014c$Q27.3.
TIL014c$Q41.4.<-TIL014c$Q27.4.
TIL014c$Q27.1.<-NULL
TIL014c$Q27.2.<-NULL
TIL014c$Q27.3.<-NULL
TIL014c$Q27.4.<-NULL

AGA067c$Q24<-AGA067c$Q30
AGA067c$Q30<-NULL
                  
AGA071c$Q41.1.<-AGA071c$Q27.1.
AGA071c$Q41.2.<-AGA071c$Q27.2.
AGA071c$Q41.3.<-AGA071c$Q27.3.
AGA071c$Q41.4.<-AGA071c$Q27.4.
AGA071c$Q27.1.<-NULL
AGA071c$Q27.2.<-NULL
AGA071c$Q27.3.<-NULL
AGA071c$Q27.4.<-NULL

AGA084c$Q10<-AGA084$Q7
AGA084c$Q9<-AGA084$Q6
AGA084c$Q11<-AGA084$Q8
AGA084c$Q12<-AGA084$R9
AGA084c$Q13<-AGA084$Q10
AGA084c$Q6<-NULL
AGA084c$Q7<-NULL
AGA084c$Q8<-NULL
AGA084c$R9<-NULL
 

TIL024c$Q10<-TIL024$Q7
TIL024c$Q9<-TIL024$Q6
TIL024c$Q11<-TIL024$Q8
TIL024c$Q12<-TIL024$R13
TIL024c$Q13<-TIL024$Q10
TIL024c$Q6<-NULL
TIL024c$Q7<-NULL
TIL024c$Q8<-NULL
TIL024c$R13<-NULL

TIL015c$Q10<-TIL015$Q7
TIL015c$Q9<-TIL015$Q6
TIL015c$Q11<-TIL015$Q8
TIL015c$Q12<-TIL015$R13
TIL015c$Q13<-TIL015$Q10
TIL015c$Q6<-NULL
TIL015c$Q7<-NULL
TIL015c$Q8<-NULL
TIL015c$R13<-NULL

DIF130c$Q24<-DIF130$Q7
DIF130c$Q11<-DIF130$Q10
DIF130c$Q10<-DIF130$Q9
DIF130c$Q9<-DIF130$Q8
DIF130c$Q7<-NULL
DIF130c$Q8<-NULL
DIF130c$R13<-NULL



#Combine tables

NCCIbind <- rbind.fill(AGA041c, AGA045c, AGA051c, AGA055c, AGA059c, AGA060c, AGA061c, DIF010c, DIF018c, DIF044c,NIA029c, TIL006c, 
                       TIL007c, TIL009c, DIF040c, DIF048c, DIF045c, AGA062c, DIF038c, AGA031c, CFWNM2c, TIL016c, AGA066c, DIF050c,
                       AGA063c, TIL018c, TIL010c, TIL004c, AtelierLeaderc, DIF055c, AGA052c, TIL023c, DIF094c, TIL025c, TIL026c, 
                       TIL014c, DIF100c, AGA074c, DIF105c, DIF130c, AGA071c)

NCCIbind2 <- rbind.fill(AGA067c, TIL039c, DIF138c, AGA086c, AGA083c, DIF140c, AGA085c, TIL035c, TIL037c, DIF107c, DIF145c, AGA077c, 
                       DIF108c, DIF123c, DIF125c, DIF121c, DIF130c, AGA084c, TIL061c, AGA101c, TIL024c, TIL040c, TIL015c)



#Replace numerical codes with text labels

NCCIbind$Language <- factor(NCCIbind$Q1, levels = c(1,2,3,4,5,6,7,8), labels = c("Haussa", "Français", "Toubou", "Tamasheq","Kanouri","Zarma","Fulfulde Adamawa","Arabe"))
NCCIbind$Region <- factor(NCCIbind$Q2, levels = c(1,2,3,4,"-oth-"), labels = c("Agadez","Diffa","Niamey","Tillabery","Other"))
NCCIbind$Age.Group<-cut(NCCIbind$Q7,breaks=c(0,17,30,45,60,100), labels=c("Under 18","18-30","31-45","46-60","60+" ))
NCCIbind$Ethnicity <- factor(NCCIbind$Q9, levels = c(1,2,3,4,5,6,7,8), labels = c("Haussa", "Touareg", "Peul", "Zarma/Songhai","Toubou","Kanouri","Arabe","Je préfère ne pas répondre"))
NCCIbind$Gender<-NCCIbind$Q8
NCCIbind$Participation<-factor(NCCIbind$Q10, labels = c("Je suis un jeune participant à la formation et un membre de l'équipe qui va bénéficier des unités de production d'eau","Je suis un organisateur (autorité, partenaire)","Je suis un membre de la communauté (spectateur de processus)", "Sans réponse" ))
NCCIbind$Selection.Beneficiaries <- factor(NCCIbind$Q17, levels = c(1,2,3,4,5,6), labels = c("Très juste", "Juste", "Neutre", "Peu juste","Très injuste","Sans Response"))

#Replace numerical codes with text labels--V2
NCCIbind2$Language <- factor(NCCIbind2$Q1, levels = c(1,2,3,4,5,6,7,8), labels = c("Haussa", "Français", "Toubou", "Tamasheq","Kanouri","Zarma","Fulfulde Adamawa","Arabe"))
NCCIbind2$Region <- factor(NCCIbind2$Q2, levels = c(1,2,3,4,"-oth-"), labels = c("Agadez","Diffa","Niamey","Tillabery","Other"))
NCCIbind2$Age.Group<-cut(NCCIbind2$Q24,breaks=c(0,17,30,45,60,100), labels=c("Under 18","18-30","31-45","46-60","60+" ))
NCCIbind2$Ethnicity <- factor(NCCIbind2$Q10, levels = c(1,2,3,4,5,6,7,8), labels = c("Haussa", "Touareg", "Peul", "Zarma/Songhai","Toubou","Kanouri","Arabe","Je préfère ne pas répondre"))
NCCIbind2$Gender<-NCCIbind2$Q9
NCCIbind2$Participation<-factor(NCCIbind2$Q11, labels = c("Je suis un jeune participant à la formation et un membre de l'équipe qui va bénéficier des unités de production d'eau","Je suis un organisateur (autorité, partenaire)","Je suis un membre de la communauté (spectateur de processus)"))
NCCIbind2$RegroupeParticipants<-NCCIbind2$Q12
NCCIbind2$ResteEnContact<-factor(NCCIbind2$Q13, labels = c("Non", "Rarement", "Frequement"))
NCCIbind2$CommentContact<-factor(NCCIbind2$Q14, labels = c("Face-à-face", "Téléphone", "Social"))



NCCIbind$Cartes.information<-NCCIbind$Q41.1.
NCCIbind$Annonces.pendant<-NCCIbind$Q41.2.
NCCIbind$radio<-NCCIbind$Q41.3.
NCCIbind$bouche.orielle<-NCCIbind$Q41.4.

NCCIbind$Q41.1.<-NULL
NCCIbind$Q41.2.<-NULL
NCCIbind$Q41.3.<-NULL
NCCIbind$Q41.4.<-NULL

NCCIcomplete <- rbind.fill(NCCIbind, NCCIbind2)
NCCIcomplete$AllRespondents<-"All Respondents"
NCCIcomplete$month<-format(as.Date(NCCIcomplete$startdate), "%Y-%m")

#Merge program data
NCCIcomplete <- merge(NCCIcomplete,NER_Obj3,by="Survey")

#Create separate table for ‘multiple selection’ questions

NCCImelt = melt(subset(NCCIcomplete, Cartes.information=="Y" | Annonces.pendant=="Y" | radio=="Y" | bouche.orielle=="Y"), id.vars=c("Language","Region","Age.Group","Ethnicity","Gender","Participation","Survey", "month","Objective3"), measure.vars=c("Cartes.information","Annonces.pendant","radio","bouche.orielle"))
NCCImelt$QForm <- paste(NCCImelt$variable,NCCImelt$value)
NCCImelt$Comment.Entendu <- factor(NCCImelt$QForm, levels = c("Cartes.information Y","Annonces.pendant Y", "radio Y", "bouche.orielle Y"), labels = c("Via les cartes d'information ", "Au travers d'annonces pendant l'activité ", "A la radio", "Par le bouche à oreille"))
NCCImelt$QForm<-NULL
NCCImelt$AllRespondents<-"All Respondents"

save.image()

