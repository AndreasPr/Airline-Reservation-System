<?xml version="1.0"?>

<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match = "/"> 
      <html> 
         <body> 
         	 <table>
               <tr>
                  <th >--------Name-----</th>
                  <th>------------Week---------</th>
                  <th>Hrs</th>
               </tr>
            </table>
         <table border = "1">
            <xsl:apply-templates select = "TimeCards/Employees/Employee">
            </xsl:apply-templates> 
        	</table>
         </body> 
      </html> 
</xsl:template>  

<xsl:template match = "Employee">
   <tr> 
         <xsl:apply-templates select = "Name"/>
         <th><xsl:apply-templates select = "Dates_of_week/@period" mode = "period"/></th>
         <th><xsl:apply-templates select = "Dates_of_week/All_TotalHours/@hours" mode = "hours"/></th>
   </tr>
</xsl:template> 


<xsl:template match = "Name">
	
   <th><xsl:apply-templates/></th>

</xsl:template>



<xsl:template match = "Dates_of_week/@period" mode = "period">

   <tr><xsl:value-of select = "." /></tr>

</xsl:template>



<xsl:template match = "Dates_of_week/All_TotalHours/@hours" mode = "hours">

   <tr><xsl:value-of select = "." /></tr>

</xsl:template>

</xsl:stylesheet>