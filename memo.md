# cronの曜日指定について
0-7で指定する  
0,7は日曜日  
1　月  
2　火  
3　水  
4　木  
5　金  
6　土  
火曜日24:00~を指定したい場合は `"00 00 * * 3"`  
**厳密には水曜日0:01~となるため、3(水曜日)を指定している**  
深夜帯の番組を指定する際は翌日の曜日を指定する