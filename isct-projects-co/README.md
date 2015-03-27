# Dataset Information

- Clean dataset names: `isct-funded-projects-co.csv`, `isct-research-groups-co.csv`,
- Description: This dataset contains informaton on R&D projects registered on the SIGP Colciencias system from Colombia. These projects have been vetted and peer reviewed by expert panels, and approved for execution by Colciencias.
- [Original Data](http://datosabiertoscolombia.cloudapp.net/frm/catalogo/frmCatalogo.aspx?dsId=62181)
- Transformations: Line 631 has a formatting error. Correcting this error and re-saving as .xslx

# Questions

- How long does it take for a project to be approved?
- How many of these projects belong to the Biotech sector? (NLP analysis)
- Is there any prevalence of a region or university when assigning projects? 


# Data Dictionary

- Proyectoid:Contiene un código que corresponde a la llave primaria, que genera el sistema a nivel interno, para identificar el proyecto de investigación o de innovación, y establecer relación con los evaluadores, con las entidades y con toda la información del proyecto.
- convocatoriaid:Contiene un código que corresponde a la llave primaria, que genera el sistema a nivel interno, para identificar la convocatoria de proyectos de investigación o de innovación, y establecer relación con los proyectos, con las entidades y con toda la información del proyecto.
- anoconvocatoria:Contiene el año en que se creó y se publicó la convocatoria
- codigoproyecto:Contiene el código del proyecto de investigación o de innovación. Este código es el que conoce y maneja el investigador y/o la entidad para consultar y/o solicitar modificaciones, durante la ejecución del proyecto.
- titulo:Contiene el mes en el cual fue creado el grupo de investigación
- fecharegistro:Contiene la fecha en que fue recibido el proyecto por Colciencias
- fechaaprobacion:Contiene la fecha en que fue aprobado el proyecto por Colciencias
- anoaprobacion:Contiene el año en que fue aprobado el proyecto por Colciencias
- entidad:Contiene el nombre de la entidad ejecutora que presentó el proyecto a Colciencias y que responde por la información del mismo
- convocatoria:Contiene el nombre de la convocatoria de proyectos de investigación o de innovación.
- tipofinanciacion:Contiene el tipo de financiación del proyecto, que puede ser de RC: recuperación contingente, CF:cofinanciación, entre otros.
- descripcionfinanciacion:Contiene el nombre del tipo de financiación del proyecto, que puede ser de recuperación contingente, cofinanciación, entre otros.
- dependenciaid:Contiene el código del Programa Nacional de Ciencia, Tecnología e Innovación de Colciencias, al cual fue presentado el proyecto de investigación o de innovación
- programa:Contiene el nombre del Programa Nacional de Ciencia, Tecnología e Innovación de Colciencias, al cual fue presentado el proyecto de investigación o de innovación
- areatematica:Contiene el nombre del área temática, clasificado de acuerdo al programa Nacional de Ciencia, Tecnología e Innovación.
- areaciencia:Contiene el nombre del área de la ciencia en la cual fue clasificado el proyecto.
- estadoproyecto:Contiene el nombre del estado de proyecto, el cual va cambiando en cada etapa del ciclo de gestión del proyecto en Colciencias, puede tener estado codificado, evaluado, aprobado, negado, entre otros.
- exencion:Identifica si es un proyecto o es un programa de investigación o de innovación