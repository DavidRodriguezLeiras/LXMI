<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/employees">
    <html>
      <body>
        <h1>Empleados de la empresa</h1>
        <xsl:for-each select="employee">
          <p>Empleado <xsl:value-of select="id" /></p>
          <ul>
            <li>Nombre: <xsl:value-of select="name" /></li>
            <li>Departamento: <xsl:value-of select="department" /></li>
            <li>salario: <xsl:value-of select="salary" /></li>
            <li>antigüedad: <xsl:value-of select="years_of_experience" /></li>
          </ul>
        </xsl:for-each>
        <table border="1">
          <tr bgcolor="000000" style="color:fffffff">
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
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>