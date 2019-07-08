<?xml version='1.0' encoding='UTF-8' ?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
      <xsl:output version='1.0' encoding='UTF-8' indent='no' method='xml' />

      <xsl:template match='/'>
  <FMPXMLRESULT xmlns="http://www.filemaker.com/fmpxmlresult">
  <ERRORCODE>0</ERRORCODE>
  <PRODUCT BUILD="11/13/2002" NAME="FileMaker Pro" VERSION="6.0v4"/>
  <DATABASE DATEFORMAT="M/d/yyyy" LAYOUT="" NAME="artworks.FP5" RECORDS="" TIMEFORMAT="h:mm:ss a"/>
  <METADATA>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="id" TYPE="NUMBER"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="name" TYPE="TEXT"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="date" TYPE="DATE"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="type" TYPE="TEXT"/>
						  <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="dimensions" TYPE="TEXT"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="location" TYPE="TEXT"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="artist" TYPE="TEXT"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="price" TYPE="NUMBER"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="genre" TYPE="TEXT"/>
                          <FIELD EMPTYOK="YES" MAXREPEAT="1" NAME="general" TYPE="TEXT"/>

  </METADATA>
  <RESULTSET FOUND="">
		<xsl:for-each select="database/artworks/artwork">
              <ROW MODID="" RECORDID="">
                      <COL><DATA><xsl:value-of select="id"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="name"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="date"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="type"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="dimensions"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="location"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="artist"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="price"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="genre"/></DATA></COL>
                      <COL><DATA><xsl:value-of select="general"/></DATA></COL>

					  </ROW>
        </xsl:for-each>
 </RESULTSET>
 </FMPXMLRESULT>
      </xsl:template>

</xsl:stylesheet>
