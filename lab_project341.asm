.MODEL LARGE

PRINT MACRO A 
    LEA DX, A
    INT 21H    
    ENDM

.STACK 1000H
.DATA

NEWLINE    DB 10,13,10,13, ' $'

M_title1   DB 10,13,       '                 ***********************************************$'
M_title2   DB 10,13,       '                 **                 Welcome to                **$' 
M_title3   DB 10,13,       '                 **        Who Wants To be a Millionaire      **$'
M_title4   DB 10,13,       '                 ***********************************************$'


M_Menu1    DB 10,13,10,13, '          1.Start Game$'
M_Menu2    DB 10,13,       '          2.View Rules$'
M_Menu3    DB 10,13,       '          3.Exit$'
M_Menu0    DB 10,13,10,13, '          Enter an option: $'
          

M_Rule0    DB 10,13,10,13, '      ********************************************************************$'
M_Rule1    DB 10,13,       '      **  Enter the right answer from (A,B,C,D) to move to next round.  **$'
M_Rule2    DB 10,13,       '      **  Choosing the wrong answer will result in game loss.           **$'
M_Rule3    DB 10,13,       '      **  There is a  one-time-use lifeline.                            **$'
M_Rule4    DB 10,13,       '      **  Question Switch: Swap the question with another one.          **$'
M_Rule7    DB 10,13,       '      **                                                                **$'
M_Rule8    DB 10,13,       '      **  Reach the final question and win the million Dollars!         **$'
M_Rule9    DB 10,13,       '      ********************************************************************$'


M_over1    DB 10,13,       '              ****************************************************        $'
M_over2    DB 10,13,       '              **    Unfortunately, that was the wrong answer.   **        $'
M_over3    DB 10,13,       '              **            Your Total Winnings are:            **        $'
CASH0      DB 10,13,       '              **                     $'
CASH1      DB                                                    ' Dollars                  **        $'
CASH2      DB                                                    '0k Dollars                **        $'
CASH3      DB                                                    '00k Dollars               **        $'
M_over4    DB 10,13,       '              **             Thank You for Playing!             **        $'
M_over5    DB 10,13,       '              ****************************************************        $'


WIN1       DB 10,13,       '              **  Congrations! You correctly answsered all the  **        $'
WIN2       DB 10,13,       '              **              questions. You won:               **        $'
WIN3       DB 10,13,       '              **                                                **        $'
WIN4       DB 10,13,       '              **            !!!A MILLION DOLLARS!!!             **        $'

                                            
M_Invalid1 DB 10,13,10,13, '                              ---**  INVALID INPUT  **--- $'
M_Invalid2 DB 10,13,       '                            ---** APPLICATION CLOSED **---$'
M_Invalid3 DB 10,13,       '                              ---**    TRY AGAIN    **--- $'

THANKS    DB 10,13,        '                    ----**  Thank You for Playing! **---                  $'                                                                                                                            
Q_titleTop DB 10,13,       '      ********************************************************************$'
Q1_title1  DB 10,13,       '      **                                                                **$'
Q1_title2  DB 10,13,       '      **   Which of the following is not a type of sorting algorithm?   **$'
Q1_title3  DB 10,13,       '      **                                                                **$'
Q_titleBot DB 10,13,       '      ********************************************************************$'

Q_ansTop   DB 10,13,       '      *****************************          *****************************$'
Q1_ans1    DB 10,13,       '      **      A. Quick Sort      **          **      B. Merge Sort      **$'
Q_ansBot   DB 10,13,       '      *****************************          *****************************$'

Q1_ans2    DB 10,13,       '      **      C. Bubble Sort     **          **      D. Random Sort     **$'
Q_input    DB 10,13,       '      Enter your answer: $'


Q2_title1  DB 10,13,       '      **                                                                **$'
Q2_title2  DB 10,13,       '      **   Which data structure works on the principle of First In,     **$'
Q2_title3  DB 10,13,       '      **   First Out (FIFO)?                                            **$'
Q2_ans1    DB 10,13,       '      **      A. Stack           **          **      B. Array           **$'
Q2_ans2    DB 10,13,       '      **      C. Queue           **          **      D. Linked List     **$'


Q3_title1  DB 10,13,       '      **                                                                **$'
Q3_title2  DB 10,13,       '      **   Which data structure is used in a Depth First Search (DFS)?  **$'
Q3_title3  DB 10,13,       '      **                                                                **$'
Q3_ans1    DB 10,13,       '      **      A. Queue           **          **      B. Priority Queue  **$'
Q3_ans2    DB 10,13,       '      **      C. Linked list     **          **      D. Stack           **$'


Q4_title1  DB 10,13,       '      **                  If a rectangle has sides of                   **$'
Q4_title2  DB 10,13,       '      **                        length 3 and 4,                         **$'
Q4_title3  DB 10,13,       '      **              what is the length of the diagonal?               **$'
Q4_ans1    DB 10,13,       '      **      A. 5               **          **      B. None            **$'
Q4_ans2    DB 10,13,       '      **      C. 10              **          **      D. 7               **$'


Q5_title1  DB 10,13,       '      **                                                                **$'
Q5_title2  DB 10,13,       '      **  Which of the following is the largest continent by land area? **$'
Q5_title3  DB 10,13,       '      **                                                                **$'
Q5_ans1    DB 10,13,       '      **      A. Africa          **          **      B. Asia            **$'
Q5_ans2    DB 10,13,       '      **      C.  North America  **          **      D. Europe          **$'


Q6_title1  DB 10,13,       '      **                                                                **$'
Q6_title2  DB 10,13,       '      **      Which planet is known as the Red Planet?                  **$'
Q6_title3  DB 10,13,       '      **                                                                **$'
Q6_ans1    DB 10,13,       '      **      A. Venus           **          **      B. Mars            **$'
Q6_ans2    DB 10,13,       '      **      C. Jupiter         **          **      D. Saturn          **$'


LIFE_SKIP  DB 1
LIFE_SKIP_AVAIL DB         '                                        USE LIFELINE: SKIP QUESTION (E)   $'
LIFE_DOUB  DB 1

NO_LIFELINE1   DB 10,13,   '      Sorry, you do not have any lifelines left.$'
NO_LIFELINE2   DB 10,13,   '      Press ENTER to return back to question.$'

CASH       DB 0,5,1,3,5

.CODE
MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
  
    START:
        MOV BL,0
        MOV SI,0
        MOV AH,9
        PRINT M_title1               
        PRINT M_title2       
        PRINT M_title3      
        PRINT M_title4
  
  
    MENU:
        MOV AH,9      
        PRINT NEWLINE
        PRINT M_Menu1
        PRINT M_Menu2
        PRINT M_Menu3
        PRINT M_Menu0
        ;Main menu options (start game, rule, exit)
        MOV AH,1
        INT 21H
        MOV BH,AL
        SUB BH,48
        
        CMP BH,1
        JE GAME_QUESTION1        
        CMP BH,2
        JE RULE           
        CMP BH,3
        JE EXIT_1        
        JMP INVALID
            
    
    RULE:
        MOV AH,9        
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT M_Rule0
        PRINT M_Rule1
        PRINT M_Rule2
        PRINT M_Rule3
        PRINT M_Rule4
        PRINT M_Rule7
        PRINT M_Rule8
        PRINT M_Rule9
        PRINT NEWLINE
        PRINT NEWLINE        
        JMP MENU

   
    GAME_QUESTION1:
        
        INC BL        
        MOV AH,9
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT Q_titleTop
        PRINT Q1_title1
        PRINT Q1_title2
        PRINT Q1_title3
        PRINT Q_titleBot
        PRINT NEWLINE
        PRINT Q_ansTop
        PRINT Q1_ans1
        PRINT Q_ansBot
        PRINT NEWLINE
        PRINT Q_ansTop
        PRINT Q1_ans2
        PRINT Q_ansBot
        PRINT NEWLINE
        
        CMP LIFE_SKIP,1
        JE SHOW_LIFE_SKIP
        
    BACK_TO_QUESTION1:
        PRINT NEWLINE
        PRINT Q_input
        ;take input and compare
        MOV AH,1
        INT 21H
        MOV BH,AL
        SUB BH,64
        ;correct answer for Q1
        CMP BH,4         
        JE GAME_QUESTION2
        ;lifelife used
        CMP BH,5
        JE CHECK_LIFELINE_THEN_SHOW_Q6
        ;all wrong answers
        CMP BH,1
        JE WRONG_ANS
        CMP BH,2
        JE WRONG_ANS
        CMP BH,3
        JE WRONG_ANS
        ;any other input given
        JMP INVALID


    GAME_QUESTION2:
        
        INC BL        
        MOV AH,9
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT Q_titleTop
        PRINT Q2_title1
        PRINT Q2_title2
        PRINT Q2_title3
        PRINT Q_titleBot
        PRINT NEWLINE
        PRINT Q_ansTop
        PRINT Q2_ans1
        PRINT Q_ansBot
        PRINT NEWLINE
        PRINT Q_ansTop
        PRINT Q2_ans2
        PRINT Q_ansBot
        PRINT NEWLINE


        CMP LIFE_SKIP,1
        JE SHOW_LIFE_SKIP   
        
    BACK_TO_QUESTION2:
        
        PRINT NEWLINE
        PRINT Q_input
        ;take input and compare
        MOV AH,1
        INT 21H
        MOV BH,AL
        SUB BH,64
        ;correct answer for Q2
        CMP BH,3         
        JE GAME_QUESTION3
        ;lifelife used
        CMP BH,5
        JE CHECK_LIFELINE_THEN_SHOW_Q6
        ;all wrong answers
        CMP BH,1
        JE WRONG_ANS
        CMP BH,2
        JE WRONG_ANS
        CMP BH,4
        JE WRONG_ANS
        ;any other input given
        JMP INVALID  
                        
      GAME_QUESTION3:
        
        INC BL        
        MOV AH,9
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT Q_titleTop
        PRINT Q3_title1
        PRINT Q3_title2
        PRINT Q3_title3
        PRINT Q_titleBot
        PRINT NEWLINE
        PRINT Q_ansTop
        PRINT Q3_ans1
        PRINT Q_ansBot
        PRINT NEWLINE
        PRINT Q_ansTop
        PRINT Q3_ans2
        PRINT Q_ansBot
        PRINT NEWLINE


        CMP LIFE_SKIP,1
        JE SHOW_LIFE_SKIP   
        
    BACK_TO_QUESTION3:
        
        PRINT NEWLINE
        PRINT Q_input
        ;take input and compare
        MOV AH,1
        INT 21H
        MOV BH,AL
        SUB BH,64
        ;correct answer for Q3
        CMP BH,4         
        JE GAME_QUESTION4
        ;lifelife used
        CMP BH,5
        JE CHECK_LIFELINE_THEN_SHOW_Q6
        ;all wrong answers
        CMP BH,1
        JE WRONG_ANS
        CMP BH,2
        JE WRONG_ANS
        CMP BH,3
        JE WRONG_ANS
        ;any other input given
        JMP INVALID    


    GAME_QUESTION4:
        
        INC BL        
        MOV AH,9
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT Q_titleTop
        PRINT Q4_title1
        PRINT Q4_title2
        PRINT Q4_title3
        PRINT Q_titleBot
        PRINT NEWLINE
        PRINT Q_ansTop
        PRINT Q4_ans1
        PRINT Q_ansBot
        PRINT NEWLINE
        PRINT Q_ansTop
        PRINT Q4_ans2
        PRINT Q_ansBot
        PRINT NEWLINE
        
        CMP LIFE_SKIP,1
        JE SHOW_LIFE_SKIP
        
    BACK_TO_QUESTION4:
        PRINT NEWLINE
        PRINT Q_input
        ;take input and compare
        MOV AH,1
        INT 21H
        MOV BH,AL
        SUB BH,64
        ;correct answer for Q4
        CMP BH,1         
        JE GAME_QUESTION5
        ;lifelife used
        CMP BH,5
        JE CHECK_LIFELINE_THEN_SHOW_Q6
        ;all wrong answers
        CMP BH,2
        JE WRONG_ANS
        CMP BH,3
        JE WRONG_ANS
        CMP BH,4
        JE WRONG_ANS
        ;any other input given
        JMP INVALID        


    GAME_QUESTION5:
        
        INC BL        
        MOV AH,9
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT Q_titleTop
        PRINT Q5_title1
        PRINT Q5_title2
        PRINT Q5_title3
        PRINT Q_titleBot
        PRINT NEWLINE
        PRINT Q_ansTop
        PRINT Q5_ans1
        PRINT Q_ansBot
        PRINT NEWLINE
        PRINT Q_ansTop
        PRINT Q5_ans2
        PRINT Q_ansBot
        PRINT NEWLINE
        
        CMP LIFE_SKIP,1
        JE SHOW_LIFE_SKIP
        
    BACK_TO_QUESTION5:
        PRINT NEWLINE
        PRINT Q_input
        ;take input and compare
        MOV AH,1
        INT 21H
        MOV BH,AL
        SUB BH,64
        ;correct answer for Q5
        CMP BH,2         
        JE WINNER
        ;lifelife used
        CMP BH,5
        JE CHECK_LIFELINE_THEN_SHOW_Q6
        ;all wrong answers
        CMP BH,1
        JE WRONG_ANS
        CMP BH,3
        JE WRONG_ANS
        CMP BH,4
        JE WRONG_ANS
        ;any other input given
        JMP INVALID



    SHOW_LIFE_SKIP:
        MOV AH,9        
        LEA DX, LIFE_SKIP_AVAIL
        INT 21H
        CMP BL,1
        JE BACK_TO_QUESTION1
        CMP BL,2
        JE BACK_TO_QUESTION2
        CMP BL,3
        JE BACK_TO_QUESTION3
        CMP BL,4
        JE BACK_TO_QUESTION4
        CMP BL,5
        JE BACK_TO_QUESTION5

    CHECK_LIFELINE_THEN_SHOW_Q6:
        MOV AH,9
        CMP LIFE_SKIP,1
        JNE NO_LIFELINE_BACK_TO_QUESTION
        DEC LIFE_SKIP 
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT Q_titleTop
        PRINT Q6_title1
        PRINT Q6_title2
        PRINT Q6_title3
        PRINT Q_titleBot
        PRINT NEWLINE
        PRINT Q_ansTop
        PRINT Q6_ans1
        PRINT Q_ansBot
        PRINT NEWLINE
        PRINT Q_ansTop
        PRINT Q6_ans2
        PRINT Q_ansBot
        PRINT NEWLINE
                   
        PRINT NEWLINE           
        PRINT Q_input
        ;take input and compare
        MOV AH,1
        INT 21H
        MOV BH,AL
        SUB BH,64
        ;correct answer for Q6
        CMP BH,2         
        JE MOVE_TO_NEXT_QUESTION
        ;lifelife used
        ;all wrong answers
        CMP BH,1
        JE WRONG_ANS
        CMP BH,3
        JE WRONG_ANS
        CMP BH,4
        JE WRONG_ANS
        ;any other input given
        JMP INVALID 
        
        
     MOVE_TO_NEXT_QUESTION:
        CMP BL,1
        JE GAME_QUESTION2
        CMP BL,2
        JE GAME_QUESTION3
        CMP BL,3
        JE GAME_QUESTION4
        CMP BL,4
        JE GAME_QUESTION5
        CMP BL,5
        JE WINNER 
    
    NO_LIFELINE_BACK_TO_QUESTION:
        
        PRINT NEWLINE
        PRINT NO_LIFELINE1
        PRINT NO_LIFELINE2
        
        MOV AH,1
        INT 21H
        
        CMP AL,13
        JNE INVALID
        
        CMP BL,1
        JE GAME_QUESTION1
        CMP BL,2
        JE GAME_QUESTION2
        CMP BL,3
        JE GAME_QUESTION3
        CMP BL,4
        JE GAME_QUESTION4
        CMP BL,5
        JE GAME_QUESTION5                         
                
    WRONG_ANS:
        MOV AH,9
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT M_over1
        PRINT M_over2
        PRINT M_over3
        MOV CX,0
        MOV CL,BL
        MOV SI,CX
        DEC SI
        MOV CL,CASH[SI]       
        PRINT CASH0
        MOV AH,2
        MOV DL,CL
        ADD DL,30H
        INT 21H
        MOV AH,9
        CMP BL,1
        JE CASH1_Print
        CMP BL,2
        JE CASH2_Print
        CMP BL,3
        JE CASH345_Print
        CMP BL,4
        JE CASH345_Print
        CMP BL,5
        JE CASH345_Print

    CASH1_Print:
        PRINT CASH1
        JMP Return_to_wrong
    CASH2_Print:
        PRINT CASH2
        JMP Return_to_wrong
    CASH345_Print:
        PRINT CASH3
        JMP Return_to_wrong
    
    Return_to_wrong:
        PRINT M_over4
        PRINT M_over5
        JMP EXIT_2
    
        
    
    ;any wrong input given at any point of the game
    INVALID:          
        MOV AH,9       
        PRINT M_Invalid1            
        PRINT M_Invalid2        
        PRINT M_Invalid3        
        JMP START
    
    
    ;if all 5 correct answers
    WINNER:
        MOV AH,9
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT M_over1
        PRINT WIN1
        PRINT WIN2
        PRINT WIN3
        PRINT WIN4
        PRINT WIN3
        PRINT M_over4
        PRINT M_over5
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT NEWLINE
        JMP EXIT_2


    ;exit from interface
    EXIT_1:
        MOV AH,9
        PRINT NEWLINE
        PRINT NEWLINE
        PRINT NEWLINE        
        PRINT THANKS
        JMP EXIT
    EXIT_2:
        JMP EXIT
    EXIT:
        MOV AH,4CH
        INT 21H
        MAIN ENDP    
END MAIN



