## Creating realtime preventative measures for veterans with PTSD
### Applied Cognitive Ergonomics Lab, Texas A&M University
*For more information on current projects and future works from ACELAB visit:*
https://acelab.tamu.edu/projects-current/

### **Project Goals**
- Use noninvasive data collection techniques to facilitate longterm and reliable data aggregation
- Give veterans more freedom in their day-to-day lives by preemptively alerting to oncoming PTSD episodes
- Aid in clinical transparency by giving care providers a repository of reliable data

### **Overview**
Longterm heartrate and motion data is collected from participating veterans, who may utilize ACELAB software to flag moments of significant stress. Kalman imputation is utilized to fill missing heartrate values before being windowed into 120 second intervals. Any window with greater than 20 missing heartrate values is removed from the participant's final database to ensure accuracy in modeling. After which, heartrate features are extracted to a wholistic database. Any methods utilized in less-than conventional ways are done so to ensure the usability of project-specific raw data and it's required formatting.

### **Notes on Liscening and Availability**
This codebase is provided free of charge for future-use to any individuals or entities as per MIT liscensing standard. The MIT lisence is utilized in hopes that these techniques may be applicable to or facilitate education regarding future projects which promote services to public health or aid in the advancement of personal health for individuals in need. 
