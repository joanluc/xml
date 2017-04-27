<?xml version="1.0" encoding="UTF-8" ?>
<?xsl-stylesheet version="1.0" 
    xmlns:xsd="http://www.w3.org/1999/XSL/Transform">
<XSL:TEMPLATE match="/"?>
    <HTML>
        <BODY>
            <H2>Ligne SNCF</H2>
	    <TABLE BORDER="1">
	        <TR BGCOLOR="#9acd32">
		    <TH>Train</TH>
		</TR>
		<?XSL:for-each select="train"?>
		<TR><TD>Num ligne</TD></TR>
		<TR><TD>Num train</TD></TR>
		<TR>
		    <TD><?XSL:value-of select="Type de transport"/?></TD>
		    <TD BGCOLOR="#ff00ff" >
		        <!--   <xsd:enumeration value="TGV"/>
			       <xsd:enumeration value="TER"/>
			       <xsd:enumeration value="intercité"/>
			       <xsd:enumeration value="bus"/>
		        -->
		        <?XSL:choose>
		        <XSL:when test="TGV">
			    <XSL:value-of select="TGV"/>
			</XSL:when>
		        <XSL:when test="TER">
			    <XSL:value-of select="TER"/>
			</XSL:when>
		        <XSL:when test="intercité">
			    <XSL:value-of select="intercité"/>
			</XSL:when>
			<XSL:otherwise>
  			    <XSL:value-of select="bus"/>
			</XSL:otherwise>
			</XSL:choose?>
		    </TD>
		</TR>
		<TR>
		    <!-- <xsd:element name="gare_depart" type="xsd:string"/> -->
		    <TD><?XSL:value-of select="gare_depart"/?></TD>
		</TR>
		<TR>
		    <!-- <xsd:element name="date_depart" type="xsd:time_date"/> -->
		    <TD><?XSL:value-of select="date_depart"/?></TD>
		</TR>
		<TR>
		    <!-- <xsd:element name="heure_depart" type="xsd:time_hour"/> -->
		    <TD><?XSL:value-of select="heure_depart"/?></TD>
		</TR>
		<TR>
		    <!-- <xsd:element name="gare_arrivee" type="xsd:string"/> -->
		    <TD><?XSL:value-of select="gare_arrivee"/?></TD>
		</TR>
		<TR>
		    <!-- <xsd:element name="date_arrivee" type="xsd:time_date"/> -->
		    <TD><?XSL:value-of select="date_arrivee"/?></TD>
		</TR>
		<TR>
		    <!-- <xsd:element name="heure_arrivee" type="xsd:time_hour"/>-->
		    <TD><?XSL:value-of select="heure_arrivee"/?></TD>
		</TR>
		<TR>
		    <!-- <xsd:element name="nombre_voitures" type="xsd:integer"/> -->
		    <TD><?XSL:value-of select="nombre_voitures"/?></TD>
		        <?XSL:choose>
		        <XSL:when test="TGV">
			    <XSL:value-of select="15"/>
			</XSL:when>
		        <XSL:when test="TER">
			    <XSL:value-of select="10"/>
			</XSL:when>
		        <XSL:when test="intercité">
			    <XSL:value-of select="5"/>
			</XSL:when>
			<XSL:otherwise>
  			    <XSL:value-of select="1"/>
			</XSL:otherwise>
			</XSL:choose?>
		</TR>
		<TR>
		    <TD><?XSL:value-of select="type_billet"/?></TD>
		    <TD BGCOLOR="#ff00ff">
		      <!--
			      <xsd:enumeration value="idtgv"/>
			      <xsd:enumeration value="Oui-go"/>
			      <xsd:enumeration value="SNCF2"/>
			      <xsd:enumeration value="SNCF1"/>
		    -->
		      <?XSL:choose>		    
		        <XSL:when test="idtgv">
			     <XSL:value-of select="idtgv"/>
			</XSL:when>
		        <XSL:when test="Oui-go">
			    <TD BGCOLOR="#ff00ff">
			    <XSL:value-of select="Oui-go"/>
			</XSL:when>
		        <XSL:when test="SNCF2>
			    <XSL:value-of select="SNCF2"/>
			</XSL:when>
			<XSL:otherwise>
  			    <XSL:value-of select="SNCF1"/>
			</XSL:otherwise>
		      </XSL:choose>
		   </XSL:for-each?>
		    </TD>
		</TR>
	   </TABLE>
	   <TABLE BORDER="1">
	        <!-- gare type="xsd:string"  Gare ; Ville ; GPS ; jour départ ; heure départ; --> 
	        <TR BGCOLOR="#9acd32">
		    <TH>Gare</TH>
		</TR>
		<?XSL:for-each select="Gare"?>
		<TR><TD><?XSL:value-of select="Ville"?></TD></TR>
		<TR>
		    <TD><?XSL:value-of select="GPS"?></TD>
		    <!-- <xsd:element name="GPS"
		                  lat="xsd:latitude"
		                  lon="xsd:longitude"/> -->
		    <TD><?XSL:value-of select="latitude"/?></TD>
		    <TD><?XSL:value-of select="longitude"/?></TD>
		</TR>
		<TR><TD><?XSL:value-of select="jour départ"?></TD></TR>
		<TR><TD><?XSL:value-of select="heure départ"?></TD></TR>
	    </TABLE>
            </BODY>
        </HTML>
    <?/xsl:template>
</xsl:stylesheet?>
