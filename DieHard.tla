------------------------------ MODULE diehard ------------------------------
EXTENDS Integers
VARIABLES small, big
TypeOk == /\ small \in 0..3
          /\ big \in 0..5

Init == /\ small = 0
        /\ big = 0

FillSmall == /\ small' = 3
             /\ big' = big
             
FillBig == /\ big' = 5
           /\ small' = small
           
EmptyBig == /\ big' = 0
            /\ small' = small
            
EmptySmall == /\ small' = 0
              /\ big'   = big
              
SmallToBig == IF big + small =< 5
              THEN /\ big'   = big + small
                   /\ small' = 0
              ELSE /\ big'   = 5
                   /\ small' = big + small - 5
                   
BigToSmall == IF big + small <= 3
              THEN /\ small' = small + big
                   /\ big'   = 0
              ELSE /\ small' = 3
                   /\ big'   = small + big - 3

Next== \/ FillSmall
       \/ FillBig
       \/ EmptyBig
       \/ EmptySmall
       \/ SmallToBig
       \/ BigToSmall

=============================================================================
\* Modification History
\* Last modified Wed Jul 29 18:55:02 CST 2020 by qzoscar
\* Created Wed Jul 29 18:26:31 CST 2020 by qzoscar
