<CFSCRIPT>
a1=ArrayNew(1);
a1[1]=1;
a1[2]=2;
a1[3]=3;
a1[4]=4;
a1[5]=5;
a1[6]=6;
a2=ArrayNew(1);
a2[1]="a";
a2[2]=structNew();
a2[2].cheese="fgfgfg";
a2[3]="c";
a2[4]="d";
a3=arrayConcat(a1, a2);
</cfscript>
a1:
<CFDUMP var="#a1#">
a2:
<CFDUMP var="#a2#">
a3:
<CFDUMP var="#a3#">
<cfscript>
function ArrayConcat(a1, a2){
    var i=1;
    if ((NOT IsArray(a1)) OR (NOT IsArray(a2))) {
        writeoutput("Error in <Code>ArrayConcat()</code>! Correct usage: ArrayConcat(<I>Array1</I>, <I>Array2</I>) -- Concatenates Array2 to the end of Array1");
        return 0;
    }
    for (i=1;i LTE ArrayLen(a2);i=i+1) {
        ArrayAppend(a1, Duplicate(a2[i]));
    }
    return a1;
}
</cfscript>