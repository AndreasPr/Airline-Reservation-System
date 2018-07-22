<?xml version="1.0"?>

<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
	<head></head>
<body>

<table border = "1">
<tr bgcolor="#9acd32">
		<th>ID</th>
		<th>Name</th>
		<th>Manager</th>
		<th>Department</th>
		<th>Hours</th>
		<th>Week</th>
</tr>

	<xsl:if test="//@hours &gt; 60">
		<tr align = "right">
			<th><xsl:value-of select = "//@ID"/></th>
			<th><xsl:value-of select = "//Name"/></th>
			<th><xsl:value-of select = "//Manager"/></th>
			<th><xsl:value-of select = "//Belongs_to_dept"/></th>
			<th><xsl:value-of select = "//@hours"/></th>
			<th><xsl:value-of select = "//@period"/></th>
	</tr>



	</xsl:if>
</table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>