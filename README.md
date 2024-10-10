# cs304-scripts

This repo contains some shell and makefile for grading students:
the structure can be the following shape:
```
~/whoevertheTA/cs304/lab1
├── student_folder_a
│   ├── make_execution.log
│   ├── labxpxx.c
│   ├── Makefile
│   └── README
├── student_folder_b
│   ├── make_execution.log
│   ├── labxpxx.c
│   ├── Makefile
│   └── README
├── student_folder_xxx
...
...
├── log-simple.txt
├── log.txt
├── ex_make.sh    \\ exec all makefiles
├── g_makefile.sh \\ insert the template makefile to each stu's folder
├── make_execution.log
├── Makefile
```
The log-simple log contains res w/o checks
The log-full.txt contains res w/ mem checks