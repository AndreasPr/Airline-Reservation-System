<?xml version="1.0"?>

<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">



<xsl:template match="/">
<html>
	<head></head>
<body>


<table border = "1">

<tr>
	<th>Name</th>
	<th>Manager</th>
	<th>Week</th>
	<th>Regular Hours</th>
	<th>Overtime Hours</th>
	<th>Sick</th>
	<th>Vacation</th>
	<th>Holiday </th>
	<th>Other</th>
</tr>

<xsl:for-each select = "TimeCards/Employees/Employee">
	<tr align = "right">
		<th><xsl:value-of select = "Name"/></th>
		<th><xsl:value-of select = "Manager"/></th>
	
	<xsl:for-each select = "Dates_of_week">
		<xsl:if test = ".[contains(@period,'01/01/18 - 07/01/18')]">

		<th><xsl:value-of select = "@period"/></th>
		<th><xsl:value-of select = "All_TotalHours/total_Regular_Hours"/></th>
		<th><xsl:value-of select = "All_TotalHours/total_Overtime_Hours"/></th>
		<th><xsl:value-of select = "All_TotalHours/total_sick_Hours"/></th>
		<th><xsl:value-of select = "All_TotalHours/total_vacation_Hours"/></th>
		<th><xsl:value-of select = "All_TotalHours/total_holiday_Hours"/></th>
		<th><xsl:value-of select = "All_TotalHours/total_other_Hours"/></th>
		</xsl:if>
	</xsl:for-each>
	</tr>

</xsl:for-each>
</table>


<br/>

<table border = "1">
<tr>
	<th>Name</th>
	<th>Manager</th>
	<th>Week</th>
	<th>Regular Hours</th>
	<th>Overtime Hours</th>
	<th>Sick</th>
	<th>Vacation</th>
	<th>Holiday </th>
	<th>Other</th>
</tr>



<xsl:for-each select = "TimeCards/Employees/Employee">
	<tr align = "right">
		<th><xsl:value-of select = "Name"/></th>
		<th><xsl:value-of select = "Manager"/></th>
	
	<xsl:for-each select = "Dates_of_week">
		<xsl:if test = ".[contains(@period,'08/01/18 - 14/01/18')]">
		<th><xsl:value-of select = "@period"/></th>
		<th><xsl:value-of select = "All_TotalHours/total_Regular_Hours"/></th>
		<th><xsl:value-of select = "All_TotalHours/total_Overtime_Hours"/></th>
		<th><xsl:value-of select = "All_TotalHours/total_sick_Hours"/></th>
		<th><xsl:value-of select = "All_TotalHours/total_vacation_Hours"/></th>
		<th><xsl:value-of select = "All_TotalHours/total_holiday_Hours"/></th>
		<th><xsl:value-of select = "All_TotalHours/total_other_Hours"/></th>
		</xsl:if>
	</xsl:for-each>
	</tr>

</xsl:for-each>


</table>




</body>
</html>
</xsl:template>

</xsl:stylesheet>