# self-level-volume
takes a grid of depths returns the voulme of self level that is needed lua 5.1
input must be number of sq in each grid row  size of each square in in-num/dem format
then a space seprated list of every depth same format so
```
inmm.lua 7 36-0/0 1-1/8 1-7/16 1-1/
2 1-5/8 1-13/16 2-3/16 2-3/8 0-15/16 1-0/0 1-1/8 1-1/16 1-3/8 1-3/4
 1-15/16 1-1/16 0-3/4 0-15/16 0-11/16 0-3/4 1-1/8 1-5/8 0-9/16 0-9/
16 0-3/8 0-1/8 0-3/16 1-1/16 1-15/16 0-5/8 0-1/4 0-1/4 0-3/8 0-3/4
1-1/16 1-13/16 0-7/8 0-1/2 0-3/4 0-15/16 1-5/16 1-7/16 1-15/16 1-1/
4 1-3/16 1-7/16 1-3/4 1-3/4 2-1/16 1-7/8 1-9/16 1-3/4 1-3/4 1-7/8 1
-13/16 1-7/8 1-5/8 1-1/4 1-7/16 1-13/16 1-7/8 1-3/4 1-9/16 1-3/4
```
output 
```
29  37  38  41  46  56  60
 24  25  29  27  35  44  49
 27  19  24  17  19  29  41
 14  14  10  3  5  27  49
 16  6  6  10  19  27  46
 22  13  19  24  33  37  49
 32  30  37  44  44  52  48
 40  44  44  48  46  48  41
 32  37  46  48  44  40  44

1715903384      sq mm
60.58854848904  sq ft


````
here ya go for your enjoyment i geuss 


