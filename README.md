# GDP1_Well_log_data
Well logging data from a hydrothermally altered shear zone

This repository contains well logging data from the well GDP1 which was utilized in the publication: Caspari, E., Greenwood, A., Baron, L., Egli, D., Toschini, E., Hu, K., and Holliger, K.: Characteristics of a fracture network surrounding a hydrothermally altered shear zone from geophysical borehole logs, Solid Earth Discuss., https://doi.org/10.5194/se-2019-151, in review, 2019.  The data was collected within the National Research Programme 70 “Energy Turnaround” associated with the Swiss Competence Center on Energy Research – Supply of Electricity.  

The following data files are included as las files. They can be opened in any text editor or the data can be read into Matlab with the function read_las.m.

Resistivity logs raw and processed:
GDP1_Polyprobe2015_raw.las
GDP1_Polyprobe2015_proc.las
GDP1_Polyprobe2016_raw.las
GDP1_Polyprobe2016_proc.las
GDP1_Polyprobe2017_raw.las
GDP1_Polyprobe2017_proc.las
Nuclear logs and Caliper depth corrected:
GDP1_Nuclear_Caliper_depth_cor.las
Slowness obtained from the Full waveform sonic data:
GDP1_FWS_proc_slowness.las
Borehole radar velocities obtained from single hole reflection data:
GDP1_BHR_proc_velocities.las

The raw borehole radar data comprising the files:  GDP1_BHR_2015_data_raw.rd3 and GDP1_BHR_2015_header.rad, can be read with the following matlab library:

Aslak Grinsted (2020). RD3 Library (https://www.mathworks.com/matlabcentral/fileexchange/6129-rd3-library), MATLAB Central File Exchange. Retrieved March 15, 2020. 

The fractures identified from Optical televiewer data and their properties are listed in the text file: GDP1_OTV_Fracture_info.txts
