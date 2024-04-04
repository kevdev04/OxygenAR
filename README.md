Equipo ECODERS

Kevin Gael García Cristobal (FRONT) 
Juan Antonio Alvarado Sánchez (FRONT)
Anahí ROcha López (FULL STACK) 
Angel Jesús Sánchez Pérez (BACK) 
Rebeca Abigail Mendoza Farías (BACK)


Problema

El dióxido de carbono (CO2) es uno de los principales elementos que afectan al cambio climático y contribuyen al calentamiento global y al efecto invernadero. Las plantas juegan un papel crucial en el equilibrio de estos elementos: absorben CO2 y producen oxígeno a través de la fotosíntesis. Dado que cada planta tiene un efecto diferente en este proceso, la diversidad de plantas es crucial, así como considerar las condiciones climáticas locales, ya que estas pueden influir en su capacidad para contribuir al equilibrio climático.

Objetivo

La aplicación se concibe con el propósito de incentivar la forestación y cultivo de plantas al proporcionar a los usuarios datos concretos sobre el impacto ambiental de sus acciones. En este contexto, los usuarios tienen la capacidad de iniciar sesión en la aplicación para registrar las plantas o árboles que han plantado, recibiendo estimaciones sobre la capacidad de absorción de CO2 y producción de O2 de estas. Además, se les facilita a los usuarios un mapa para visualizar la ubicación de los árboles y plantas sembrados por otros usuarios, gracias a la integración de la API de Google Maps. Con respecto a las plantas, se proporciona información detallada sobre características relevantes como el tipo de región o clima adecuado, el tipo de suelo preferido, la longevidad, la tolerancia al smog y el espacio óptimo requerido para su crecimiento. Esta última característica se considera especialmente importante, ya que se adapta a las limitaciones de espacio que puedan tener los usuarios.

Con el objetivo de facilitar la comprensión del impacto de la forestación, se implementa un modelo de regresión lineal utilizando BigQuery ML. Este modelo utiliza datos relacionados con la cantidad de CO2 y O2, así como información geográfica sobre la ubicación de los árboles y plantas, para prever el impacto de la forestación en un área específica. Para mejorar la precisión de estas predicciones, se integra una API de calidad del aire que proporciona datos en tiempo real de compuestos nocivos como lo son el CO2, NOX, entre otros, permitiendo así una estimación más precisa de la absorción de CO2.

Impacto Potencial

El impacto potencial de la aplicación es significativo, ya que puede fomentar la participación activa de los usuarios en proyectos de conservación ambiental y mitigación del cambio climático. Al proporcionar una plataforma que educa, motiva y facilita la forestación y la arborización, la aplicación tiene el potencial de generar un impacto positivo a gran escala, ayudando a combatir la deforestación, mejorar la calidad del aire y promover la biodiversidad. Con el tiempo, se espera que la aplicación no solo contribuya a la restauración de ecosistemas degradados, sino que también inspire un cambio de actitud hacia la protección y preservación del medio ambiente en la sociedad en general.

En términos de impacto práctico, esta iniciativa tiene el potencial de beneficiar a muchas personas al proporcionarles herramientas y recursos para participar activamente en la reforestación y la conservación ambiental en sus comunidades locales. Se espera que las áreas urbanas densamente pobladas sean las más beneficiadas, ya que enfrentan desafíos significativos relacionados con la calidad del aire y la falta de espacios verdes. Considerando la población de México y la extensión de las áreas urbanas que podrían beneficiarse de esta iniciativa, el impacto potencial es significativo, ofreciendo mejoras en la calidad de vida y el estado del medio ambiente para millones de personas.

Innovación

Nuestro proyecto se distingue por su innovación al fusionar tecnología de vanguardia con un enfoque proactivo hacia la conservación ambiental. Desde la integración de mediciones fisiológicas precisas, como la conductividad estomática y el nivel de transpiración, hasta el análisis avanzado de datos utilizando herramientas como BigQuery ML, nuestra plataforma ofrece una solución integral y escalable para abordar los desafíos del cambio climático. Además, la visión hacia el futuro de nuestro proyecto, que contempla la posibilidad de escalar hacia la emisión de bonos de carbono, demuestra nuestro compromiso con la innovación continua y la promoción de prácticas sostenibles que impacten positivamente en el medio ambiente y la sociedad.


Escalabilidad

La escalabilidad de la aplicación radica en su capacidad para adaptarse y crecer junto con la comunidad de usuarios. Con una arquitectura sólida basada en tecnologías modernas como Firebase, BigQuery ML y Flutter, la aplicación está diseñada para manejar grandes volúmenes de datos y soportar un número creciente de usuarios y plantaciones. Además, la integración de funciones de geolocalización y visualización en tiempo real a través de Google Maps API facilita la expansión y la colaboración entre los usuarios, permitiendo la creación de redes comunitarias de reforestación a escala local y global.

Además puede crecer en los temas puntuales:
• Expansión Geográfica: La aplicación puede expandirse para abarcar múltiples regiones geográficas, no sólo en México, sino también en el resto del mundo. Esto requeriría expandir la base de datos y reentrenar a la inteligencia artificial para incorporar variaciones climáticas y ambientales de diferentes regiones en todo el mundo.

• Implementación de Realidad Aumentada: Se pueden implementar modelos de realidad aumentada en Immersive Stream for XR para mejorar la experiencia del usuario y proporcionar soluciones más atractivas y envolventes. Permitiendo ofrecer a los usuarios la capacidad de interactuar con modelos tridimensionales de plantas y entornos naturales que prosperarán en el futuro.

• Uso de la API de Air Quality: Para aumentar la precisión de los modelos de IA, mejorar la precisión y la relevancia, podemos integrar datos en tiempo real de la API de Calidad del Aire en nuestro sistema. Incorporando información sobre la calidad del aire, como los niveles de contaminantes atmosféricos y las condiciones climáticas locales, para predecir el crecimiento y el comportamiento de las plantas en diferentes entornos.

• Colaboración con Organizaciones: La aplicación podría colaborar con organizaciones gubernamentales, ONG, empresas privadas y comunidades locales para implementar proyectos de plantación de árboles a mayor escala. Esto podría implicar la creación de programas comunitarios de reforestación o la integración de la aplicación en iniciativas de responsabilidad social corporativa.

• Educación y Conciencia: Se podrían desarrollar contenidos educativos adicionales dentro de la aplicación para aumentar la conciencia sobre la importancia de la plantación de árboles y los beneficios ambientales asociados. Esto podría incluir recursos sobre el ciclo del carbono, la importancia de la biodiversidad y técnicas de jardinería sostenible.

• Desarrollo de Asociaciones Tecnológicas: Se podrían establecer asociaciones con empresas que desarrollan tecnologías relacionadas, como drones para vigilancia forestal, sensores IoT para monitorear la salud de los árboles o herramientas de análisis de datos para mejorar los modelos de inteligencia artificial.

Viabilidad

Plaint demuestra viabilidad técnica, económica, ambiental y social. El uso de tecnologías establecidas como lo es la inteligencia artificial, respaldada por servicios específicos ofrecidos por Google Cloud, implica la viabilidad técnica de desarrollar la aplicación propuesta. Económicamente, el modelo de precios flexible y escalable de Google Cloud permite la gestión de los costos asociados al proyecto, mientras que el impacto ambiental y social positivo potencial puede atraer financiamiento adicional. Desde una perspectiva ambiental y social, la promoción de la plantación de árboles y la conciencia ambiental a través de Plaint ofrece beneficios tangibles para el medio ambiente y la comunidad, aunque se deben abordar consideraciones legales y éticas relacionadas con la privacidad de los datos y la responsabilidad ambiental. Plaint presenta un enfoque prometedor para abordar los desafíos del cambio climático y la deforestación, aunque se requiere una planificación detallada y una gestión cuidadosa para realizar su máximo potencial.

Diseño y Prototipado de la Aplicación

En primer lugar, se estableció una estructura de trabajo en Notion que permitió la organización de las actividades en sprints. Se generó un sistema de diseño en Figma para estructurar la interfaz en componentes reutilizables, facilitando la consistencia visual y la eficiencia en el desarrollo. Además, la definición de las diferentes secciones de la aplicación, sirvió para cuidar la compatibilidad en una amplia gama de dispositivos,  asegurando una experiencia uniforme para todos los usuarios, independientemente del dispositivo que utilicen.

Una vez completado el diseño en Figma, se plasmó en Flutter utilizando Dart. Durante este proceso, nos aseguraremos de mantener la fidelidad visual del diseño original y optimizar la experiencia del usuario para dispositivos móviles y tabletas. Para verificar la compatibilidad en diferentes resoluciones y tamaños de pantalla, se usó un emulador de dispositivos, que permitiera identificar y corregir posibles problemas de diseño.

La aplicación incorpora una función para proporcionar recomendaciones de plantación de árboles y plantas, adecuadas a la ubicación actual del usuario. Utilizando servicios de geolocalización, la aplicación determinará la zona del usuario y sugerirá árboles que prosperen en ese entorno específico. Este sistema de recomendación personalizada mejora la experiencia del usuario generando el sentimiento de pertenencia, al ofrecer información valiosa adaptada a su entorno, promoviendo así la conciencia ambiental y las prácticas de plantación de árboles sostenibles.
En nuestro proyecto se identificó una valiosa base de datos muy detallada sobre las plantas, la cual nos proporciona un estimado del CO2 que absorbe y del O2 que produce. 

La medición de la conductividad estomática y el nivel de transpiración en una planta son dos indicadores fundamentales para comprender su función fisiológica y su interacción con el medio ambiente. Estos procesos están estrechamente relacionados con la fotosíntesis y la respiración de las plantas, y son críticos para determinar su capacidad de absorber CO2 y producir O2. A continuación, se proporciona una explicación detallada de cada uno de estos conceptos, así como de las variables clave que influyen en ellos:

1. Conductividad Estomática:

La conductividad estomática se refiere a la capacidad de los estomas, pequeñas estructuras en la epidermis de las hojas de las plantas, para abrirse y cerrarse. Los estomas controlan el intercambio de gases, como el CO2 y el O2, así como la pérdida de agua a través de la transpiración. La apertura y cierre de los estomas están regulados por varios factores, incluyendo la luz, la temperatura, la humedad del aire y la disponibilidad de agua en el suelo.

Para medir la conductividad estomática, se utilizan instrumentos como el porómetro de difusión o el porómetro de presión de vapor, que miden la tasa de flujo de vapor de agua a través de los estomas. Cuanto mayor sea la conductividad estomática, mayor será la tasa de intercambio de gases entre la planta y la atmósfera, lo que afectará directamente la absorción de CO2 y la producción de O2.

2. Nivel de Transpiración:

La transpiración es el proceso mediante el cual las plantas pierden agua en forma de vapor a través de los estomas de sus hojas. Este proceso es esencial para la regulación de la temperatura interna de la planta, así como para la absorción de nutrientes del suelo y la circulación de agua y nutrientes a través del sistema vascular de la planta.

El nivel de transpiración de una planta está influenciado por factores como la temperatura, la humedad relativa del aire, la velocidad del viento y la disponibilidad de agua en el suelo. Cuanto mayor sea la tasa de transpiración, mayor será la cantidad de agua que la planta pierde, lo que puede afectar su capacidad para absorber CO2 y producir O2.

Variables que Influyen en la Capacidad de una Planta para Procesar CO2 y Producir O2:

Características de la Planta:

Tipo de especie vegetal: Cada especie vegetal tiene diferentes características fisiológicas y requisitos ambientales que afectan su capacidad para absorber CO2 y producir O2.
Tamaño y edad de la planta: Plantas más grandes y maduras generalmente tienen una mayor capacidad para realizar fotosíntesis y transpiración que las plantas jóvenes.
Densidad de estomas: La densidad y la distribución de los estomas en las hojas de la planta pueden influir en su capacidad para intercambiar gases con la atmósfera.

Factores Ambientales:

Luz solar: La fotosíntesis depende de la luz solar para producir energía, por lo que la disponibilidad de luz afecta directamente la capacidad de la planta para absorber CO2.
Temperatura: La temperatura afecta la tasa de fotosíntesis y transpiración de la planta. Las plantas suelen tener una mayor actividad fotosintética y transpirativa a temperaturas moderadas.
Humedad del aire: La humedad relativa del aire puede influir en la tasa de transpiración de la planta, ya que afecta la cantidad de vapor de agua que puede contener el aire circundante.

Disponibilidad de Agua y Nutrientes:

Disponibilidad de agua en el suelo: La cantidad de agua disponible en el suelo influye en la capacidad de la planta para realizar la fotosíntesis y transpiración.
Nutrientes del suelo: La disponibilidad de nutrientes esenciales, como nitrógeno, fósforo y potasio, puede afectar la salud y el crecimiento de la planta, y por lo tanto su capacidad para realizar la fotosíntesis.


Además, la aplicación irá más allá de la sugerencia de árboles adecuados a la zona; proporcionando información sobre el impacto potencial a largo plazo de cada selección de árboles. Utilizando modelos predictivos de inteligencia artificial creados en BigQuery ML, la aplicación calculará las emisiones estimadas salvables al plantar una especie de árbol en particular durante su vida útil. Esta información capacita a los usuarios para tomar decisiones ambientalmente conscientes y comprender los beneficios tangibles de sus acciones, promoviendo aún más la sostenibilidad y la conservación del medio ambiente.

Por parte del backend, se optó por utilizar BigQuery ML en lugar de Firebase para el modelado de datos y la creación de modelos de aprendizaje automático debido a su capacidad para ejecutar consultas SQL complejas y su escalabilidad inherente. BigQuery ML ofrece una variedad de algoritmos de aprendizaje automático listos para usar y permite a los desarrolladores crear, entrenar y desplegar modelos directamente desde la plataforma de BigQuery, simplificando significativamente el proceso de implementación y mantenimiento de modelos de ML. Además, se eligió Firebase como la solución de almacenamiento de datos principal con el propósito de ahorrar tiempo y recursos, ya que ofrece una integración perfecta con otras herramientas de Firebase, como la autenticación de usuarios y las notificaciones push.

Para conectar Google Cloud con Firebase y Firebase con Flutter, se siguió un proceso detallado de configuración que implicaba la creación de un proyecto en Google Cloud Platform, la activación de los servicios necesarios como Cloud Firestore y Firebase Authentication, y la generación de claves de API y tokens de autenticación que luego se integraron en el código de la aplicación Flutter. Este proceso garantiza una comunicación fluida y segura entre los diferentes componentes del sistema.

La elección de Flutter como framework de desarrollo se basó en varios factores, entre ellos su respaldo por parte de Google, su capacidad para crear interfaces de usuario atractivas y responsivas, su rendimiento óptimo en múltiples plataformas y su amplia comunidad de desarrolladores. Esta combinación de características hizo de Flutter la opción ideal para nuestro proyecto, permitiendo una implementación eficiente y una experiencia de usuario de alta calidad.

En cuanto a la autenticación en Firebase en lugar de otras herramientas de Google IA, se consideró que Firebase Authentication ofrecía una solución más completa y fácil de integrar para la gestión de usuarios en nuestra aplicación. Su conjunto de funciones robustas, que incluyen autenticación por correo electrónico, redes sociales y proveedores de identidad federados, proporcionó la flexibilidad y la seguridad necesarias para satisfacer las necesidades de autenticación de nuestra aplicación de manera efectiva.

La elaboración de la base de datos se realizó siguiendo un proceso riguroso, resaltando el hecho de que se trata de una base de datos única desarrollada por nuestro equipo y basada en investigaciones y hallazgos de un paper relevante en el campo de la forestación y la conservación ambiental. Esta base de datos, diseñada específicamente para nuestro proyecto, proporcionó una estructura sólida y organizada para almacenar y gestionar los datos relacionados con las plantas registradas por los usuarios y otros aspectos cruciales de la aplicación.

Para la implementación de Maps, se siguieron dos pasos clave: primero, se integró la API de Google Maps con Flutter para proporcionar funcionalidades de visualización de mapas en la aplicación; segundo, se implementó una estructura de dos APIs que incluía la API de Google Maps para mostrar la ubicación de los árboles y plantas plantados por otros usuarios, y otra API adicional sobre la calidad del aire que no se alcanzó a implementar.

Aunque inicialmente se consideró la implementación de modelos de Realidad Aumentada (AR), la falta de tiempo para su desarrollo se convirtió en un factor que entró en la categoría de escalabilidad para futuras mejoras de la aplicación. Sin embargo, se realizó una planificación detallada y se dejó espacio para la integración de estos modelos en versiones posteriores de la aplicación.

Además, se llevó a cabo la realización de un Figma para diseñar la interfaz de usuario de la aplicación, garantizando una experiencia de usuario intuitiva y atractiva que satisficiera las necesidades y expectativas de los usuarios. Por último, se estableció una lógica API sólida para gestionar la comunicación entre los diferentes componentes de la aplicación y garantizar un flujo eficiente de datos y operaciones.


Bibliografías: 
https://www.researchgate.net/search.Search.html?query=carbon+dioxide+absorption+plants&type=publication&subfilter%5BpublicationType%5D=dataset
https://www.researchgate.net/publication/330997495_CO2_inhibition_of_rhizophagy_cycle_in_wheatpptx
https://www.researchgate.net/publication/265292640_Sunderbans_Mangrove_Trees_Losing_Capacity_to_Absorb_CO2_StudynewsarticleSunderbans-Mangrove-Trees-Losing-Capacity-to-Absorb-CO2
https://www.researchgate.net/publication/322593175_Capture_Carbon_Dioxide_Gas_to_Minimize_Anthropogenic_Agents_Changing_the_Earth_Temperatures
https://www.researchgate.net/publication/333002632_Elevated_Atmospheric_Carbon_Dioxide_Inhibits_Rhizophagy_Cycle_and_Root_Hair_Elongation_in_Winter_Wheat
https://www.scielo.cl/scielo.php?script=sci_arttext&pid=S0718-34292019000400055
https://www.researchgate.net/publication/327700883_Fatal_attraction_Study_deciphers_the_role_of_carbon-dioxide_in_attracting_prey_in_pitcher_plants
Configura tu proyecto de Google Cloud  |  Maps SDK for Android  |  Google for Developer
https://www.researchgate.net/publication/261133719_Carbon_dioxide_capturing_storing_recycling_A_alleviation_approach_for_climate_change
