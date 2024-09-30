ECODERS Team

Kevin Gael García Cristobal (FRONT) 
Juan Antonio Alvarado Sánchez (FRONT)
Anahí ROcha López (FULL STACK) 
Angel Jesús Sánchez Pérez (BACK) 
Rebeca Abigail Mendoza Farías (BACK)


APK Demo Video: https://youtube.com/shorts/f26fs8HCsBU?feature=share

Download APK: https://drive.google.com/drive/folders/1olSWh_RM0zJrMWYklARCuzHS4AcHYAlJ?usp=drive_link



Problem

Carbon dioxide (CO2) is one of the main elements affecting climate change and contributing to global warming and the greenhouse effect. Plants play a crucial role in the balance of these elements: they absorb CO2 and produce oxygen through photosynthesis. Since each plant has a different effect on this process, plant diversity is crucial, as well as considering local climatic conditions, as these may influence their ability to contribute to climate balance.

Objective

The application is conceived with the purpose of encouraging forestation and plant cultivation by providing users with concrete data on the environmental impact of their actions. In this context, users have the ability to log into the application to register the plants or trees they have planted, receiving estimates on their CO2 absorption capacity and O2 production. In addition, users are provided with a map to visualize the location of trees and plants planted by other users, thanks to the integration of the Google Maps API. With respect to plants, detailed information is provided on relevant characteristics such as the type of region or climate suitable, preferred soil type, longevity, smog tolerance and optimal space required for growth. This last characteristic is considered particularly important, as it accommodates the space constraints that users may have.

In order to facilitate the understanding of the impact of afforestation, a linear regression model is implemented using BigQuery ML. This model uses data related to the amount of CO2 and O2, as well as geographic information on the location of trees and plants, to predict the impact of afforestation in a specific area. To improve the accuracy of these predictions, an air quality API is integrated to provide real-time data on harmful compounds such as CO2, NOX, among others, allowing a more accurate estimation of CO2 absorption.

Potential Impact

The potential impact of the application is significant, as it can encourage the active participation of users in environmental conservation and climate change mitigation projects. By providing a platform that educates, motivates and facilitates forestation and tree planting, the app has the potential to generate large-scale positive impact, helping to combat deforestation, improve air quality and promote biodiversity. Over time, the application is expected not only to contribute to the restoration of degraded ecosystems, but also to inspire a change of attitude towards environmental protection and preservation in society at large.

In terms of practical impact, this initiative has the potential to benefit many people by providing them with tools and resources to actively participate in reforestation and environmental conservation in their local communities. Densely populated urban areas are expected to benefit the most, as they face significant challenges related to air quality and lack of green space. Considering Mexico's population and the extent of urban areas that could benefit from this initiative, the potential impact is significant, offering improvements in the quality of life and the state of the environment for millions of people.

Innovation

Our project stands out for its innovation by fusing cutting-edge technology with a proactive approach to environmental conservation. From the integration of accurate physiological measurements, such as stomatal conductance and transpiration level, to advanced data analysis using tools such as BigQuery ML, our platform offers a comprehensive and scalable solution to address the challenges of climate change. In addition, our project's vision for the future, which envisions the possibility of scaling towards carbon credits, demonstrates our commitment to continuous innovation and the promotion of sustainable practices that positively impact the environment and society.

Scalability

The scalability of the application lies in its ability to adapt and grow along with the user community. With a robust architecture based on modern technologies such as Firebase, BigQuery ML and Flutter, the application is designed to handle large volumes of data and support a growing number of users and plantations. In addition, the integration of geolocation and real-time visualization functions via Google Maps API facilitates expansion and collaboration between users, enabling the creation of community reforestation networks on a local and global scale - and it can grow on the spot issues.

In addition, it can grow on an ad hoc basis:
- Geographic Expansion: The application can be expanded to encompass multiple geographic regions, not only in Mexico, but also in the rest of the world. This would require expanding the database and retraining the artificial intelligence to incorporate climatic and environmental variations from different regions around the world.

- Augmented Reality Implementation: Augmented reality models can be implemented in Immersive Stream for XR to enhance the user experience and provide more engaging and immersive solutions. Allowing to offer users the ability to interact with three-dimensional models of plants and natural environments that will thrive in the future.

- Using the Air Quality API: To increase the accuracy of AI models, improve precision and relevance, we can integrate real-time data from the Air Quality API into our system. Incorporating air quality information, such as air pollutant levels and local weather conditions, to predict plant growth and behavior in different environments.

- Collaboration with Organizations: The application could collaborate with government organizations, NGOs, private companies, and local communities to implement tree planting projects on a larger scale. This could involve creating community reforestation programs or integrating the application into corporate social responsibility initiatives.

- Education and Awareness: Additional educational content could be developed within the app to increase awareness of the importance of tree planting and the associated environmental benefits. This could include resources on the carbon cycle, the importance of biodiversity, and sustainable gardening techniques.

- Development of Technology Partnerships: partnerships could be established with companies developing related technologies, such as drones for forest surveillance, IoT sensors to monitor tree health, or data analysis tools to improve artificial intelligence models.

Feasibility

Plaint demonstrates technical, economic, environmental and social viability. The use of established technologies such as artificial intelligence, supported by specific services offered by Google Cloud, implies the technical feasibility of developing the proposed application. Economically, Google Cloud's flexible and scalable pricing model enables management of the costs associated with the project, while the potential positive environmental and social impact can attract additional funding. From an environmental and social perspective, promoting tree planting and environmental awareness through Plaint offers tangible environmental and community benefits, although legal and ethical considerations related to data privacy and environmental liability must be addressed. Plaint presents a promising approach to addressing the challenges of climate change and deforestation, although detailed planning and careful management are required to realize its full potential.

Application Design and Prototyping

First, a working structure was established in Notion that allowed the organization of activities in sprints. A design system was generated in Figma to structure the interface in reusable components, facilitating visual consistency and development efficiency. In addition, the definition of the different sections of the application, served to take care of compatibility across a wide range of devices, ensuring a uniform experience for all users, regardless of the device they use.

Once the design was completed in Figma, it was translated into Flutter using Dart. During this process, we will ensure that we maintain the visual fidelity of the original design and optimize the user experience for mobile and tablet devices. To verify compatibility across different resolutions and screen sizes, a device emulator was used to identify and correct potential design issues.

The application incorporates a function to provide tree and plant planting recommendations, appropriate to the user's current location. Using geolocation services, the application will determine the user's area and suggest trees that thrive in that specific environment. This personalized recommendation system enhances the user experience by generating a sense of belonging by providing valuable information tailored to their surroundings, thus promoting environmental awareness and sustainable tree planting practices.
In our project, a valuable and very detailed plant database was identified, which provides us with an estimate of the CO2 it absorbs and the O2 it produces. 

The measurement of stomatal conductance and the level of transpiration in a plant are two fundamental indicators for understanding its physiological function and its interaction with the environment. These processes are closely related to photosynthesis and respiration in plants, and are critical in determining their ability to absorb CO2 and produce O2. A detailed explanation of each of these concepts, as well as the key variables that influence them, is provided below:

1. stomatal conductance:

Stomatic conductance refers to the ability of stomata, small structures in the epidermis of plant leaves, to open and close. Stomata control the exchange of gases, such as CO2 and O2, as well as water loss through transpiration. The opening and closing of stomata are regulated by several factors, including light, temperature, air humidity and water availability in the soil.

Instruments such as the diffusion porometer or vapor pressure porometer, which measure the rate of water vapor flow through the stomata, are used to measure stomatal conductance. The higher the stomatal conductance, the higher the rate of gas exchange between the plant and the atmosphere, which directly affects CO2 absorption and O2 production.

2. Transpiration level:

Transpiration is the process by which plants lose water as vapor through the stomata of their leaves. This process is essential for the regulation of the plant's internal temperature, as well as for the absorption of nutrients from the soil and the circulation of water and nutrients through the plant's vascular system.

A plant's level of transpiration is influenced by factors such as temperature, relative air humidity, wind speed and soil water availability. The higher the transpiration rate, the more water the plant loses, which can affect its ability to absorb CO2 and produce O2.

Variables that Influence a Plant's Ability to Process CO2 and Produce O2:

Plant Characteristics:

Type of plant species: Each plant species has different physiological characteristics and environmental requirements that affect its ability to absorb CO2 and produce O2.
Plant size and age: Larger and more mature plants generally have a greater capacity to photosynthesize and transpire than young plants.
Stomata density: The density and distribution of stomata on plant leaves can influence their ability to exchange gases with the atmosphere.

Environmental factors:

Sunlight: Photosynthesis depends on sunlight to produce energy, so light availability directly affects the plant's ability to absorb CO2.
Temperature: Temperature affects the rate of plant photosynthesis and transpiration. Plants tend to have higher photosynthetic and transpirative activity at moderate temperatures.
Air humidity: The relative humidity of the air can influence the rate of plant transpiration by affecting the amount of water vapor that can be contained in the surrounding air.

Water and Nutrient Availability:

Soil water availability: The amount of water available in the soil influences the plant's ability to photosynthesize and transpire.
Soil Nutrients: The availability of essential nutrients, such as nitrogen, phosphorus and potassium, can affect plant health and growth, and thus the plant's ability to photosynthesize.

In addition, the application will go beyond suggesting suitable trees for the area; providing information on the potential long-term impact of each tree selection. Using predictive artificial intelligence models created in BigQuery ML, the application will calculate the estimated emissions salvageable by planting a particular tree species over its lifetime. This information empowers users to make environmentally conscious decisions and understand the tangible benefits of their actions, further promoting sustainability and environmental conservation.

On the backend side, BigQuery ML was chosen over Firebase for data modeling and machine learning model building because of its ability to execute complex SQL queries and its inherent scalability. BigQuery ML offers a variety of out-of-the-box machine learning algorithms and allows developers to create, train and deploy models directly from the BigQuery platform, significantly simplifying the process of implementing and maintaining ML models. In addition, Firebase was chosen as the primary data storage solution for the purpose of saving time and resources, as it offers seamless integration with other Firebase tools, such as user authentication and push notifications.

To connect Google Cloud with Firebase and Firebase with Flutter, a detailed setup process was followed that involved creating a project in Google Cloud Platform, activating the necessary services such as Cloud Firestore and Firebase Authentication, and generating API keys and authentication tokens that were then integrated into the Flutter application code. This process ensures seamless and secure communication between the different components of the system.

The choice of Flutter as a development framework was based on several factors, including its endorsement by Google, its ability to create attractive and responsive user interfaces, its optimal performance on multiple platforms, and its large developer community. This combination of features made Flutter the ideal choice for our project, allowing for an efficient implementation and a high-quality user experience.

In terms of authenticating to Firebase rather than other Google AI tools, Firebase Authentication was considered to offer a more complete and easier to integrate solution for user management in our application. Its robust feature set, including email authentication, social networking and federated identity providers, provided the flexibility and security needed to effectively meet our application's authentication needs.

The development of the database followed a rigorous process, highlighting the fact that it is a unique database developed by our team and based on research and findings from a relevant paper in the field of forestry and environmental conservation. This database, designed specifically for our project, provided a solid and organized structure to store and manage the data related to the plants registered by the users and other crucial aspects of the application.

For the implementation of Maps, two key steps were followed: first, the Google Maps API was integrated with Flutter to provide map visualization functionalities in the application; second, a two-API structure was implemented that included the Google Maps API to display the location of trees and plants planted by other users, and an additional API on air quality that was not implemented.

Although the implementation of Augmented Reality (AR) models was initially considered, the lack of time for their development became a factor that fell into the scalability category for future application enhancements. However, detailed planning was performed and space was left for the integration of these models in later versions of the application.

In addition, a Figma was carried out to design the user interface of the application, ensuring an intuitive and engaging user experience that would meet the needs and expectations of the users. Finally, a robust API logic was established to manage the communication between the different components of the application and ensure an efficient flow of data and operations.

Bibliographies:
https://www.researchgate.net/search.Search.html?query=carbon+dioxide+absorption+plants&type=publication&subfilter%5BpublicationType%5D=dataset
https://www.researchgate.net/publication/330997495_CO2_inhibition_of_rhizophagy_cycle_in_wheatpptx
https://www.researchgate.net/publication/265292640_Sunderbans_Mangrove_Trees_Losing_Capacity_to_Absorb_CO2_StudynewsarticleSunderbans-Mangrove-Trees-Losing-Capacity-to-Absorb-CO2
https://www.researchgate.net/publication/322593175_Capture_Carbon_Dioxide_Gas_to_Minimize_Anthropogenic_Agents_Changing_the_Earth_Temperatures
https://www.researchgate.net/publication/333002632_Elevated_Atmospheric_Carbon_Dioxide_Inhibits_Rhizophagy_Cycle_and_Root_Hair_Elongation_in_Winter_Wheat
https://www.scielo.cl/scielo.php?script=sci_arttext&pid=S0718-34292019000400055
https://www.researchgate.net/publication/327700883_Fatal_attraction_Study_deciphers_the_role_of_carbon-dioxide_in_attracting_prey_in_pitcher_plants
Configura tu proyecto de Google Cloud  |  Maps SDK for Android  |  Google for Developer
https://www.researchgate.net/publication/261133719_Carbon_dioxide_capturing_storing_recycling_A_alleviation_approach_for_climate_change
