--------------------------- MODULE SimpleProgram ---------------------------
EXTENDS Integers
VARIABLES i, pc
Init == (pc="start") /\ (i=0)
Next == \/ /\ pc="start"
           /\ i' \in 0..1000
           /\ pc'="middle"
        \/ /\ pc="middle"
           /\ i'=i+1
           /\ pc'="done"
=============================================================================
\* Modification History
\* Last modified Wed Jul 29 17:59:51 CST 2020 by 10244914
\* Created Wed Jul 29 17:55:41 CST 2020 by 10244914
