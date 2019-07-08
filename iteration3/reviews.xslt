<?xml version='1.0' encoding='UTF-8' ?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
      <xsl:output version='1.0' encoding='UTF-8' indent='no' method='xml' />

      <xsl:template match='/'>
  <FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
  <ERRORCODE>0</ERRORCODE>
  <PRODUCT BUILD="11/13/2002" NAME="FileMaker Pro" VERSION="6.0v4"/>
  <DATABASE DATEFORMAT="M/d/yyyy" LAYOUT="" NAME="reviews.FP5" RECORDS="" TIMEFORMAT="h:mm:ss a"/>
  <METADATA>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="content" TYPE="TEXT"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="name" TYPE="TEXT"/>
   </METADATA>
  <RESULTSET FOUND="">
		<xsl:for-each select="database/reviews/review">
              <ROW MODID="" RECORDID="">
                      <COL><DATA><xsl:value-of select="content"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="name"/></DATA></COL>
              </ROW>
        </xsl:for-each>
 </RESULTSET>
 </FMPXMLRESULT>
      </xsl:template>

</xsl:stylesheet>
