<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/employees">
    <html>
      <style>
        .bg-green { background-color: #a2d895; }
        .bg-yellow { background-color: #e6dc92; }
        .bg-pink { background-color: #e44897; }
      </style>
      <body>
        <h1>Empleados de la empresa</h1>
        <xsl:for-each select="employee">
          <xsl:if test="salary>=55000">
          <p>Empleado <xsl:value-of select="id" /></p>
          <ul>
            <li>Nombre: <xsl:value-of select="name" /></li>
            <li>Departamento: <xsl:value-of select="department" /></li>
            <li>salario: <xsl:value-of select="salary" /></li>
            <li>antigüedad: <xsl:value-of select="years_of_experience" /></li>
          </ul>
        </xsl:if>
        </xsl:for-each>
        <table border="1">
          <tr bgcolor="000000" style="color:#ffffff">
            <td>Empleado</td>
            <td>Nombre</td>
            <td>Departamento</td>
            <td>Salario</td>
            <td>Antigüedad</td>
          </tr>
          <xsl:for-each select="employee">
            <tr>
              <td><xsl:value-of select="id"/></td>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="department"/></td>
              <td><xsl:value-of select="salary"/></td>
              <td><xsl:value-of select="years_of_experience"/></td>
              <xsl:choose>
              <xsl:when test="years_of_experience&lt;5">
                <style>
                  td {bgcolor:#a2d895;}
                </style> 
              </xsl:when>
              <xsl:otherwise>
                <style>
                  td {bgcolor:#e6dc92;}
                </style> 
              </xsl:otherwise>
              <xsl:when test="years_of_experience&gt;6">
                <style>
                  td {bgcolor:#e44897;}
                </style> 
              </xsl:when>
            </xsl:choose>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>