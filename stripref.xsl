<?xml version="1.0"?>
<!-- $Id: stripref.xsl,v 1.1 2006-09-05 10:05:14 adam Exp $ -->
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">

    <xsl:output method="xml" encoding="UTF-8"/>

<xsl:template match="/">
  <xsl:copy-of select="*"/>
</xsl:template>

</xsl:stylesheet>

