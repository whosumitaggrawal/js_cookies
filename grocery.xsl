<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
  <h2>Employee Information</h2>
  <table border="5">
    <tr bgcolor="#0073e6">
      <th style="text-align:left"> Employee ID</th>
      <th style="text-align:left"> Employee Name</th>
      <th style="text-align:left"> Employee Address</th>
      <th style="text-align:left"> Employee Salary</th>
      <th style="text-align:left"> Employee Phone</th>
      <th style="text-align:left"> Employee Email</th>
    </tr>
    <xsl:for-each select="grocery/employee">
      <xsl:sort select ="empname"/>
      <xsl:if test="empphone &gt; 1234">
      <tr>
        <xsl:choose>
          <xsl:when test="empid &gt; 2">
            <td bgcolor ="ff00ff">
            <xsl:value-of select="empid"/></td>
          </xsl:when>
        <xsl:otherwise>
          <td><xsl:value-of select="empid"/></td>
        </xsl:otherwise>
        </xsl:choose>
      
        <td><xsl:value-of select="empname"/></td>
        <td><xsl:value-of select="empaddress"/></td>
        <td><xsl:value-of select="empsalary"/></td>
        <td><xsl:value-of select="empphone"/></td>
        <td><xsl:value-of select="empmail"/></td>
      </tr>
      </xsl:if>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>