%<COND (<NOT <GASSIGNED? PREDGEN>>
<ROUTINE RCHK () 
	 <REPEAT ((R <FIRST? ,ROOMS>) (CNT 0))
		<COND (<NOT <FSET? .R ,TOUCHBIT>> <FSET .R ,TOUCHBIT>)
		      (ELSE <ERROR!-  LOOP .R>)>
		<PRINTN <SET CNT <+ .CNT 1>>>
		<PRINT " ">
		<PRINTD .R>
		<CRLF>
		<COND (<NOT <GETP .R ,P?STATION>> <ERROR!-  .R STATION>)>
		<COND (<NOT <GETP .R ,P?LINE>> <ERROR!-  .R LINE>)>
		<COND (<NOT <SET R <NEXT? .R>>> <RETURN>)>>>)>