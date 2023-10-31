<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %>
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report">
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="PRACTICA49b" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="PRACTICA49B" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <reportHtmlEscapes>
    <beforeReportHtmlEscape>
    <![CDATA[<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir=&Direction>
<head>
<meta http-equiv="Content-Type"  content="text/html; charset=&Encoding">
</head>
<body bgcolor="#ffffff">

]]>
    </beforeReportHtmlEscape>
    <beforePageHtmlEscape>
    <![CDATA[#NULL#]]>
    </beforePageHtmlEscape>
    <afterPageHtmlEscape>
    <![CDATA[<hr size=5 noshade>
]]>
    </afterPageHtmlEscape>
    <beforeFormHtmlEscape>
    <![CDATA[<html dir=&Direction>
<body bgcolor="#ffffff">
<form method=post action="_action_">
<input name="hidden_run_parameters" type=hidden value="_hidden_">
<font color=red><!--error--></font>
<center>
<p><table border=0 cellspacing=0 cellpadding=0>
<tr>
<td><input type=submit></td>
<td width=15>
<td><input type=reset></td>
</tr>
</table>
<p><hr><p>
]]>
    </beforeFormHtmlEscape>
    <pageNavigationHtmlEscape>
    <![CDATA[<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir=&Direction>
<head>
<meta http-equiv="Content-Type"  content="text/html; charset=&Encoding">
<TITLE>Oracle HTML Navigator</TITLE>
<SCRIPT type="text/javascript" LANGUAGE = "JavaScript">

var jump_index = 1			// Jump to this page
var num_pages = &TotalPages			// Total number of pages
var basefilename = "&file_name"		// Base file name
var fileext = "&file_ext"		//File extension

/* jumps to "new_page" */
function new_page(form, new_page)
{
	form.reqpage.value = new_page;
	parent.frames[0].location = basefilename + "_" + new_page + "."+fileext;
}

/* go back one page */
function back(form)
{
	/* if we are not in first page */
	if (jump_index > 1)
	{
		jump_index--;
		new_page(form, jump_index);
	}
}

/* go forward one page */
function forward(form)
{
	/* if we are not in last page */
	if (jump_index < num_pages)
	{
		jump_index++;
		new_page(form, jump_index);
	}
}

/* go to first page */
function first(form)
{
	if(jump_index != 1)
	{
		jump_index = 1;
		new_page(form, jump_index);
	}
}

/* go to last page */
function last(form)
{
	if(jump_index != num_pages)
	{
		jump_index = num_pages;
		new_page(form, jump_index);
	}
}

/* go to the user specified page number */
function pagenum(form)
{
	/* sanity check */
	if (form.reqpage.value < 1)
	{
		form.reqpage.value = 1;
	}
	if (form.reqpage.value > num_pages)
	{
		form.reqpage.value = num_pages;
	}
	jump_index = form.reqpage.value;
	new_page(form, jump_index);
}
</SCRIPT>
</HEAD>

<BODY>
<FORM NAME="ThisForm" action="" onSubmit="pagenum(this); return false;">
<center><table><tr>
<td> <INPUT TYPE="button"  VALUE="<< " onClick="first(this.form)">
<td> <INPUT TYPE="button"  VALUE=" < " onClick="back(this.form)">
<td> <INPUT TYPE="button"  VALUE="Page:" onClick="pagenum(this.form)">
<td> <INPUT NAME="reqpage" VALUE="1" SIZE=2>
<td> <INPUT TYPE="button"  VALUE=" > " onClick="forward(this.form)">
<td> <INPUT TYPE="button"  VALUE=" >>" onClick="last(this.form)">
</table></center>
</FORM>
</body></html>]]>
    </pageNavigationHtmlEscape>
  </reportHtmlEscapes>
  <data>
    <systemParameter name="MODE" initialValue="Default" display="yes"/>
    <systemParameter name="ORIENTATION" initialValue="Default" display="yes"/>
    <dataSource name="Q_1">
      <select>
      <![CDATA[SELECT ALL DEPARTAMENTO.NOMBRE, 
DEPARTAMENTO_EMPLEADO.EMP_NIF, EMPLEADO.NOMBRE, EMPLEADO.COMISION, 
EMPLEADO.SALARIO, EMPLEADO.OFICIO, EMPLEADO.APELLIDOS
FROM DEPARTAMENTO, DEPARTAMENTO_EMPLEADO, EMPLEADO
WHERE ((DEPARTAMENTO_EMPLEADO.DEPT_CODIGO = DEPARTAMENTO.CODIGO)
 AND (DEPARTAMENTO_EMPLEADO.EMP_NIF = EMPLEADO.NIF)) ]]>
      </select>
      <displayInfo x="0.90625" y="0.55212" width="1.76038" height="0.95825"/>
      <group name="G_1">
        <displayInfo x="0.86243" y="1.91675" width="1.98376" height="0.77246"
        />
        <dataItem name="NOMBRE" datatype="vchar2" columnOrder="11" width="20"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Nombre">
          <dataDescriptor expression="DEPARTAMENTO.NOMBRE"
           descriptiveExpression="NOMBRE" order="1" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <summary name="CountEMP_NIFPerNOMBRE" source="SALARIO" function="sum"
         width="12" precision="10" reset="G_1" compute="report"
         defaultWidth="100000" defaultHeight="10000" columnFlags="552"
         defaultLabel="Recuento:" valueIfNull="0">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
        <formula name="CONVERSIONPTAS" source="conversionptasformula"
         datatype="number" width="20" precision="10" defaultWidth="120000"
         defaultHeight="10000" columnFlags="48" defaultLabel="Conversionptas"
         breakOrder="none">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </formula>
      </group>
      <group name="G_NOMBRE">
        <displayInfo x="1.20618" y="2.87231" width="1.23376" height="1.28516"
        />
        <dataItem name="EMP_NIF" datatype="vchar2" columnOrder="12" width="9"
         defaultWidth="90000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Emp Nif">
          <dataDescriptor expression="DEPARTAMENTO_EMPLEADO.EMP_NIF"
           descriptiveExpression="EMP_NIF" order="2" width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="NOMBRE1" datatype="vchar2" columnOrder="13" width="20"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Nombre1">
          <dataDescriptor expression="EMPLEADO.NOMBRE"
           descriptiveExpression="NOMBRE" order="3" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="APELLIDOS" datatype="vchar2" columnOrder="17"
         width="40" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Apellidos">
          <dataDescriptor expression="EMPLEADO.APELLIDOS"
           descriptiveExpression="APELLIDOS" order="7" width="40"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="COMISION" oracleDatatype="number" columnOrder="14"
         width="22" defaultWidth="80000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Comision">
          <dataDescriptor expression="EMPLEADO.COMISION"
           descriptiveExpression="COMISION" order="4" width="22" scale="2"
           precision="6"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="SALARIO" oracleDatatype="number" columnOrder="15"
         width="22" defaultWidth="80000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Salario">
          <dataDescriptor expression="EMPLEADO.SALARIO"
           descriptiveExpression="SALARIO" order="5" width="22" scale="2"
           precision="6"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="OFICIO" datatype="vchar2" columnOrder="16" width="20"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Oficio">
          <dataDescriptor expression="EMPLEADO.OFICIO"
           descriptiveExpression="OFICIO" order="6" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
    <summary name="CountEMP_NIFPerReport" source="SALARIO" function="sum"
     precision="8" reset="report" compute="report" defaultWidth="100000"
     defaultHeight="10000" columnFlags="552" defaultLabel="Recuento:">
      <displayInfo x="0.00000" y="0.00000" width="0.79993" height="0.19995"/>
    </summary>
    <formula name="LISCONVERPTAS" source="lisconverptasformula"
     datatype="number" width="20" precision="10" defaultWidth="0"
     defaultHeight="0" columnFlags="16" breakOrder="none">
      <displayInfo x="0.03113" y="0.27087" width="0.79993" height="0.19995"/>
    </formula>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_1_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="7.37500" height="1.25000"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_1" source="G_1" printDirection="down"
         minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.00000" width="7.37500"
           height="1.06250"/>
          <generalLayout verticalElasticity="variable"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_NOMBRE" source="NOMBRE" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="0.56250" y="0.00000" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <frame name="M_G_NOMBRE_GRPFR">
            <geometryInfo x="0.00000" y="0.18750" width="7.37500"
             height="0.87500"/>
            <generalLayout verticalElasticity="variable"/>
            <visualSettings fillPattern="transparent"
             fillBackgroundColor="r100g100b100"/>
            <repeatingFrame name="R_G_NOMBRE" source="G_NOMBRE"
             printDirection="down" minWidowRecords="1" columnMode="no">
              <geometryInfo x="0.00000" y="0.37500" width="7.37500"
               height="0.18750"/>
              <generalLayout verticalElasticity="expand"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="TableCell"/>
              <field name="F_EMP_NIF" source="EMP_NIF" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="10"/>
                <geometryInfo x="0.00000" y="0.37500" width="1.12500"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_NOMBRE1" source="NOMBRE1" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="10"/>
                <geometryInfo x="1.12500" y="0.37500" width="1.18750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_APELLIDOS" source="APELLIDOS" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="10"/>
                <geometryInfo x="2.31250" y="0.37500" width="1.18750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_COMISION" source="COMISION" minWidowLines="1"
               formatMask="NNNGNN0D00" spacing="0" alignment="end">
                <font face="helvetica" size="10"/>
                <geometryInfo x="3.50000" y="0.37500" width="1.18750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_SALARIO" source="SALARIO" minWidowLines="1"
               formatMask="NNNGNN0DNN" spacing="0" alignment="end">
                <font face="helvetica" size="10"/>
                <geometryInfo x="4.68750" y="0.37500" width="1.50000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_OFICIO" source="OFICIO" minWidowLines="1"
               spacing="0" alignment="center">
                <font face="helvetica" size="10"/>
                <geometryInfo x="6.18750" y="0.37500" width="1.18750"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
            </repeatingFrame>
            <frame name="M_G_NOMBRE_FTR">
              <geometryInfo x="0.00000" y="0.56250" width="7.37500"
               height="0.50000"/>
              <advancedLayout printObjectOnPage="lastPage"
               basePrintingOn="anchoringObject"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="Totals"/>
              <field name="F_CountEMP_NIFPerNOMBRE"
               source="CountEMP_NIFPerNOMBRE" minWidowLines="1"
               formatMask="NNNGNN0D00" spacing="0" alignment="end">
                <font face="helvetica" size="10" bold="yes"
                 textColor="r100g0b0"/>
                <geometryInfo x="4.68750" y="0.56250" width="1.50000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
                <visualSettings fillBackgroundColor="Totals"/>
              </field>
              <field name="F_CONVERSIONPTAS" source="CONVERSIONPTAS"
               minWidowLines="1" formatMask="NNNGNNNGNN0" spacing="0"
               alignment="end">
                <font face="helvetica" size="10" bold="yes"
                 textColor="TextColor"/>
                <geometryInfo x="4.37500" y="0.75000" width="1.81250"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
                <advancedLayout printObjectOnPage="allPage"
                 basePrintingOn="enclosingObject"/>
              </field>
              <text name="B_CONVERSIONPTAS" minWidowLines="1">
                <textSettings justify="end" spacing="0"/>
                <geometryInfo x="3.31250" y="0.75000" width="2.06250"
                 height="0.18750"/>
                <advancedLayout printObjectOnPage="allPage"
                 basePrintingOn="enclosingObject"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="TextColor"/>
                  <string>
                  <![CDATA[Total por departamento (ptas):]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_Total_" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="3.75000" y="0.56250" width="1.81250"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="Totals"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"/>
                  <string>
                  <![CDATA[Total por departamento:]]>
                  </string>
                </textSegment>
              </text>
            </frame>
            <frame name="M_G_NOMBRE_HDR">
              <geometryInfo x="0.00000" y="0.18750" width="7.37500"
               height="0.18750"/>
              <advancedLayout printObjectOnPage="allPage"
               basePrintingOn="enclosingObject"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="TableHeading"/>
              <text name="B_EMP_NIF" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.00000" y="0.18750" width="1.12500"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="TextColor"/>
                  <string>
                  <![CDATA[Emp Nif]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_NOMBRE1" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="1.12500" y="0.18750" width="1.18750"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="TextColor"/>
                  <string>
                  <![CDATA[Nombre1]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_APELLIDOS" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="2.31250" y="0.18750" width="1.18750"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="TextColor"/>
                  <string>
                  <![CDATA[Apellidos]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_COMISION" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="3.50000" y="0.18750" width="1.18750"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="TextColor"/>
                  <string>
                  <![CDATA[Comision]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_SALARIO" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="4.68750" y="0.18750" width="1.50000"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="TableHeading"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="TextColor"/>
                  <string>
                  <![CDATA[Salario]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_OFICIO" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="6.18750" y="0.18750" width="1.18750"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="TextColor"/>
                  <string>
                  <![CDATA[Oficio]]>
                  </string>
                </textSegment>
              </text>
            </frame>
          </frame>
          <text name="B_NOMBRE" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="0.56250"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Nombre]]>
              </string>
            </textSegment>
          </text>
        </repeatingFrame>
        <frame name="M_G_1_FTR">
          <geometryInfo x="0.00000" y="1.06250" width="7.37500"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="lastPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Totals"/>
          <field name="F_CountEMP_NIFPerReport" source="CountEMP_NIFPerReport"
           minWidowLines="1" formatMask="NNNGNN0DNN" spacing="0"
           alignment="end">
            <font face="helvetica" size="10" bold="yes" textColor="darkgreen"
            />
            <geometryInfo x="4.68750" y="1.06250" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <visualSettings fillBackgroundColor="Totals"/>
          </field>
          <text name="B_CountEMP_NIFPerReport" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="3.75000" y="1.06250" width="0.68750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="Totals"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"/>
              <string>
              <![CDATA[Sum.Sal:]]>
              </string>
            </textSegment>
          </text>
          <field name="F_LISCONVERPTAS" source="LISCONVERPTAS"
           minWidowLines="1" formatMask="NNNGNNNGNN0" spacing="0"
           alignment="end">
            <font face="helvetica" size="10" bold="yes" textColor="TextColor"
            />
            <geometryInfo x="2.31250" y="1.06250" width="1.31250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TableHeading"
             linePattern="solid"/>
          </field>
          <text name="B_1" minWidowLines="1">
            <textSettings justify="end" spacing="0"/>
            <geometryInfo x="0.06250" y="1.06250" width="2.20837"
             height="0.16663"/>
            <visualSettings fillBackgroundColor="TableHeading"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"
               textColor="TextColor"/>
              <string>
              <![CDATA[Total mensual (12 pagas) en ptas:]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
    </body>
    <margin>
      <text name="B_OR$BODY_SECTION" minWidowLines="1">
        <textSettings spacing="0"/>
        <geometryInfo x="2.81250" y="0.31250" width="4.06250" height="0.22925"
        />
        <textSegment>
          <font face="Arial" size="12" bold="yes" underline="yes"
           textColor="r0g0b100"/>
          <string>
          <![CDATA[LISTADO DE EMPLEADOS POR DEPARTAMENTO]]>
          </string>
        </textSegment>
      </text>
      <image name="B_2">
        <geometryInfo x="0.50000" y="0.18750" width="1.18750" height="0.62500"
        />
        <visualSettings fillPattern="transparent" fillBackgroundColor="black"
         linePattern="transparent" lineBackgroundColor="black"/>
        <points>
          <point x="0.00000" y="0.00000"/>
          <point x="1.18750" y="0.62500"/>
          <point x="0.50000" y="0.18750"/>
          <point x="1.18750" y="0.62500"/>
        </points>
        <binaryData encoding="hexidecimal" dataId="image.B_2">
          
FF8DFF0E 0001A464 94640010 101000B4 00B40000 FFBD0048 0001B0C0 E0C0A001
E0D0E021 11013181 82A18161 61811332 52D182A3 33D3C393 33837304 84C5E404
44755473 8305D615 75F52676 8676E3D4 17970746 87C55676 36101121 21815181
F2A1A1F2 36248324 36363636 36363636 36363636 36363636 36363636 36363636
36363636 36363636 36363636 36363636 36363636 36363636 3636FF4C 102A0000
10501010 10101010 00000000 00000000 10203040 50607080 90A0B001 00201030
30204030 50504040 000010D7 10203000 40115021 12131460 31151670 22174123
18191A80 32241B1C 51251D0F 42332627 2890A061 718191A1 52627282 92A24353
63738393 A3344454 64748494 A4354555 65758595 A5364656 66768696 A6374757
67778797 A7384858 68788898 A8293949 59697989 99A92A3A 4A5A6A7A 8A9AAA2B
3B4B5B6B 7B8B9BAB 2C3C4C5C 6C7C8C9C AC2D3D4D 5D6D7D8D 9DAD1E2E 3E4E5E6E
7E8E9EAE 1F2F3F4F 5F6F7F8F 9FAF1000 30101010 10101010 10100000 00000000
10203040 50607080 90A0B011 00201020 40403040 70504040 00102077 00102030
11405012 13602114 15701617 31222318 80412419 1A1B1C90 3233250F 5126271D
A0614243 1E521F71 8191A162 728292A2 53637383 93A33444 54647484 94A43545
55657585 95A53646 56667686 96A63747 57677787 97A72838 48586878 8898A829
39495969 798999A9 2A3A4A5A 6A7A8A9A AA2B3B4B 5B6B7B8B 9BAB2C3C 4C5C6C7C
8C9CAC2D 3D4D5D6D 7D8D9DAD 2E3E4E5E 6E7E8E9E AE2F3F4F 5F6F7F8F 9FAFFF0C
00118010 C2100C30 00110010 11102011 10FFAD00 C0300000 10112011 00F300AE
58057805 12BC2513 2E0871A8 60B32008 C1004F0A 7006A705 200E0520 0EA70520
DE6F0A30 866F0A30 866F0A30 260D20C6 6F0A60CE E14900DE 380D0520 97360D05
30C31ADF 1D04019F D36B3D01 C2B4DFAD 046051F1 3CC4609F B48D3520 55D8F7BB
2513ED25 F10E4100 EB25F727 08719CF4 EEF25E04 B04E7CDF 5CCF8A00 2F36EF2E
EF4500E9 A4F717F7 A200C388 FF008B82 10EBA4F7 17F7A200 F462F3EE F8AC0831
9CF4EEF0 AC0831AC F8BF2808 F062F3EE A800C389 FF008BFB 5900738C F8BF2808
B14E7CDF 1D04904E 7CDF1CC4 249715AF A00473AC F4EEA800 7649F9DD 6A105E72
5A61008D EB4900C6 F5A400D4 B85408D4 28B80006 15166892 8D304185 505CB200
BB5020D1 5EA800DA E2791607 BD7A4B68 34DF7EC4 3D01FCCE D272EF18 6FFD7FCE
45C8BB45 1286104D 001E2513 2E08D104 A08281AE 005700D2 00830520 0D100450
00520052 00820A50 5C006282 10630D30 6705106B 0871D600 B186000A 70051004
5000D200 5200D200 52006308 A186104B 00051004 D00A600D 12821082 10490C56
13D04A10 04500052 032108A0 06520051 02D203D1 84703581 1F04589A 206B3EDF
FD6D8A50 65F3CD0A 90580083 25104D68 C30520A8 005730C1 D000A308 A0005700
41000510 04C07711 C85B0053 D1849F86 2055D64D 001D227E 30F35900 A3083143
004B004B 00052005 200D2005 200D1004 6086109B 0A200821 08A18610 82108210
82108210 4B00CC0D 129BAA10 8201AD00 D6033143 68521390 A9046286 1092C882
0166095C 41801504 E0DC00B3 43009B0A 8086102C 08F1047C A024E182 104D68C3
0520A860 A308D1A9 00A50015 04B004B0 04900490 049004A0 C905308E 1003A37F
0A304100 05200D40 4462DE8D 0A40DD04 A0900A70 0510AB08 91AB08D1 04608610
82108610 4B00AD00 A400A440 52006308 91A90AB1 04900468 2D104A0E 370C6A23
4A7B6F1B 147E433E BCECCD7A F3AC89EA A5D8C74C 65702883 4A6064BA AAB9B1F8
224265AD 60CEFF00 A29631B7 B1143586 B28C2219 86E7FDDD F3F13C9E 84A0996A
123304B0 A900D54D 00BB9A08 E60A50DD 84600D30 180A365C 20C1D000 C325102C
18E86009 F04100AE 60D200A3 086108D1 04B00450 005200D2 006308E1 82108610
82108200 9E041105 200D200D 10049004 50006286 00DC0062 86004100 4B00CC0D
123304D0 0A266618 019C4315 F7CA6943 FF009708 AA20B0BD 8DC620DF 3A77DC7F
24A82151 2DB285BE 617F7B22 409505FF 00E00F93 2A2C2543 6FA054C1 7C88EA7E
B4FBA290 D541021E 90519686 669DA4EC AEDE401B B23B6C1F D11C9BCF 969D01B9
229FFB3B CBFA1E21 4FFF0008 5D116FE4 2BEDAFDC 06D8C34F 6685AFF2 0BCAC647
B2C1CA19 BC77077D B1857FC6 E0595BC8 E332AA0F CFE96639 E1A77C2F 6DC4EDB1
A10DF8A4 298C7A2B 9593F459 FBA400DC 4786EC6D 816A124B 80920805 1004B0A9
60E318B0 04E041C0 5712E060 89F041C0 074A301C 4A305800 D230D1A9 00A50057
00A30861 08210851 86101704 8082000A 40DD04B0 04C04E0D 2005200D 308A1082
000A400A 60052005 1004B004 51424DCA 3E24DC07 89E5E093 5C0055B8 A54BE9AE
8322EDC4 C930C8A0 BA11EC23 3C95B5BC 7E7B904B 102FD9FD B7418531 34D2F26E
F9E5A9BD B26F47F4 49D6AF15 06F435E4 642F2AF2 8EA2A483 8302D041 2BE16318
F89ADAE8 571BC3CA 2F960DC2 4A49C851 F1A46118 D7B0A9D2 7A9D5F8B 36591718
6CB3C145 DF19DADC DFE2BFDE ED77EE48 26C3366E 8A63B823 5BD163B4 D894846E
F2793776 3F7ADC1A C379563F 56A66BF8 40A03107 7CB025F5 12154789 481290E6
9B8C2EF9 93E39C31 62B9F6F1 44FC4D2D 9BA41172 E81221D6 C8D6F1CE C825A10D
86B3E606 D194C605 E3588E3B 90CD78F8 EE4D1827 916914FE 6530E943 1967AB4E
053223B7 6278495E F35920A2 5D808200 5C307141 801B6B08 3141C007 41808200
4A305803 D104E041 C05784E0 0A50DC00 8305139D 0A706608 61086108 4105308E
10490089 0A400A40 0A70A000 57004100 49004900 6D5644BC 01AADBDF 822048AF
5A49639C 63DF1F8C 67EA1CED B8B04425 4D574C2B F9CE1F34 7E94FDAD AA4CED4C
75A3FDCF A4368B6B C4B3D98B F31CA821 71636847 A75DCDAB D72C84F5 67609D60
41FA5EF4 24F61AE4 ACB789EE 3E4742DC E9DF7CDB 159269C2 D2EF0DE2 48F937FE
25360896 1F88C2E2 F2889F8F A8F23604 3A4AE674 6ACA6979 13C50097 9E2F5FC5
26E96950 6A588D1A FB7B4D62 69ADE0B5 5EBCD2D2 A05E198B EB466911 4AFF00BE
6FCFCD77 CADC290D 7C780414 EF6BC53E BFBAA8C7 6EA6190A C6D69936 E1F4BC81
2CA87543 5E622F7D F7991BC7 FCE54F08 07C8E928 1829D769 F4EE0D40 289CDF8A
20541BE1 4B80F79D 26E54B0C A75CF00F 580AC0F1 DBCA4474 E44D780D 2DE50545
C8637F41 8069928C 1E9E1886 478CAA11 65B74239 499FB54F 0AC07B74 88DE1738
C4347335 01F64A50 AD064100 1E04E0BD A900F5E2 0960AC00 D54B0C13 047C1025
308E000A 500A1604 580A368A 10861086 104D004B 00490049 0049005F 0A700520
053083D1 8E20D3FD DD0AC0DD 46592D6E 7FC41501 76C2A5F6 3BB5BAF7 7CCB745E
DA4B935B 2BC29CAB D1246E74 F499EBDE F414CF32 68794743 0F00AE37 4B5F41EA
A815A632 1A1DEA91 972C6700 A9931C25 3D35652C 1CD6D224 1677FF00 31E05F60
9CE05B1B E86D61D8 93FDDFAE 201342E8 2DED82C7 5A9867E0 0774F76C 085E2B72
F56FF712 84364C21 F11E0A34 5C3A77AD 8220543B 5FF6AC08 D16F8775 FE0510AB
9DF3BB9F 3510F9AD 01DA0004 ADABE089 0AA0FCCA 11DE3517 49467D2E F1E71E70
CFA0D90C 2AEF823B F59FF6FC BFB284C2 233D5CDA 522D5C86 E8BDBBD3 02F2963D
9FABC8F3 7E5B25B2 1ABB8D45 08ED490C 839E8419 51E9F2BB 2D08D25C 23FBD1AE
0CC719C2 9A5B7DA8 4046D596 2F34CCF5 A3F7A200 3A45946A 82102C08 D1047C4D
88D730D1 6B087156 00B18200 BD044C0A 240D1386 10820041 00CE0520 A800A500
A5003304 703E04B0 9BD38610 EB064F0A 30B76741 00F9E382 20D39CED 550A6097
1BE0B9F8 0D054024 67ED87D5 D9DB96E0 4C7700C5 5C5EABCF 6A898865 ACCD22FA
49A07AE4 8F4AB361 20B7A100 0904FF00 DD0A70B8 740A70B8 F3656A12 ED55CBD7
F4BE8430 CC6B14CF 4310114D DA4D1704 51BD9588 676A23C9 ED0245EF 52F49A41
286C47EB 9248578B F10FC12D D1A8218F 2B11CFF4 8FA05026 48EBB2EF CE93AF5B
61824AED 32BBE731 A6350B11 631A873E B968CF83 5A06B2D9 DC4DA906 35629920
76A8007D 0FFCA30A 6FD8FB4F A100BE47 F49F9054 4FEF4968 47F9FE17 25131704
6C0D2213 7CA50077 F1978610 D6FE7CB0 73BCE42E F29A4046 3511E4FE E4E8F699
E3756A50 134584AF 002918F8 A5409425 2304CD05 20A86041 00052005 30861086
10861054 00E28610 73A000D4 EF4D00C9 0D307318 CD0540E5 86EFE0D7 1F044C3F
F0BC7B5A 02D16F78 EF01F959 1016EBC6 7ACAD88F 1704C02F 9CEFD14D A852B597
B3E29229 84D2B5EB 82B0E861 B8CF6418 E01124B3 EF4B0C16 E96DE18B 4A407465
7BE5490C AAAFAEF2 A4759124 F54164D9 5654FF00 18056133 621F46F3 3F7D770D
25827A72 98BD8F32 F64C2ED8 045AF288 E2172F4A B60441B5 D5CBF69F 967B8E92
8D293AF5 CDFB95C9 EF43CE30 2E6EC34D 8D4AC236 DA23A83B F7CA6A66 74AD18E0
B8FEA000 BB141404 41D040B8 8D0560FD 5814B66F 6F188A30 CA1D75A1 A8FF008B
96C08E54 843C81F1 F25E0450 30815420 40E54980 C76F803E 4E9FF759 5508D72A
D7E953A5 40B56A60 826A94A2 3D20A400 A70D30AA 04A56020 08D1A900 82819B0A
400A1404 4CCD70A7 00EA399B 496E0332 D1D0A456 27F83FE0 E79E6A02 3FF45A03
0BE936AF F92C0985 F4D2BD8F A509E061 EAB726E9 0A84D2D7 850530EF FCA1E8A5
08C0B5F2 5A0033DE 6719FF00 210D2270 6DDA2918 495E1F42 92DEAF15 17912D8F
6B12FF00 D2741E84 6782D42E FCD4FD09 41E06C47 EBB2490F 3A3F4385 56312EB0
6BBFBB75 8E820BC0 B6BD7BBF 3DFB1E5C 0035D9BD F642F96C 895137C4 18358A0A
56AD6023 F65F4780 7A04482E 08F23C4C B2844B42 F3374310 65F4EB96 29726967
4F0A54BB D5632F64 50D666F3 5443107A E1588AF3 CFBB3EDF 2E5000B5 F82C7DFA
4D6C2A08 E1C3F121 FF00EADB 300F2008 E25C0A8F E751E146 39C474FB F10A0A56
B9F5CEB6 20E79C26 BD9967EE 9CEF4B28 5CD8F1D9 74EF9D0D 608F9E25 100490A8
A0324EB7 A840B383 91D18A20 B5B5589B 68930516 46C4C85F AA8E126E 89786CFD
3C04811B 94193D2F 5ACCE325 4619B3A1 1A21A846 290D1025 13861073 189E04D0
33DEF122 E643D012 C3EE830A 30CCF6C4 25101036 04F01131 CF6218F8 61FE9EA8
60C3A5BF 0D022F1A E4FAAF0D 20E65BE4 4F80B8BF A46DE389 0AA02DB6 1DF2C415
17992F8F 2A42FF00 698C92C5 C09ECBE5 384ADA8F 66D8246C C7EFE227 139149D7
038230F2 BFA66F74 FF00F898 B1DF3EA9 C205F9AD 75F66DC5 D7506130 E3B59B3F
38B2E757 942114AB 08433AF5 DDF22D09 D08BC424 9618D904 E0B8FEA0 00BB0401
CDD71C04 5186018E 74EC8230 14019CEF DAB4D750 3072EFAC DB990369 29F70C79
4180C7E3 614DB5AA 22D7A508 D2740E9E 78AFBF89 3D9E0461 3E0F5F49 B66BB4FE
BF7E41EA D3943A2D 4B8679F1 CB39AEF7 DF45EAB3 2355B8B4 B8DFE5E9 F301F3AF
4FEEE224 56BB2F8F 689D325A 279B44BF C6FF00CE F08FD0D3 248CF6F9 37FF00D3
F50F2E4A 6027DD85 A967002F DF8AB0A8 327A069B 16029D66 2FA70F82 20D571EF
E3FDF6CF 2FFF00A0 44B91DEB 8732F65B 2278AF05 84052005 15C1F9AE C9FF001B
04A8A4A4 8F673329 F0197134 FCA6EA18 4D3D6A84 5F0AC05E 45B20899 E15FA3C0
A7FA7F45 A026F169 A8D4FA38 F8A400F6 F3A400E3 F6F5AC89 7C97C2F7 48A92442
61F69EA8 0009953E BA100470 59E6DBF5 4300FDE3 ACF3A400 585BB985 EF6E828B
AC258FE9 81FF0098 743E0485 FC796C13 E029E745 286CC7ED 134FFDB4 05334E1F
457C2AF7 3E4DCE40 7085CBF7 3EB04FA5 93A482FC F757FF00 D3EDD908 8A5666BF
DC9F3D02 A9F38B82 819DFB5D 0D50A640 F4B6ED18 2A45AE4D C06AFF00 E728447C
43109ACF B2AD08C1 6D3FDCF6 6B8246F7 7F754300 8CCFF38A 8BFF00F8 C6D78441
10A7FD2C 77CB7113 F23E0471 707845F7 EAEBD8D7 080A46F9 8DA706FF 0095C3FC
4F2A3E62 D4F374B8 EEAD33D7 F7DF47EA C14A8CD6 22FF0035 16017F0C 0A6552BF
C6FB2C8A FB58300B FCE3F79F 9E9F1084 4391AB35 7F4AF7EC B8E02E80 8A0B60AC
C2122435 81BB8601 8B2018A8 707A439C E10B84E7 CED49F05 409E7ADD E169DE04
C52BA9D2 7D1F9736 1F4A5088 4F62EF93 7DF1CEDA 00A5BB1B 88858BB1 8BE58211
593A7C2B 6EF6AF7E 14640C6C 132522D2 B9133BC9 47DC3062 4003EF49 C0574019
FCFF00E1 2DFF008B F7593092 11FF0041 CEF75FEC 11FF000A 5D47E06A 592364EC
A4A5C4BC CF13C9E7 45107143 4C93A7A8 34E1E7EC 814BEA82 20F2DED1 A3F22EF4
7E845676 1F514A34 E8820D54 90CB36E6 D963EF47 C0FC396C 0ADFCCF9 5A021B64
F771F49D F47E04CE 66BC2EB4 6A7A0612 EF4DBB09 3763E349 855693EA 52FE32A1
0038438C C2182F0D 95E5E44B 21430560 698220DA 0D9F782D 0802BD04 B8196204
F10A0A90 E899B783 20B396FB FE380421 5C1ED8A4 F49F4671 AE5400D5 782C3F4C
F3D737A0 05409C1E BF43FF00 B5F7F97F 70FF00EA 597C9A22 86AD44D7 7AB9CFEF
41D5605A 1AE0C9F9 670CF197 F3AF4FEE 7C26549B 9DEF6AAD 82FF00F0 0F9AB070
ADE6F3DB F88FD010 0ADC3FF1 9FA6FDD9 3031BCFC A5C2105E E84DCE20 9F470867
AC26C0A0 0005D310 F3582052 B4B568BF 69EE9618 A3967778 EF8536DF 3E043162
9847FD87 6C4910A3 8FD7FBA8 3E2FA540 C4AB4030 FEBC12DF 8220145A 969C7D5F
A60099D6 CE32BF1B 725E04B0 6FB884FB 58740E50 0033BF65 DDF7A808 12A3CD43
A81B117D 4DB7258B CA55F631 04F35E6E 13FF0020 412C0CEB 623BAB58 0AF5991B
5D744128 3C4F37AB 97FBDD41 A863135C 23846F3E 9E843687 4F0A5091 F56F5800
9363FBBC 7C6A8234 B0B9D66F E74485F1 37F11455 0D29C535 019C363F D64EF8BB
62AD00A8 1820C6FC FC7FB36E 0883F001 E54325E6 08CE2587 302D59D8 C0F06BC5
947CA9FF 00D92390 6B0D23F8 C30D22B7 1504E0B9 DFD50075 0A568B7C 8C822092
3B190478 3456C3FD AE1E19FB DDC50D60 2A9671FE 7FD6F59F 0540FB0F B8F5FBCC
EDC5F765 0A90353C 80FBBEF6 2EF55A71 34D2D872 F4F5FB77 B2F7AB82 8B85F78D
4719FF00 E22F8CF7 ADF6EFDB B2F84999 E78CF9AE 4F8EF7A1 E26142BF 46FF000C
8AF91484 A5D03FEA B5EFA511 4F0035B2 148B67BF CC7CAEA6 C6001230 5B6181EB
D513B04B 350106A7 3D015F88 F9BBB1F9 8FD00085 D4E39EAB B55300C4 AB53BEF7
20F86C18 316A38F3 97090540 BC1E4FFE B3E72008 F1DFB846 FBA774CF 8E20543D
475DEFC0 DFD400F3 EF520BF7 40B404C0 A35B29D7 6DF42C59 0C58CB34 A6B37E0F
3A89EA25 3B8F2A50 EF318F1D CCC15A73 1FC7366A FCBF9F04 CA45F781 763AF09C
D8128DAA EFC2E7BD FF004041 C06AEFB2 B97B999F 2E188645 F721C573 F6BF8E1D
16CD78BF 66DE8FAC FA1D865E 00BFD63D 57D9FF00 E092852A 90E525CB 8CFF00D9
23A4B9DB AE880086 303A0F0D FF0034DB FF006B47 68E87A3C FDA77E8E 4B10CBA3
45084B0C E61D8460 DE220811 70CC4910 56603345 026A3087 B0E908A0 04356A32
33B57961 EB050AE0 F1C5FF00 69B404CC 8C126609 D6C4EF41 10AA6973 25D7BC96
F3FEC905 131B8F36 15F69F46 01F7CB82 1127F0E0 9421EF6F AEDDF3A1 00F9BF60
FCF1EBEB DDEF2E05 23442D43 87FF0068 97868B85 2B099E1F FF00BA3D 49FF00CB
96E03C6D D5F9AEDA D63EAFD2 A108FE4B CDF92E7C 1D54100A CDCCF75E BAEF47CA
13C3F97C BE748270 29506100 8D2AE908 9335F347 768E8211 A395E4E7 DECBF97F
DC136131 74DBF32F 4CF25D8A 20470DE6 B3CBB604 98753C7E DB0CCF61 0842A1C0
B27F7EF7 5E0421D0 B2E4F4CB 85FF000C 8A10C7DA A2F19F76 F19FAF0D 20F7A696
09DF3D80 AF26081B 111F51A9 7FDFD0D4 7C26CAE9 D26BE599 DF705F0A C225396C
19E8B9F7 FEFBEF5B B3E85C74 1FB9F1AB 74EFD384 56651FC5 7EEE7EEF 9F41A650
92C71557 3D23F7FD 850A5474 7DEEB1FF 002B7A06 9B21A675 21C160B0 4F419B04
97A9F79F CEFD5830 92CD84CF C7DED421 65FDC424 9A0A56ED 4047A871 F1D26120
58232408 627BC10D 43D51117 8420564C 42BF3530 335B40F8 41103D8F 77EF147D
C336E2F9 AC09ECB9 3C3AEFE3 F30E4310 9BA90483 05100450 0241105C 03426A12
4B0C684E F72AD4FF 00C58E20 FBDD419C 03F24E23 32935F4A 2582FE7E EFD3D68F
EF22994A 23151717 E8A0FA1D 864D30C7 7EEFA5FB 1E2505E9 E4EEFB53 5548F209
82102482 0A3469F2 54720F6A 409E76B3 4F6B09FF 000C8611 A39E717A EF8536DF
6E41C00B ABD01CAE 1DD22062 D500F0DB 379FD200 84AB53F9 1FA4DE04 E0BFE179
F1EDC5DF D400F186 3D02BF1B 5C9FA060 726FDD2A D7CDF05A E216514A 1FD32B77
F1D8A1E0 5C92C316 204F564A 6192943E 149DFF00 A4063539 6C2767D2 FF00C7A8
E50F51F5 4C7F5883 CD70BF8D 0A2A49AD DDBDF272 3FDC6120 786F48DF 8B7A16C5
1577B309 C33D8F15 16B07DFA F3D86182 FA72A590 226A50B8 A53454D8 4B10E4F6
FBD42154 0461CA6C F41E0422 1D2C1804 AC79F73C 04A84D00 8F9B570A B01CEBD7
49C03927 49BE0491 8B0A24CE 6F0AB06B 632FFF00 FC62F30F A1001DB5 B23AD86B
3DF7FD41 007E1D5F 9022ADD2 F82E040A 803E0FE9 0A8F70BC F48F5100 F5F57011
EF7B055B F46A8630 E47CD46B 3D4B9D16 711DC4CE 0C1E874A 33353CFF 0027F78A
0AD0A904 824108A5 06410828 2F647B0B 69856FFE 449F372D 8922F44B 80266067
B0D9BA8F 3D116296 082DB93E 46FF0066 08235790 636C32D1 FF005915 62C66B2F
DCC1B421 EEF2DFA2 A4449E1E BFECEF25 EF431016 C3A33EFE CDF20E82 20560DDA
7DFEC539 9F0530FF 003B478C EB1F368F 0D30F72E D4710F6C 8600EF4D 2D1EBF8A
388E4BC5 80B95C63 134F5C84 AC27872D 9DD79258 A825875E F36808A2 7BD8D1EF
2EA90475 F751F536 18F88F51 5041461F D1BEFAFF 00EAB810 706FDA3E 3E7F89AF
A09304D8 EA7AFF00 E92FE747 CE506199 FC65721F 6A841931 8B0550A9 C21515FC
DC143282 1176EF85 25829487 E8A911E5 1821BDF8 EDA0001B BB41C0AA FF00A718
D00A56B8 D61C8741 1036BAE2 822091D2 6AA9F5DD 4C7C8E82 014E1D5B 609E96F2
DF1F04A1 61A7613A 81FF00F8 F6DC5800 A5A152EC 60D4AB36 BF2D0540 F60A60FF
00B5F720 DFE086AB 8138140B D157F2BF 6EA375F1 92A296A5 C4F72FAD 0EDF5071
7192037B 2D79EFD5 7EF78F61 92CD67E1 2A0C17E1 B939EF1D 62B85878 901AF59B
6AADF88F D0122F29 D06457FF 0075C192 4FA5345E 24FF0086 E5F13EDF 8271A291
6FB83A6D 650AA7D0 CCFB3F1D FF00A3C2 1363F1F5 EC595817 2C119EF4 49E2A561
EF552A94 F899F89E C4D0F8F0 F77CCBFD FEF05E14 60DC0261 08D10448 4A236A9A
F9CEBAF8 7F8292E0 BB9E71DF 67A4EA48 393D0129 AC6B0FC3 29D75DC1 0D33A0FE
B939DE5C 250257DC 4EAFE6F9 C60D1978 D1132525 939CCF96 87E0FDA4 34A2FF00
2C55F7F2 745CA118 65D5A74F 5FB99F1D 06A2D165 4EFF00BC A49344B3 EC49E866
F7BFAEB8 61456793 0A19BA04 31F75030 B2351153 0BBC0540 2F074BC0 EAFF00AE
080A2946 D1E349C0 352D1849 8E11528B 9F8A207D 4180B8CE 732173EE 0E67E1BC
04216A98 8A7BB494 F3FEC905 50FDCED1 046AC308 FB0F530A 90B13C7F 42166A6B
F8AE4F10 810FCF34 DFE65A00 FF0077A9 E2B3215C 4A8D24F7 3E8F7BBF 1B1547B2
21DFF8D4 E57FD28F A0C58C26 9FA1F5CF 8F8CFF00 FE94E43E 0B5EBF21 D7DC63F1
8F110AC2 A43BF20F 9DADFADF 3B5A8A21 B0BB187F C496EFCE 47A6106F BA3BFF00
F2F00486 7347DE7F 6AF7ECB8 C07669DD 2FE74BCA 71F002A7 A0937417 44E349CE
12EDF45B 02D16F37 CD36BE5C 03E1D6E1 437587EC 2C23F0A6 00575AFB B957C086
04425F32 F35A13C0 C7C3586F A2E6EF51 0A40BD04 605000E2 82100E05 13040A90
D60A3F46 90BDAF25 1177151E 3241809B 0A82BFB1 1FFF00D2 F35A3053 0032EB74
DB84E041 80395B03 2108A2A6 FB2F90B9 8E82107F F92FFEFF 00F5B0F4 0A61006A
226AFAFF 0002B8F8 7F824026 9C7F8D5D 21054DEA E99640F5 2FEC1258 E1595232
88397943 10C2B05C 0023E64D 10010AB0 0C055025 FB5300F4 D676B3DF 8DC1DF41
A9008B43 B89E4110 D6F25EA8 00540FED 4AF75E08 F10F1204 61160FCF 0FDF9FD2
7DEF7084 90F71B10 BFAF48F1 0FE1866E 3471BF21 BCF1D39F F67F163A 99509871
D43D75EF A5D5F18C 358B8587 6B3D70CF ABACFF00 FE943517 8D275C46 F937D4F8
1FC73DB0 F021A2FF 00BA2B6B F5BF7604 21D72B7E C1C6F57F 65096CB9 BA3AFF00
D2ED894B 9199B9CA E8F70E45 CAB3C82F DF973A49 E27219EF 8C6A7171 BC2A2CF0
E2187039 C4164E2D 102C12C4 70C64180 054B00CE 05202E08 7141C01B 506B93E7
4B68E164 E41DC9F9 6FD88491 637BF852 CC926F87 0C36FCA5 EB25E2E6 40141D70
F4A428D8 8CF33EED 13EF8C0A 5495D226 A8877E54 90027E58 2EE95C91 7161E1C4
E3C63742 19E882C4 A0BBE749 EE61C132 7FA575B0 F085F3BD F159C11C 2615D6F1
1FC5E749 C5C28412 2BF1E7BE FF00E120 B858B865 2F966DDF E210AFA9 75B03191
4F99136E 94C9D786 8B9FD4B3 84DA3EF8 610E506F 439C4D1B 2B8990C8 679A0189
EFFE4100 DD8F0EA8 00A9F3A6 0A112E94 6BF1EEC1 C805124D 0C686ECD C5BDC3C0
07CAA3A8 0437571A 62C5EFE5 7FF262FC 2C0A4A56 EA797AE0 7B31FB2D C305B321
5AE9A9F9 3C47F712 547C9A72 9D4FFE9F 1F66FF00 A7340485 A7B855BF A947303F
4AB221BA DEBF6969 9AFF00C6 8AB0F071 77F12C55 F3DD1464 1A06BF54 1DBE330D
05FDFDE1 FA72DF5F A41C17EB E4A71D06 8B1ED0B3 80777904 B02B0871 AC0A3056
00E2AC40 B19208D6 0A146B09 3C416C81 0A14A860 5220B15C 020BE641 EAB390CB
358BCE62 1E0485F4 1392C593 44BFC436 8BCF8E8B 27D8BFC5 E73A3F3A 89C72AD2
6D2F11A7 4F00A075 D1D8B385 1BBCD7FE 5E84295C 13C078B9 584A780D AC8D19FD
BD9796CF D7BA2411 3B3D2F8A C29DF48B 3AAD8931 4A90A2C7 DDDB8242 4C1F43F7
461D6364 F75E0B0A 8AC9689F F7EBA6D0 34E92F7B DF5F04E0 3077A734 42857C5A
3072444A 224CB654 48E45932 A352BA23 C24ACCFB DE5580D9 72F45A05 CAB40896
1891F843 80E897E7 FCB0A48A 9014F92C 0813F5C5 8B66B587 5D26365D 78836A22
F2DEB13B FF00D25E CF500250 8B8B4266 96EBB9D8 00746594 3903CD6C 4A1A2812
047C805C 20D12B18 E8A08201 DE2A0871 D600B376 5B30D10B FF006708 10715BD4
2C1C5ED7 829B6571 AC3AD9A0 2C16741F D2C13C0B B91AF12F 9D963770 82FDE310
FF00D250 E2168D76 ADD67C1F 15172FD8 BF46D53B A41EAC64 F6792BA9 53B249F8
DE4E47E8 D85416FB F6F79F7E 04D0BFC5 E9B804D0 BF44FBCE 0D30C79D F78C4A05
DC2FFF00 C70D20E6 F7FE5323 647EDFFB 6DB800CD A0C220CE 41CE107B ADB81042
0343EC21 434E1D16 B16DA5A7 A5F27F5E EE861B73 E236866A 30F44100 69FBC7B7
35243332 7E256B30 FD7B5B35 8D49A61E DF75EF9F 8A918B38 5EC5AF55 88199414
180411F4 C077A221 2E531974 66411020 9E6DB22D ACFDEFDF 1D1639DA CBB27F16
88D70115 1621B46A ADD56CC3 8F32E6D3 934A6054 7C5832BE B613F576 6E7992C7
6CC5ADD3 DE7BED78 B2BEF153 63922341 4A231484 D08F5295 0371BF9B DC9550C8
2510C81E 832A3C81 3BABDFFD 699960C4 E172ABA9 6DDF6D83 79CE3CF8 A7363164
1F51ED9A 270DC419 229F44CF F9DFA706 65849D57 50D57A80 8BEC9229 C50194DF
7EFF00EB 9610C207 F1BF7E7D DB007674 CAA52C9D 70722DD9 3C493A6F B9F7FE21
A2E65558 BFD57BBF 47EAE315 E77DF086 AD597CAC F1D6C8F7 BC30A4CE C71A6FFF
00B4179F 1D8A2778 BD5EDE21 A0340BD7 EBF76F50 22CA73DE 77708BCF 8AB0C03F
EAF37E7A 9E046C78 49E85643 00C7FD3F 0D0D20C6 5F6A2097 362D18B0 2B1868AC
00630DD4 3CD613D8 0A19CB36 E9A60855 C5675C20 C02510C3 CB5F6A20 97063510
BBD38A10 03920099 91BDFD51 65102C08 C2524ACC 0A580EBF 2D20453D 62FE4BA0
2443D61A 619E5B31 F8FE610A 44EF063E DF75DFCF 0A50EDB3 BC71DF5F A900B606
F85F3A0F F84300B5 16F578FC BCFF00C3 1B459833 DA60DFA5 129E9143 5C31F581
8AC2CDBA 02A50082 000A500A B0967F54 306108A0 0414D359 5B7CAF8E 1443807C
FB2D1A5B 452922E7 0FC5251B A6446B6F 19B5F1DD E2CDC826 08C0A926 31910A14
2B087186 CEF3A400 E58DDC20 A000A400 E6823038 A092851B 0E1506C1 50B241F3
4168B341 08C53510 8D0A601F D9EB494C F3513271 410C002E 08714100 7858CF92
088D7723 2F630D30 9A003510 5573018A 73A7A000 B9BFA3BE EF87F92D 99730196
75BBF74D FF003E2C 09EAF18D 7B5CEFAE D6CE73A0 0A9B36BF A17EEF99 F06C18CD
F31B72FE C245A02E 7C1A8BF3 BE797A56 0A70F716 4EF04FF8 CF2708F0 CE81FB7E
1EFB1204 C5F30B0E FF00E929 2D01E238 96D99D09 F97F788F 3591031D C6FF00AB
FDD90075 2F59278B 0E07938A 82C79091 EF500A44 9C3BBF38 2F6A2204 87411062
17144260 1848F72F 7DADA386 91B9264C A6CBC0EF 7E7D51C4 89A99BC7 DF5C4FBF
FDDFA629 68F72C95 F034E671 BED271B0 F0F52160 BF197CFF 00D7256E B249F76F
3EF99F76 D1C11C8C F26F4DDF 48F5195A CCE215F3 5BEEF79E 79DF3F35 EC61C2BD
8F187D98 1A65FF00 37A8EA06 5E430A6D C65AFF00 69E9F53B 1F5527C6 E525803E
7A5B05E0 0A54D294 C74C98F7 BDF15930 44C2ACFB 4CA2006A D0057122 5B770417
1C0A34EF 5C72BF43 00FB1639 AD89B06F 61EF8F4A 20FF0076 F77BAF05 10DFF9EF
FD9E04B0 6F11FF00 D3F3A400 3FC73581 0E4B6890 E1817B7F 8A826909 5C4A0092
08AE0020 E237FDDB 00B3A804 43DFAD06 62FEB9FA A6048311 C4502E09 702D08D1
387BEEF9 AC89905E B4AD70FF 00EBD000 B53DDA7A BFC695A8 5415FDE6 B32511BB
A83A035C 30714168 62922981 0A260502 4A308682 D62001E1 4D6CA309 C837BE25
86D4D023 9063E14D 00E6BDDC 00F3BD5B 0302362F 2E095CF8 DFC57EEF 99554469
151B0C4D 56FF00EA 24B941D0 B6F78F8F 98D785A0 28ECA117 B89C74BF 45D010D1
A264E68F A713C221 97FBE380 7C4310DA 6F87FB9B 04703971 7FF3A200 ECEB99D6
66117C69 3EF9A634 B2FF0096 2A5F3514 440BBEE3 F4AFFA53 E7C90594 3AF63E91
3198323F 743D5175 72098DB8 55D46440 592286DF E9AA4E8D 24279200 BF83C79D
24FF0080 BEC4646D 754D5580 737AAAEF 4700E946 F7ED4100 E9C6F53F 1DF3A300
F4E3F19F AE4900F9 9678EFA7 DA0072AD DA1FEF0B 05700143 F6AFD6FF 00E82581
5E1D4DF7 BCF72D08 F1DF19F1 CF4FA700 153A1CDF 9FF7A420 4E9A3AA5 FF003DF4
BFAE089B 821DDAF3 ABFF00D9 1017FD9D 63F93F8C FF00FD45 00FF00CE BCF49F3E
AFA93015 F73BDEF7 7EDD8610 E73CB6FF 00E31FF7 FD416893 C60ED102 B8EF8F41
4C8412C8 F7BC43FF 00EB8681 DE0A670A 240E0D20 DE4300C6 4300BB82 81D60A14
6B087156 30F0E209 582FF87F F45E040C 04FDCDF6 AC89389C F7EEF1AC 082286AD
E3AA9610 D000026A 05DBAA44 46A95469 3E6A049B EE8211F1 996C800A 360DF92C
1819B4AC EF4500BA FF00E17F F1EE10AF 5D4C6905 4BF19E3B DF2168A2 666AD9DC
4FF1FE45 61177DB6 D8E44EF7 3D35C401 B997200A 3A773CBC B896F7ED EF4910BA
8460A42E 81C4F81D 5403936A F6137FFB 35C42B62 A509004B 10262DCD FC234CF3
DF249972 3501801A 45167420 99409B2E 8941E65F 93D2529D 80E4F963 1F4532E3
F741DD34 6D83F750 0A65B2F7 2C3637FF 00C33ECF 9A8876CF 6273F5DD F4AC0801
87EAFEF6 0FC8F72B 92A661B1 FF009055 6ECC4EF7 FD22D824 4CF50F59 A6F1EDDF
708F3581 0B8F69AF 9436F433 C8180D05 32DA4A20 A800A500 15A86096 9D8DE6D4
3D178E4B 803B6F81 DFF47E04 E06105A7 0520DFA8 F0F46D08 F02B14DF FC6D0871
CE09FF00 375F0A50 BFC2F3CD 41C05AA7 0BB19565 902AA854 D1377FA6 E280AC63
753B04A1 925DC5F0 F9D02F31 15AC6C63 D3E32E95 B494DB36 C5F7FA0C CA97B3E8
6E5D799C 619D4DC7 781088EA 88D68A98 652E1D2A EDC858D3 58D50DA8 3FA6B071
AFBB9456 1C9F6B7A 32ED7AA9 1C26B7B3 BEB54CD0 B0B736DB 250B618B 5F6A1273
82F18705 13BAC3C4 E39501EF 4380F513 F77E2A0D 106E7ACF 4FA50005 BC8DF82C
0833FEEF FF001E04 917C41A8 A148F1BB DC12A8FD 07DF8211 A955B8F7 AAF62D09
BC92FF00 C5FF0059 03E08DBD C444853E 19F1DF5F 84363CDE F12FBCEF AF0A2971
B23DCC08 F7BDA456 E08CBF42 8F46EFF1 ABA62A34 9285FF00 7CDCFCCC 9A7F8616
3135E48D F21ADFCE 76AD0A3B D8F7A96E 745F2696 08DA2515 BB1AC1A5 73BFFD0D
253084A1 009C6DE6 2765DDF4 B07F9A18 99043C41 00BBF45A 00D68E6F ED45E396
AEDFE349 802D4121 12123172 2AA80637 2FEB6FC2 DDAE9882 CD0C3B08 D00065EF
FCF84D0D 20D728F2 A700F69D 676A4C8E A76E0832 BFF2AC71 5B00F3CE 15F75B9F
0D22B4B7 8429861B BBFEA000 DE8E814B 085720A2 A5ADDFB9 05BF4444 EE6C37A8
36B2D58F EBEEFD7A 32D38620 0B1F5D7D 7F82011E 3EB96DBF 6B2E08B1 FF0090DD
FECF2FF5 6D0831EF 31BBFB9F 3EF16E96 083A7C77 D5DE7CDF 5F25139E 2EB5BE69
35219C22 FA553518 85A6EB62 130E8467 EB2EF38D BF8DCFB6 698E2629 F48C3D20
F07AAC82 4F10C04E F0D2D9C7 CA7EEDEA DF00869B 3F7079A6 9E4F81AA 0B30C3A8
BD2D346E F9FEE297 F1EFAA15 E60EA472 5936BF44 7A17F6EE 72F40F4A BD4065D7
2C93C368 914206E1 A649FB89 1AE3DDBA 2826787F B7F3580C DA9F9B43 667781F6
5F9A2329 8C13EF8E EF5975D8 089553D2 A6739DC1 FA5BA7C7 2AC96300 BF67FB5E
E63F806C 838D937A B70029E5 BE1DEBFC 8329F3AB A2CA205A EF8BCBDA CC3AEF20
4BA80DCD 6BCBA914 2B7EE23C CA99304F 41B024FD 9D1C7CFC A800D817 8FA86711
D8A77DF9 BD20837A 17F6499F F7D96181 B66F902B 30F6C086 7706DEB1 37A43C9B
E3997A7C D149B579 37419125 10309E84 54FAA2E3 1D7ADF3F 5516C0D8 601C2FF0
AC08403E F3F2A409 91F8797A A700B728 C64E3E8F 6DDA807A 6ABAC23B 6FBCFF00
A481447D 3D6CE23D 8D25913C 02FCA654 690B8730 9F25919A 5AC8A54F EFF2A409
C2BC027B 08BCDF1D C4C05094 7AF78BA5 646FAAB0 C8A534E2 95384BCF CD2511A7
2DF0A355 0487AF67 4A604834 7F96F8A4 44293620 8A56D524 F5E2BDF6 1FF3AC92
885CBA02 5602B1C4 36821013 04D05C20 3141008E FF006D74 5F41105D 0D7124F6
F5FEA030 897789EB 4D27588C EA665C3B 48BF4C06 B715ACC1 6C51DE48 F00B46E8
D3867289 7ADF5970 7F9E8D75 568947BD 17F1C5EF 43782764 28CD34A0 97B62F72
C5577A26 E66C80DA 6C13E180 4F418546 0DA5ADE9 1BEAD313 854D79E2 884B8558
3DBCE345 E5A5FAC4 75F252EB 12B8B657 596C5D35 CDA06828 3EEEE217 23F2ACF7
ADBEE40C 25E9F14B 2BDEF383 83F6C455 548D90E7 3C8155DF 6F6CC4F7 F0A5EBE7
0562C697 2423553A DE8CF1EF AAE927A8 878731C6 D770E78B AF45CD19 E967C79B
34366783 8EB2E445 50687981 C2C1389E CFAA9304 F7B959DF 1FD6BADF ED4FAB41
F4C1BEBB DF664D5F 5345DD7B 620C40EB AA7CFF00 14819EA5 8A9ACED3 B8B3A5AB
630D29B4 B6D78D39 8F71A826 C2ADB53A 57EF4710 570A5548 0E7BB0DF 3E845680
39C9C7DD 70A70676 8BECDA3B DF1B8490 532912A8 D0FB3EDF AD06D528 51BFC3F5
EEF8A500 6484EFEE 80B337A9 0424B96B F2CC17A8 26B500F1 DEA100D4 EB7ECFA8
0065F5CD F1D9EB0F 4F0AC4FA 6633BB8A 9F8A40E5 38F36313 2F64DD54 001672CD
A010ECCC E749C07B C2667205 A77F004F 4E05136F 97BF031C F1790B4A 3066648B
37016C8D 7CCCDF79 38C4A01F 6B42DD38 6CF74FA1 5026F3E2 C30682FF 00EBF7ED
0A77C2B5 2ACFBD05 E7850AD0 B283AD43 8CE4FB58 0075339F 843AF653 0083C569
C172A504 7596378A 64A75032 AFFF0058 86486F92 CA84177C 7AEF9CC4 E273BCD4
D9F378AF 25B07859 E1A7F7E9 F72C088B 28822BE3 F53F2F0D B2199F96 5E47EFC1
FF003E4B 6CF39CB8 E7637F7C BEA85017 1258A55D 79F13FFC 9F151619 54F63F74
7D7B2F41 7837B7A6 0D04344C B404B221 0D23D8BD 6ED4FBDD 6A94F0EE EB4D2AF6
5F76F85A 1322B864 36D7F9DD 2E89BC90 4C456873 17C8D8BB E7453040 B7054283
C5EE1EDA 2E16EF2C 06EF5132 F16B4DBD 315B1EF7 1EDDF2FF 003695E4 D5B064C7
2B946B12 FB320D67 CFB2D954 00342320 63729CF4 49569DC2 EFEC36C2 C4899F36
C8267AA9 0EB44039 D6FF0065 569DF8DD DA761A34 CD98EE13 0999F177 BFFB7E41
6B8D6039 B6D6E1EC 958F5E3F F4ED0139 ADFB69C0 F7B76A90 2A218E23 DACA54A9
42A26777 F69EB58D 19FCA046 F6FF0085 F378D3A6 7109118D 14EB5E39 EEEFD39A
03F2847A 7F19D15A 07DBBF25 B5C52636 BC9FE70D 21E3EDFB A4152F81 69DE809F
7F388EEB F93EA5FA 4739E6EC D21D971B 209F3EE8 596DCA22 84B5CEBD 113DE0DD
D39EC5B0 31A4D891 544672DF 1FC4A005 0BBC47DE ED083378 CF683846 40FCEDDE
0490EA8C 2BD7D926 A2FF00B2 76969E3D CF9218AA 7B61CD44 72B8E399 4A402749
BF05053C DFD530D1 41974BE8 89694C72 7F76AD09 117EEE3D 012E3434 4B36FAFA
5B8080CE 79F6ED3E A910316C 17B627D7 D2FD9F05 83991FE7 AE7DA707 9FBDBBBD
BD3DDA20 B1633646 64B1A410 7C7ADD0A 46198BA8 3C17DEBD 6D09B0FB B3597111
5CBB81DE 4D6689A8 1577FF00 EA76FF00 14F51F0A 347C9FFF 00F3D850 614F4F3F
03B30560 3C073384 E0977B99 3655DEE8 F7FEA824 227BC92A EAE3357B F12A1D16
B0F6A2CB EBDFFB32 5511D328 F21EAFF8 DF7A044C F55FF50F 11FF000A DA0360FE
EFF7FB84 26FF00F1 CFB0AFA8 4054FF00 C2F70EF1 BF820A70 FF00BCF4 8F71EFDC
45848CFF 005DFF00 FDF1AF50 2228E29A 8FF78EB2 84D0F14B 7C7BF8A4 E2489372
053AEE0F 828B5CBF 85D141F9 3F4F5A47 50E4949E F4E9220B 29BD2927 0AF9697A
AD1A2FE8 84169F77 3C42E9AA DDFBA2D3 2AF182FE 3B6ACD27 709B41DB 2AB011C5
742B6157 F413AAD5 0484BA79 7F657C11 D23749A3 1D2954E1 37C7EF7E 6AA2FE16
51E2E5F1 F3819FB3 72A4E506 D4D61751 EB9CA1F1 ED109B37 7F701EED 8901DDEC
EEF1C6FB F21F477E 2F4A08C9 612F0597 B96833DE FC3F9A5E 818DC06B 7F8256B2
A136EE7E 5AB3624B 10BFCF2E ECE925AB 279D1A02 E2950A39 7FA89BF1 04134FCA
ED583134 B26429E7 BE7F96BE 2D0AA06E 45562419 4456EF03 800E355E 0B119715
E1315EC6 7F2EF9B3 20F55B03 E1D48BE1 5E311974 022174EB 806B9FFB BC205A98
019767B9 7FCD5E98 30FB51A4 F4CEC8A9 B2BE8335 56FBEFA3 5D7BCB94 C3C6294F
ECEE9F2E 884D7182 EB3536E1 55F54B51 48BF6374 AF2AD3D3 AADB0A85 165BE1D8
F82A1DDE 243CEBAC 38EF957E 2F3AAD58 68DFE903 70EEF49E F4AD7082 1BAA3CF8
92C173E4 E98D1A45 B0F07187 D5FB37EF 9DA977A1 51FA18B1 B4FADF3F 540C0669
D3CDA3EF 66F90348 ED083089 FBA1A404 A29CE828 F1FC9EE4 0E843BC6 B8EF1038
7B51C484 C7371080 2F3E326E BE7B5A00 0263BDF7 3E9DB9E8 AED38A82 6469E032
BFF23D5E 9E0410E9 C2518481 32677CF5 3FA900DA BFCA5E26 2F6813FD 1D962A10
40F1E290 FF00838A 4D77427B 8934E122 C647FF00 9D864DE2 63D464E7 20D1DDF3
6FA5BA50 ACE51667 345E3F59 F3AFE289 EA4203BC 4E142FF1 8BFBBFF4 FF00FA84
1A6D8C1E FB4D2BC8 A7F71BD4 2185B596 87AFFF00 77DFFD0F 9A8B8C2D AD56C847
8EF329FF 0058B3C8 64A8D67A 5ED1F33A 15CC48E2 6DD03D8F DBD79E3F 02122FFD
ACBFFB1C DEDF5D3A 99C0E76C FD7FF7B8 FF006643 D5804606 9FF777BF F9AF5080
1461DEBC 2FAFF742 0A86B997 DE4FEA34 141037ED 097C92F3 EFAB00F5 13889F27
9208CDC9 2737DE9E 0490FB76 EDAF0520 FEFC2D09 CAF3CCDE 4B0D2392 1845FD4E
38EFDD54 AF2115C7 843CC041 8A2EA90D 54877FB4 E2F4DDD1 BED40829 40B8C629
C7CDE071 5BE13441 9402D835 5EAD7519 6B08B1B6 7742F5AE B8C6556E 684875CD
CC601719 BE4D5DC0 F97E8252 D4A8F9EC 790961DA F7579B6D C4C0C7BB A3517A22
48291E66 F49B3FF1 4937EF53 A91842F3 EB98FF00 77CB312D B802D2B8 D52FE6B9
526BEF5B 842A95E6 129860B1 6EEFFEC1 4527088D 1B3FF2F5 6FB32D01 4DFDC651
2417E85F E0CC243C F2F38B45 FDCF952A DD0C9BD6 B7C0FF00 2FBC7FF9 7E5AC459
A8429562 8EF586CE 41650A82 CB7C8CC4 C8B70513 77F9C52D 102774A7 46D83F81
F2A400F4 C35FB117 04CEF1A6 45F1E35D 9E7DA8C7 1A4683F4 0C1C2009 271AC7CF
D60CC2D7 8A01EB27 3E7B7E84 6731C785 DEC465C0 7C8ED38A B0C0C2F9 CDA55016
E3C5C719 62E74980 6607F34D 7A1EC426 BAF2465C B388D40F 7E697C7E 2439102E
44DE5271 003EF8ED E7473700 DD88FF00 CD3EBDCF AF356E10 1B24190B A2982F4F
3E7A9F5C 754B1050 FB93ADFB 25E3F91E 744B1063 06D00AA7 E7495D14 8504F9CE
E8FB7E9F 356F1A16 B99571EE EFFBF40F 7ADE203C 9439F182 F68FB03D 6F1816BD
5EFE7E2E BAC9C54A E5B68A30 D77CEFD3 9E35ECB3 F03FFF00 9E4AF988 AA255168
7C139E7E E2EE7004 B35512F0 743992FD 7A54F1CE 2D0D900B FB6CCBDF B6C81B0A
02BF3AA8 77811330 D89D431D 3437BBDB 00918E13 1432F83D AD28487C C6099200
1A67829F F732540C 3AE73941 0E31AEB7 15D14056 18E9F957 BB654CA8 28061C14
8D9C8F05 509FC646 6B0C4527 DA8E59B0 15D8CBF5 2BF2792B D3C9C74D 6D0A1525
29D75D9D 55B6801B 5E30EFEA 5EB745C8 A86D470E E30FBA9E 55065381 6AFDC2E2
FD8F6064 F42FCA5B 822A239D C521670E F2A71D21 86B939D1 CB66D3EB F5BF74BD
7B5B5408 28EE366F 02714E36 7FAE7827 608B6B20 C164455F A6E96494 DA9626FA
E6839451 0BA667C2 299716D8 5D639981 1FBFCB56 86153093 E705B57B 06F3FCA4
4429FF00 BA79F6B3 F4BE2533 55958FDD 7F54258D 1BB9E8CF 16806A00 C8670815
27709FBE F40D409E BD5A8490 E9504089 FC57C24A E83C5DA7 F758C659 9821F319
30C8D7FD F5BB1417 34CBFF00 43C1C400 AEA3EEDC 610190C0 78F22FFF 0057BBF7
AF9E101A 5639E0F7 C46D2654 E8F92C50 22487CBC E8385B20 41EA5400 62EC99A5
75101AD7 FBA1E200 CD779A10 EBE53538 AF5D80F6 4900AE50 7101F9EE C9D200B3
F6F1F2BE 04C0EF12 CF8A101E 1B2FF949 3E5B02C1 E3EEE41F F9A73431 B26B18B0
9BB34FAA 103074BD 5B030BB9 39AD080B 97890AC2 73E3DCC4 C2734ED3 86011B1C
615F9F71 7BA6A604 91510273 DCEFE182 0BF09FD7 A7051348 E017C450 45C557DC
00A48A13 3517E8E8 31C8C7BA 9EA8E223 555B8DDB 173507B2 EDBD7379 5B4605EB
99BD4598 13A53ECE 1C3A49F2 E43151AA D84CF52D 516A997E F6B95E30 37E84F5A
8D366617 D33CCD33 1B68E189 EF47470B 91A3B984 2FE7BFD8 DB50B6C4 54D51F88
685D9FAA 0C29835E D914C79F F7676919 30E4AD41 282E53E1 967C54BF 4A6D738B
9C52BBF1 D3FBE1F4 C725C8A3 086CFDE1 7CEC6CE5 D983DAA0 B1F6EF69 1D0015B7
E0821151 CF239944 2573F33C 35F14754 851E19F5 5E7CD133 A82D8EE0 F97E29DC
A5611288 EFE15037 86501141 F8375EF5 6BFF001E 9FF48F55 9F18E72E DDB062ED
F96CD3BA B3887807 2506F1E3 B7FF0047 26F9142A 4D33CA08 F21F264A 0A21820E
BCC0F7FE C1558288 B9E7F9A0 D87D17C4 FDDD9551 655B456C A2F44048 C2F79DBE
5F8BBA4E 9824EDD4 7A54F642 5410B9BC FF006995 ADF3A1C5 8A396865 6962B1E4
70159EA5 8614A76D 06205991 F15C0CF1 EFAB6878 07B12762 1418DD74 4108B788
AD534C74 ACEC0D70 414CC69E 173966A3 DEC1B77D C37BC29B 2B3B10F9 0496080E
999EA904 2200F9DE F1A704B3 40100CCF AF2510C3 F8FE7341 4C345BF4 0F47CF92
88D43876 D0C4C290 81FF00A0 14062F8D E1D4030B 47EFE038 DA30C0DE 3ED88D0A
2437BD0A AA8273C7 8BBD1804 D0AD7445 12EB6889 881F7C16 9E18C446 4606476A
104DB7A0 00D43891 D1DBA30D 2006DEEC 5ECF5413 B8611EA2 30E83A5A 433236BF
937988F2 7ED8B7FA A58E0D18 2E2C3EC3 AEE275F1 3F9C969D 003D7ADC 6CBC4CFF
0018B572 8F452F0A 804B9DDD 5D95DE1B FF00E5BC DF922702 F2E368A8 B9FB372F
3FEF8AFF 00645ACE 0D8C4E0D 9975272B C7FBDE26 7A9D0A33 0100338C AF7D02E0
7E8EA2CA 50B6B9F6 0306F0DB BE4522DB 681940B6 AB55C27C 1B2EBAC9 D0D13A9C
2F7D305E 0C5C0441 D4D9DAD9 3B3B6275 51946B70 1307ED36 3EEDAB2A CA407A8C
2882CCF5 F79B8A5D 085D2995 EC71C8AF A0BA4230 6BA77BF4 A609D27C 21145E63
CF311C81 6E7A0772 F7FD2324 EC32011F 99A3E745 C027742B 376BC443 F347E978
FF00DA44 57914207 972912F6 BB7CDD81 FF005FA0 D84B11E6 B0812A39 B327633E
F16D7A89 147BCEA4 5C7384B5 EE08A305 50F15BB4 411D9126 9FE72F3F ADFA4966
EB441BEF CEEF325B 760B51D8 7BFECBED 37BDAD18 B042FBCB 45E220FF 0071F65A
436822C5 BDBCF6DB 2CFEB07F 6347DA22 1566FDF4 181A9155 C300939C 5CA51036
1DCE3CA2 88B75FDC 05DCBABD B5B387CC ED75FC1D 07A6D52A 947EADCB E7540E05
6EC5FF00 87357A1B 52F73B4B 70B7419F B7358B71 D2C1A418 F387D771 2D3910E1
9332EDC7 5A3E813E AF05332A 4BF5A21D 0430E88F 0CEA6505 1F32A745 2182F534
FCFADAB3 4962DCFB 7740FF00 DB8470F9 9332B16B 30A86510 E7C6466E 0911B2F2
0D558041 1A8E7153 02F1F57E 6D893867 EFF38C0A E2B30036 E6F7A260 030A4F20
89880FD3 A26CB30F 0A46B7FB F06C8A80 8DDF936A 30B001EB E95F6582 04F49E25
02EDD382 109B819F 71F9A426 D03C2DB8 A03C1A16 6E545F41 2D51D889 09699956
BFD87F74 5B47806B FB37F6F4 79410CC8 60BFC4A6 E02655BE 0471C679 218ACDA5
08435800 34C76785 C4D7321A CE7062CB 7580E0FC C12D0B60 8600CDA3 577A0BE0
DE5C02B2 DD995E48 5CD661B7 F64FAA65 B5181896 7A9C8715 05C73A7D 6DAB93CA
508D4FC2 C501CE8B EF21F32C 3AAD8660 481ED2C6 63124583 3E5E912E 3BDB0C7C
FCAD04AC 44080FE0 132D4B8D 806B317F 6364A357 9EC47054 9BDDDDCB FB09E741
DE0D56BD B7931630 969FBFFA F65AB20A 531ABC0A C218B1C1 A83C0D34 8FD11B04
3C3F0AA0 7DF4BF4C B88CE0B7 E6DED480 8768B2C7 C7D83DAA E296C097 A9C0C01F
8F371506 B2CC31FA C610AC6D 1BF249B4 864E363F 8A55FC30 C147FF00 D3AA4F40
D5983EFF 00D1FBA4 BA1A20EC 6554AC5E 14D1AE97 0990F7E7 73EE9B36 19CF839E
95BE0293 D415DAED 3ED76BAF 8E7AB721 66650C96 3472F122 07133DDA 4650BBE3
E2C98B82 A2A464CE 70F9AB30 6753EC22 3595C855 6CD31704 85E4D935 7ABF4368
0287BB46 A100C47E F8DF705A 1532C7CC 1F78A624 914FAA20 334F6E8A 0063FD5A
20F1E989 375408F4 7CF9A660 735E6A30 07F0F72D 0831263E 6DCA2BD3 B88ED000
B1F0F669 09B04F7C 7E04683E E88F6A13 890A2417 2D08D1F6 EFEBE1CD A84A600C
F9BDF134 B5312645 9BE5F973 6E4BC590 65544200 97FF0008 0D50BFF0 5FFD0FF1
EE114522 DF00256D F5BC2D5A CF5044EB 0193E6F3 C0758260 1E040093 6A409891
DEEF4108 79EE18DE 9E2513BF 8B5EAA04 B8EE08A2 48D1A325 105A519F 6CFE6F86
20704BC5 6C77412F EF8EBEA5 C5C0BDBB 52B87E73 0013EFC1 556A4001 97D6D760
E37FB178 A6EB3853 4F4CF166 E5A3AFF7 A2991007 369EC50E 62370D5D 8873F719
04202A30 D9CAE509 7C5793F0 8F35104A 23E810D2 AE832A8C DAA0295B BD62A0C6
E168E948 CDB413A2 CCC5CEEC 375F7A0A 22FC89FD 5C3FFF00 3B1506A2 A6717382
E9C50763 FD5AC555 0C1C568B D93B1BB8 D7B23A06 12BFD21C C58889F8 5AD3005B
D61ACD94 7FFF0067 705BF286 48865C16 43232063 0EE75759 0C1DB507 E3AF8A30
BD51090D BB2CC719 FA1D9A85 566529D6 BFB411DF 1D68FF00 A0EB1519 A5D124B3
CBE39E49 07D7EBDB 5C862D0B A199F63E E5D7BA11 68D76118 C5F443D7 DDFB5984
C0FCBF76 9E544854 BBCC7CDC 7F87AA51 784FBE5C 300BFD5E 54581687 30385478
16E9765B 40C8AE83 6A3074A4 00F3C035 8137DD9A 4973BDA8 00935C00 62CEE04D
80D47C41 8006C286 205CFBAF 8E9BEF12 4508FBCF 530B00BF 4BA8E1A3 2520DCB9
DEFD2FDA 03E297F9 CEFA5E84 247C93EF AE3D1188 0C91B1BE C52C3280 3304E00A
10E76F82 10DF13A8 00775A00 305A13E8 D3A204D5 BAE8494C 032D1068 834EF1A3
92BA30A2 6F537321 73349BA7 650D8D46 29BBC2CB F1A4C70A 64E6EA83 DF3F5527
1231C22B 11EF0B4D 2F0262E2 87CA9F04 5B00ED97 CA08E7ED 13DE046C A8092082
109CF1BB 0520489E BC051367 C00512BB D7DC1390 7BC33FC4 36175C50 D05C4008
C1A80492 98B45D41 016C7377 4E454894 D64954D7 1707C994 A2C76C7B 8E40F777
5A3721B1 34724368 E185DC85 7029B9AB A755A190 22D84D21 02B1A731 8446326A
EE4F9C42 554100ED DD8681D6 C12502F6 49CB0512 EF25A705 05DD3841 6C544B35
10ED250D 94611DA8 24910BC6 410CB88B AA9126F0 5F1BD796 02F3FF9D
        </binaryData>
      </image>
    </margin>
  </section>
  </layout>
  <programUnits>
    <function name="conversionptasformula" returnType="number">
      <textSource>
      <![CDATA[function CONVERSIONPTASFormula return Number is
begin
  RETURN ROUND(:CountEMP_NIFPerNOMBRE * 166,386);
end;]]>
      </textSource>
    </function>
    <function name="lisconverptasformula" returnType="number">
      <textSource>
      <![CDATA[function LISCONVERPTASFormula return Number is
BRUTO	NUMBER(10);
begin
  SELECT ROUND(ROUND(SUM(NVL(SALARIO,0) + NVL(COMISION,0)) * 166.386) / 12) INTO BRUTO FROM EMPLEADO;
  RETURN BRUTO;
end;]]>
      </textSource>
    </function>
  </programUnits>
  <colorPalette>
    <color index="190" displayName="TextColor" value="#336699"/>
    <color index="191" displayName="TableHeading" value="#cccc99"/>
    <color index="192" displayName="TableCell" value="#f7f7e7"/>
    <color index="193" displayName="Totals" value="#ffffcc"/>
  </colorPalette>
  <reportPrivate defaultReportType="masterDetail" versionFlags2="0"
   templateName="rwbeige"/>
  <reportWebSettings>
  <![CDATA[#NULL#]]>
  </reportWebSettings>
</report>
</rw:objects>
-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>

<HEAD>
  <TITLE> Your Title </TITLE>
  <rw:style id="rwbeige148">
<link rel="StyleSheet" type="text/css" href="css/rwbeige.css">
</rw:style>

  <META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</HEAD>

<BODY bgColor="#ffffff" link="#000000" vLink="#000000">

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ffffff" rowSpan=2 vAlign=middle width=188><IMG alt="" src="images/rwbeige_logo.gif" width="135" height="36"></TD>
    <TD bgColor="#ffffff" height=40 vAlign=top><IMG alt="" height=1 src="images/stretch.gif" width=5></TD>
    <TD align=right bgColor="#ffffff" vAlign=bottom>&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE bgColor="#ff0000" border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ff0000" class="OraColumnHeader">&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ff0000" vAlign=top class="OraColumnHeader"><IMG alt="" border=0 height=17 src="images/topcurl.gif" width=30></TD>
    <TD vAlign=top width="100%">
      <TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
        <TBODY>
        <TR>
          <TD bgColor="#000000" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor="#9a9c9a" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor="#b3b4b3" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        </TBODY>
      </TABLE>
    </TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE width="100%" border="0" cellspacing="0" cellpadding="0">
  <TR>
    <TD width="29%" valign="top">
      <TABLE width="77%" border="0" cellspacing="0" cellpadding="0">
        <TR>
          <TD width="10%" class="OraCellText"><IMG alt="" src="images/blue_d_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation goes here </TD>
        </TR>
        <TR>
          <TD width="10%" class="OraCellText"><IMG alt="" src="images/blue_r_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation Item</TD>
        </TR>
      </TABLE>
    </TD>
    <TD width="71%">
      <DIV align="center">
      <!-- Data Area Generated by Reports Developer -->
<rw:dataArea id="MG1GRPFR36">
<rw:foreach id="RG1361" src="G_1">
<!-- Start GetGroupHeader/n --> <table class="OraTable">
 <caption class="OraHeader">  <br>Nombre <rw:field id="F_NOMBRE" src="NOMBRE" breakLevel="RG1361" breakValue="&nbsp;"> F_NOMBRE </rw:field><br>
Conversionptas <rw:field id="F_CONVERSIONPTAS" src="CONVERSIONPTAS" breakLevel="RG1361" breakValue="&nbsp;"> F_CONVERSIONPTAS </rw:field><br>
 </caption>
<!-- End GetGroupHeader/n -->   <tr>
    <td valign="top">
    <table class="OraTable" summary="">
     <!-- Header -->
     <thead>
      <tr>
       <th <rw:id id="HBEMPNIF36" asArray="no"/> class="OraColumnHeader"> Emp Nif </th>
       <th <rw:id id="HBNOMBRE136" asArray="no"/> class="OraColumnHeader"> Nombre1 </th>
       <th <rw:id id="HBAPELLIDOS36" asArray="no"/> class="OraColumnHeader"> Apellidos </th>
       <th <rw:id id="HBCOMISION36" asArray="no"/> class="OraColumnHeader"> Comision </th>
       <th <rw:id id="HBSALARIO36" asArray="no"/> class="OraColumnHeader"> Salario </th>
       <th <rw:id id="HBOFICIO36" asArray="no"/> class="OraColumnHeader"> Oficio </th>
      </tr>
     </thead>
     <!-- Body -->
     <tbody>
      <rw:foreach id="RGNOMBRE361" src="G_NOMBRE">
       <tr>
        <td <rw:headers id="HFEMPNIF36" src="HBEMPNIF36"/> class="OraCellText"><rw:field id="FEMPNIF36" src="EMP_NIF" nullValue="&nbsp;"> F_EMP_NIF </rw:field></td>
        <td <rw:headers id="HFNOMBRE136" src="HBNOMBRE136"/> class="OraCellText"><rw:field id="FNOMBRE136" src="NOMBRE1" nullValue="&nbsp;"> F_NOMBRE1 </rw:field></td>
        <td <rw:headers id="HFAPELLIDOS36" src="HBAPELLIDOS36"/> class="OraCellText"><rw:field id="FAPELLIDOS36" src="APELLIDOS" nullValue="&nbsp;"> F_APELLIDOS </rw:field></td>
        <td <rw:headers id="HFCOMISION36" src="HBCOMISION36"/> class="OraCellNumber"><rw:field id="FCOMISION36" src="COMISION" nullValue="&nbsp;"> F_COMISION </rw:field></td>
        <td <rw:headers id="HFSALARIO36" src="HBSALARIO36"/> class="OraCellNumber"><rw:field id="FSALARIO36" src="SALARIO" nullValue="&nbsp;"> F_SALARIO </rw:field></td>
        <td <rw:headers id="HFOFICIO36" src="HBOFICIO36"/> class="OraCellText"><rw:field id="FOFICIO36" src="OFICIO" nullValue="&nbsp;"> F_OFICIO </rw:field></td>
       </tr>
      </rw:foreach>
     </tbody>
     <tr>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <td <rw:headers id="HFCountEMPNIFPerNOMBRE36" src="HBSALARIO36"/> class="OraTotalNumber">Recuento: <rw:field id="FCountEMPNIFPerNOMBRE36" src="CountEMP_NIFPerNOMBRE" nullValue="&nbsp;"> F_CountEMP_NIFPerNOMBRE </rw:field></td>
      <th class="OraTotalText"> &nbsp; </th>
     </tr>
     <tr>
     </tr>
    </table>
   </td>
  </tr>
 </table>
</rw:foreach>
<table class="OraTable" summary="">
 <tr>
  <th class="OraTotalNumber"> Recuento: <rw:field id="F_CountEMP_NIFPerReport" src="CountEMP_NIFPerReport" nullValue="&nbsp;"> F_CountEMP_NIFPerReport </rw:field></th>
 </tr>
</table>
</rw:dataArea> <!-- id="MG1GRPFR36" -->
<!-- End of Data Area Generated by Reports Developer -->

      </DIV>
    </TD>
  </TR>
</TABLE>

<P>
  <BR>
</P>

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#000000" colSpan=2><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#ff0000" colSpan=2 class="OraColumnHeader"><IMG alt="" border=0 height=4 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#000000" colSpan=2><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#ffffff">&nbsp;</TD>
    <TD align=right bgColor="#ffffff">&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

</BODY>

</HTML>

<!--
</rw:report>
-->
