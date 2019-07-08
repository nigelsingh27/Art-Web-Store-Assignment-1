<?xml version='1.0' encoding='UTF-8' ?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
      <xsl:output version='1.0' encoding='UTF-8' indent='no' method='xml' />

      <xsl:template match='/'>
	  
  <FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
  <ERRORCODE>0</ERRORCODE>
  <PRODUCT BUILD="11/13/2002" NAME="FileMaker Pro" VERSION="6.0v4"/>
  <DATABASE DATEFORMAT="M/d/yyyy" LAYOUT="" NAME="museums.FP5" RECORDS="" TIMEFORMAT="h:mm:ss a"/>
  <METADATA>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="id" TYPE="NUMBER"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="name" TYPE="TEXT"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="date" TYPE="DATE"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="location" TYPE="TEXT"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="address" TYPE="TEXT"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="people" TYPE="TEXT"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="history" TYPE="TEXT"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="famous" TYPE="TEXT"/>


						  </METADATA>
<RESULTSET FOUND="">
		<xsl:for-each select="database/museums/museum">
       <ROW MODID="" RECORDID="">
                      <COL><DATA><xsl:value-of select="id"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="name"/></DATA></COL></td>
                      <COL><DATA><xsl:value-of select="date"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="location"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="address"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="people"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="history"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="famous"/></DATA></COL>

		  </ROW>
        </xsl:for-each>
 </RESULTSET>
 </FMPXMLRESULT>
      </xsl:template>

</xsl:stylesheet>
