<?xml version="1.0"?>

<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
<html>
	<head></head>
<body>


<table>
<tr>01-07/01/18</tr>
</table>


<table border = "1">

<tr bgcolor="#9acd32">
		<th>Name</th>
		<th>Hours</th>
</tr>
	<xsl:for-each select = "TimeCards/Employees/Employee">
		<xsl:sort select = "TimeCards/Employees/Employee/Dates_of_week/All_TotalHours/@hours" order = "descending"/>
			<tr align = "right">
				<th><xsl:value-of select = "Name"/></th>
				<th><xsl:value-of select = "Dates_of_week/All_TotalHours/@hours"/></th>
			</tr>
	</xsl:for-each>
</table>


<br/>
<br/>
<br/>

<table>
<tr>08-14/01/18</tr>
</table>
<table border = "1">

<tr bgcolor="#9acd32">
		<th>Name</th>
		<th>Hours</th>
</tr>

<xsl:for-each select = "TimeCards/Employees/Employee">
	<xsl:if test = "Dates_of_week[contains(@period,'08/01/2018-14/01/18')]" >
				<tr align = "right">
					<th><xsl:value-of select = "Name"/></th>
					<th><xsl:value-of select = "//@hours2"/></th>
				</tr>
	</xsl:if>
</xsl:for-each>
</table>

</body>
</html>
</xsl:template>

</xsl:stylesheet>