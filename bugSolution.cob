01  WS-AREA-1 PIC 9(5) VALUE ZEROES. 
01  WS-AREA-2 PIC 9(5) VALUE ZEROES. 
01 WS-AREA-3 PIC 9(5). 

PROCEDURE DIVISION. 
    ADD 1 TO WS-AREA-1. 
    IF WS-AREA-1 > 5 THEN 
        MOVE WS-AREA-1 TO WS-AREA-2 
    ELSE 
        DISPLAY "WS-AREA-1 is less than or equal to 5" 
    END-IF. 
    IF WS-AREA-1 > 99999 THEN
        MOVE 99999 TO WS-AREA-3
        DISPLAY "WS-AREA-1 exceeds maximum value. Setting to 99999"
    ELSE
        MOVE WS-AREA-1 TO WS-AREA-3
    END-IF.
    STOP RUN.