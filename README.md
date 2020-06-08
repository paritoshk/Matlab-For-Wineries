# Matlab-For-Wineries
Data Visualization and Process Simulation

Following files will break down step by step what happens in a winery using simple equations and biochemical processes.
The objective is to find missing link between winemaking process dynamics and control and resulting wine quality.
Analysis of phenolic extraction and fermentation kinetics for red wine production
 
Final report
BACHELOR OF TECHNOLOGY
in
Chemical Engineering
Submitted by
Paritosh C Kulkarni
160903018
Under the guidance of
Dr. S Shanmuga Priya
Associate Professor-Senior Scale, Department of Chemical Engineering,
Manipal Institute of Technology, MAHE, 576104, Manipal.
Tel: +91-9740730126
Email address: shan.priya@manipal.edu

&

Mr. Sachin Darade
sachin@yorkwinery.com
HR and Marketing Manager, York Winery
Gat No.15, 2, Gangapur-Savargaon Rd,
Gangavarhe,
Nashik, Maharashtra 422222
+91 9423970247


DEPARTMENT OF CHEMICAL ENGINEERING
MANIPAL INSTITUTE OF TECHNOLOGY
(A constituent unit of MAHE), MANIPAL-576104

May 2020

        	       

SYNOPSIS
York winery produces red wine on a massive scale because weather and soil of the surrounding Nashik district foster the production of Merlot and Malbec grapes. Production of red wine involves symbiotic processes of fermentation and phenolic extraction of sweet and naturally occurring compounds in grape juice. The dark red color pigmentation of wine, the feeling of bitterness and taste of wine are the outcomes fermentation of grape solids and grape juice, wherein the phenolic extraction gives the red color. The process of extraction varies according to the change in biomass and ethanol concentration. During the process of fermentation, grape solids form an agglomeration with high void fraction at the uppermost portion of the fermenter, forming a fermentation system with proportional temperature and concentration gradients. In this work, we want to contribute the fermentation kinetics model using Matlab and to use the process of batch fermentation and for the extraction of phenolic compounds during the fermentation of red wine, imparting fermentation kinetics, model heat and mass transfer equations using Simulink. We also simulated first and second-order equations of phenolic extraction using Simulink. These predicted concentration profiles. Using this model will reckon phenolic extraction rates throughout fermentation. We intend to validate the model's predictions against real-time data from York, and comparison will be made to a current model's predictions to show the optimum advantage of a spatial model over in-situ models. The last part will examine the complex process of phenolic extraction during red wine fermentation and provide a precise implementation of this model in the industry. Finally, we will also examine updated contemporary works that assimilate spatial reactor engineering models of red wine fermentation dynamics with temperature and alcohol sensitive extraction models, allowing for a new and robust tool in wine fermentation process modeling. 

KEYWORDS- wine analysis, fermentation kinetics, process modeling, phenolic, red wine.

Objective
1.	We Reviewed recent work related to the fermentation kinetics and phenolic extraction during red wine fermentation. We also contacted the researchers who worked on this Konard V Miller.
2.	Examined and analyzed current problems in the fermentation and extraction of red wine during and after grape harvesting (York specific information is under Non-disclosure agreement)
3.	We modeled fermentation kinetics in a batch reactor, plotting various graphs using Monod models w.r.t time in MATLAB and Simulink.
4.	Plotted biomass and anthocyanin concentration profiles during phenolic extraction and derived the meaning of the results in order to propose changes in the industry.
5.	(Covered in a Coursera Course due to COVID-19) Obtain training on wine sensory and form think of the relationship between profiles and quality of the wine.
6.	Try to compare the obtained profiles and correlate them with recent works in this field and conclude the study. 






Date

CERTIFICATE

 	This is to certify that the project work entitled "Analysis of phenolic extraction and fermentation kinetics for red wine production" submitted to the MAHE during May 2020, for the partial fulfillment of Bachelor of Technology in Chemical Engineering by Paritosh C Kulkarni is a bonafide record of original work carried out by him during the period from February 2020 to May 2020. The work reported herein does not form part of any other thesis or dissertation on the basis of which any degree, diploma, associateship, fellowship, or other titles were awarded.


Name of the HoD						 Name of the Guide
(Signature)						(Signature)
(Designation and Affiliation) 				(Designation and Affiliation)












Certificates from the company and Coursera :
 



 












Acknowledgment

I would like to express my special thanks for gratitude to my external project guide Mr. Sachin Darade as well as their organization York Winery who gave me the golden opportunity to do this project in the area of Research in Winemaking (Chemical Engineering). 

I am humbled by the guidance provided by and my internal guide Senior Associate Prof. Dr. Shanmuga Priya  and coordinator Assistant Prof Dr. Nethaji S


























(Signature of the student)
LIST OF TABLES

Table No	Table Title	Page No
1	Sample parameter variation to anticipate the final product	12
2	Data Gathered for model development.	17
3	Parameters to anticipate the final product 	30

LIST OF FIGURES

Figure No	Figure Title	Page No
1	Maldivian-3 Glucoside	9
2	Red and white wine types	10
3	Brief Picture of Winemaking at York (Created with Adobe Illustrator)	11
4	Chain of phenolic extraction from grape solids	14
5	Extraction Profiles of Anthocyanin	15
6	Location of objective quality compounds in red grapes	17
7	Internal and External diffusion during fermentation,	17
8	Comparison of a normal fermentation and Y-axis is the concentration of Biomass, Sugar, Ethanol in the wine at time	18
9	Process Information Flow Diagram for Fermentation Kinetics Model	22
10	Phenolic Extraction Profiles and Wine Color Variation, Ethanol Concentration vs Time	27
11	Biomass Concentration w.r.t time in Grape Solids	28
12	Figures showing Biomass and Substrate (above) and Natural Yeast response (below)	29
13	Wine aging - Simulink Model	31
14	Wine Aging Graph, Ratio vs Time.	31









Contents

	Page No
Synopsis		2
List of Figures		7
List of Tables 		      7

Chapter 1	INTRODUCTION	10
	1.1	From Winemaking to Chemical Engineering	9
	1.2	Process of Winemaking from the perspective of an engineer	10

Chapter 2	LITERATURE REVIEW	
	2.1	Process of phenolic extraction	12
	2.2	Fermentation Kinetics	17

Chapter 3	METHODOLOGY	
	3.1	Phenolic Extraction	19
	3.2	Fermentation Kinetics	21

Chapter 4	RESULTS AND DISCUSSION	
	4.1	On –site Work	25
	4.2	Phenolic Extraction	26
	4.3	Fermentation Kinetics	27
	4.4	Wine aging and wine quality:	28

Chapter 5	CONCLUSION	31

REFERENCES	32
PROJECT DETAILS	34






¬¬¬CHAPTER 1
INTRODUCTION

1.2 From Winemaking to Chemical Engineering

As we introduce types of wines, there are pure whites and reds out there, red wines as compared to pure white wines have an exquisite aroma profile. Moreover, maybe if they were grapes of white wine grown in a cold climate, like that of Nashik, they have some nice tart crispness. However, their purpose in life is to be refreshing and thirst-quenching, and palate-cleansing, or simple compatibility with food. 

Beyond pure whites and reds, there are more aromatic whites and reds. Figure 2 differentiates red and white wine with pictorial depiction. Aromatic whites, for example, include Floral, Estery types., wines that have a lot of tropical fruit or fresh stone fruit or berry fruit. There are herbaceous, grassy wines, wines that are spicy, wines that have minerality or have some earthiness. And then there are stylized wines, wines that show more of what the winemaker did to them. Than what they have to show for themselves, and that is a winemaking choice, that is a stylistic choice. Red wine, on the other hand, has color and taste with the beautiful mouthfeel. Extending discussion about color, it is a part of that overall world of tannins and phenolics. In the previous works (1), the link between "feeling of wine" and "engineering" wine has not been established; the motivation of this work is to bridge the gap between these two worlds. Moreover, the simulations will be independent using MATLAB and Comsol, the Method to individually simulate each model, for example, heat transfer equation in the fermenter and relating it with the change in the quality of the wine, can be rather useful in an industrial scenario today and is unique to the present horizon of the scientific community which relates to the research on winemaking.


 
Figure 1 Maldivian-3 Glucoside (a typical Anthocyanin Molecule)
There are several phenolics that influence color; however, chief among them is Anthocyanins, and figure 1 shows a typical molecule in the Anthocyanin family - Maldivian-3 Glucoside.

In a frigid climate, like that of Nashik, though, the color of grapes "red" may fail to develop. What about overall flavors? In a colder climate, particularly a climate that has good day time, night time temperature alteration of temperature fluctuations, which we call the diurnal shift, daytime, nighttime shift. The flavor development can be magnificent and sophisticated. In a warmer climate, flavor development can be adequate, certainly but sometimes a little bit lacking. Thus to understand and dive deeper into the art of winemaking, it is crucial to calibrate the process of phenolic and tannin extraction and relate thermal, mass, and kinetic models individually to changes in wine quality and taste.

 
Figure 2 Red and white wine types (York Database)

1.2 Process of Winemaking from the perspective of an engineer

To make red wine, as described in figure 3, the black/dark red grapes are selected based on their sugar content and are crushed and mixed with pH balancing additives. Wine is then pressed and filtered; however, solids are kept in the juice. Crushing is the process when gently squeezing tender grapes and breaking the skins to start to liberate the contents of the grape solids. Destemming is the process of removing the grapes from the rachis (the stem which holds the grapes) Pressing is the act of applying pressure to grapes or pomace in order to separate juice or wine from grapes and grape skins. Pressing is not always a necessary act in winemaking; if grapes are crushed, there is a considerable amount of juice immediately liberated (called free-run juice) that can be used for vinification.  Typically this free-run juice is of a higher quality than the pressed juice. Pressed juice is then filtered and then fermented for 14-20 days at 15-18oC. For red winemaking, stems of the grapes are usually removed before fermentation since the stems have relatively high tannin content; in addition to tannin, they can also give the wine a vegetal aroma (due to extraction of 2-methoxy-3-isopropylpyrazine which has an aroma reminiscent of green bell peppers.) On occasion, the winemaker may decide to leave them in if the grapes themselves contain less tannin than desired.
	Thus, winemaking can be called as a "process" with different "unit operations." The scope of this project encompasses an aim to integrate and streamline these operations by understanding fermentation and kinetics behind phenolic extraction.


 
Figure 3 Brief Picture of Winemaking at York (Created with Adobe Illustrator)

Wine quality is influenced by smell and color. Swirl, sniff, sip, and swallow: most wine drinkers know the routine for wine evaluation. While relating wine quality with the wine production process, our job was to understand the science of sensory wine analysis using a practical approach. In contrast to other food industries where customers prefer, and producers enforce little batch-to-batch variation, the wine marketplace anticipates differences from many sources, including vintages, varietals, regions, blends, and producers. Sensory science provides tools to measure these differences by analyzing and interpreting reactions to products as perceived by sight, smell, taste, touch, and hearing. Thus wine aging was simulated to understand changes in smell and color of the wine. 
A separate report on sensory wine analysis is submitted, please review that.





















                         CHAPTER 2
BACKGROUND THEORY

2.1 Process of phenolic extraction 

Phenolic extraction is a vital part of red wine production. Phenolics in the form of Anthocyanin (color) and tannins (mouthfeel) divide red and white wine as [1] Miller et al. have shown. It is well known that these phenolics are present in grape skins and seeds. [2] At the beginning of the fermentation process, a solid part of grapes from seeds and skin float to the top of the fermenter and form a "cap," a porous circular mass of grape solids occupying around one‐third of the volume of slurry. As such, taking into account the impact of parameters that affect the concentration of these compounds in the "cap" region during winemaking is essential to producing wine of desired quality and composition. Figure 7 shows the cap region, and Figure 6 shows anthocyanin location in grapes.

The rationale and purpose of this work take into account that the relation between phenolics, which influence the color and mouthfeel of red wine, which we could be controlled via changing parameters of fermentation. This relation is the novelty of this work, as to establish the exact parameters to change to get the particular shade of red as the color of wine (as shown in table 1), for example, the temperature say 18o C to get light red color wine if all the parameters are kept constant. 

Tf – Fermentation Temperature
[S] – Grape Solids concentration (Phenolics- Anthocyanin)

Table 1 – Parameter variation to anticipate the final product [3,4,10]
Parameter Change	Effect on Final Product
Rise (++)  in Tf	Darker red pigmentation
Fall (--) in Tf	Softer red pigmentation
[S] ++	Heavier mouthfeel
[S] -- 	Lighter mouthfeel


As we take fermentation kinetics in the account, there is evidence of temperature gradients exist inside the cap [9], even with temperature control equipment, such as a jacket or external heat exchanger, there is no natural mixing occurring within the cap [15] thus model is considered well mixed. Wine fermentations are observed to be carried out in the absence of external mixing, so throughout fermentation, it is assumed that the cap is homogenized.


 
Figure 4 Chain of phenolic extraction from grape solids [3]

It has been widely established that Anthocyanins (one of phenolics) are the chemical components of red grapes; they accumulate over time in seed and skin part during the starting of veraison (riping). [3] wines that predominantly account for red and purple pigments, whose position in the grape as its elements is described in figure 6. Of which, the malvidin- 3-glucoside is often ubiquitous Anthocyanin, accounting for greater than 40% of the total anthocyanin concentration.[4]  During the fermentation, where the grape solids remain in contact with the juice, anthocyanins are extracted from the skins and seed via molecular diffusion, and their concentrations decrease after 6-8 days of contact [5] as the rate of anthocyanins undergoing reactions exceeds the extraction rate.

This process is modeled by a two-term extraction process with an initial fast extraction followed by a slighter decrease to its final value [6,7,8], and described in below equations of Fick's Law. For a system (figure 7) where the internal diffusivity remains constant and obeys Fick's second law. A diffusion-controlled process where the phenolic compounds move from a region of high concentration to that of a lower concentration within the solid, the one-dimensional extraction for planar and radial extraction of spherical particles is represented by equation 2, [10].

D[C]/Dt = K (D2[C]/Dx2)
– D represents partial differentiation (1)

•	C is the instantaneous solute concentration at time t.
•	K is the diffusion coefficient, and x is the distance of internal diffusion.

For simplification, over the large scale reactor, a simple model of transfer of Anthocyanin from grapes to wine in order to show color (red) is modeled using pseudo-first-order reaction kinetics in this project. 
	 
From equation 1, Following equation is obtained,
dC/dt = -K1[Cinit-C]+K2[C] – (Equation 2)

which is similar to equations by Setford (2017) [10] i.e

(d[A]/dt = k1[A1- A] –k2[A- A2])

We are trying to understand how much Anthocyanin is LEFT in grapes, instead of how much Anthocyanin is extracted in wine, which is easier and opposite of what research so far has been. A novel approach of this research is to graphically plot this.

-	let A is to be extracted phenolics and A1 and A2 be initial and final concentrations
-	the reaction is the first order assuming k2 is small (k2<<1) becomes pseudo first order Kinetics.

i.e A=>B thus d[A]/dt = -k1[ΔA] or exponentially decreasing curve – obtained in results – (Equation 3)


A quantitative study of anthocyanin extraction rates in heterogeneous fermentation environments at industrial scales is challenging, and previous work is limited [3]. Therefore, a functional‐first principles model is required which would facilitate both the development of theoretical understanding and process optimization in the winemaking.  The literature [5,6,7] has demonstrated that multiple studies have reflected the role of temperature and Ethanol, for instance, in determining yeast and biomechanical fermentation kinetics and phenolic extraction [1,14,15]. To date, most of the limited studies in this area have focused mainly on temperature and heat transfer. We intend to generate the graph (Figure 5) as follows, taken from the literature [1] (2019 by Miller et al.) Figure 5 indicates that Anthocyanin from grapes is extracted exponentially as time passes into the wine, so wine color improves as time progresses. This also means the anthocyanin concentration is decreasing in grapes exponentially.
 
Figure 5  Extraction Profiles of Anthocyanin [1] 

Heat transfer is understood via an energy balance, with three key terms, as seen in
Equation 3. The first term is heat accumulation concerning a packet of fluid moving in space. The second term is heat conduction, as given by the Fourier equation. The third term is heat generated, added, or removed by the system,

𝜌Cv(𝐷T/Dt) = (Δ𝐻 ∗ 𝑉 ∗ 𝑑𝑆/𝑑𝑡 )- 𝑈𝐴(𝑇r― 𝑇𝑒𝑥𝑡𝑒𝑟𝑛𝑎𝑙)  (3)

Where, (Δ𝐻 ∗ 𝑉 ∗ 𝑑𝑆/𝑑𝑡 ) is Heat generated, where Δ𝐻 is overall enthalpy of reaction. dS/dt is entropy change, V is volume of reactor. Texternal the temperature of the external environment is that of coolant in the jacketed fermenter, or the ambient air for a barrel or unjacketed tank into the heat released in the area available for heat exchange, and the overall  heat transfer coefficient of the wine with the environment is U. Temperature profiles of jacket temperature and temperature of system (Tr) is to be controlled. A is overall contact area that is the area of the jacket wall.

 
Figure 6 Location of objective quality compounds in red grapes, adapted from ©1987 American Society for Enology and Viticulture. AJEV 38:120e127





 
Figure 7Internal and External diffusion during fermentation, Step 1: Solvent diffusion into the porous solid, Step 2: Solute dissolution into the solvent, Step 3: Dissolved solute diffusion to the particle surface, Step 4: Dissolved solute diffusion from the particle surface to the surrounding solvent. [10]


2.2 Fermentation Kinects

 
Figure 8 Comparison of a normal fermentation and Y-axis is the concentration of Biomass, Sugar, Ethanol in the wine at time (Zenteno 2010) [16] 




Fig. 8 shows the evolution of active biomass and ethanol concentration. The objective of this project was to replicate such research at York; the model computed a final ethanol concentration of 115 g/L, very similar to the values found in industrial wine fermentations. Additionally, maximum biomass concentrations were 5.5 g/L, and after 200 h of simulated fermentation, sugar was almost consumed, reaching 23 g/L. In a recent study, Coleman et al. (2007) [17] successfully predicted sluggish and stuck fermentations by manipulating culture temperature, nitrogen levels, and initial sugar concentrations. As stated by Coleman et al. (2007), sugar utilization is of the utmost importance.



Here we are assuming in red wine fermentation; the growth rate is proportional to cell concentration as cells double, referred as  to as "logarithmic growth," "exponential growth," or the "log phase." As the growth-limiting nutrient is exhausted, growth levels off, and biomass concentration reaches a steady-state, termed the "stationary" phase. Monod's original model does not account for cell deactivation or death. As cells stop growing due to lack of nutrients and senesce, active, cell concentration drops, typically known as the "death" or "inactivation" phase. The equations used in Simulation of Red Wine Fermentation, are shown below,

Let X be the biomass and P be the product using Substrate S (Sugar and Nutrients combined)
X is Yeast or Saccharomyces cerevisiae.

We have,

X+S  XS => P 

While Monod's original work was performed with bacterial cultures, it is equally applicable to yeast and range of other organisms. The Monod equations define cell growth and substrate utilization, but not product (e.g., Ethanol) formation. Setford 2017 [10] introduced product formation terms, with both growth-associated product formation (formation proportional to dX/dt) and non-growth associated product formation (formation proportional to X). Several researchers applied Monod style kinetics to the production of Ethanol by Saccharomyces cerevisiae. We used this general form, but added ethanol inhibition into yeast fermentation kinetics, with Ethanol inhibiting yeast growth. We also further explored mechanisms of product inhibition in yeast fermentations by incorporating ethanol inhibition on ethanol production rate and by introducing a more complex form of ethanol inhibition of yeast growth. Miller(2019a and 2019b) and also developed a Monod style model for alcoholic yeast fermentation, with yeast growing as they consumed hexoses. Generally, assumptions are made that Nutrients are one common entity, and Ethanol is produced as a product.

CONCLUSION–  

The models we intend to develop individually would need to account for both fermentation performance and phenolic extraction rates. At the same time, the models should serve their purpose as to provide critical insights into novel winemaking operations in the current scenario.  




                                     CHAPTER 3
METHODOLOGY


3.1] Phenolic Extraction
	
3.1.A) Assumptions – 

1.	Red wine fermentation in a stainless steel tank is assumed, well mixed, and with no external mixing and properties of a fluid part are those of water, fluid is incompressible, perfect solid-liquid diffusion.
2.	Heat transfer is taking place in the convective and conductive manner in between the solid "cap" and liquid "water." Anthocyanin molecule is "malvidin‐3‐glucoside", tannin has been assumed to be transporting as same as Anthocyanin.
3.	For initial conditions to vary one parameter at a time in the model, the process is isothermal, and concentration is varied, then concentration is constant, and the temperature is varied. "Cap" region is homogenous and well mixed.
4.	Volume is kept constant for the pilot study; as per literature [1], the pilot plant is 1500L. Reactor walls are ideal, and only heat transfer is between slurry and the jacket. 

3.1.B) Method and data/materials - 

1. In-field data gathering

•	As per the instructions, the real-time winemaking process was observed, data was gathered in the following manner 
•	Time was noted for crushing, filtering, and unit operation diagram was drawn.
•	Fermentors were observed, and details of fermenters were noted.
•	Men working to help around were interviewed to understand how the process is going and if there are any sudden complications.

  2. Infield data organization 
•	The gathered data was organized into table/charts, and a diagram was drawn to simplify the process. Literature was being gathered and organized.
•	Data was related to the objective and scope of this work, and the necessary changes were made. Data was made ready for the analysis.

  

3. Simulation planning
•	Equations and reactions were observed from past literature, and suitable software was identified where the mathematical models would be implemented. Simulink-Matlab was selected.
•	Each time care was taken to arrive at a fixed model to generated a specific outcome, the objective is to anticipate the quality of the product by controlling the input. 

 4. Carrying out simulation
•	Using Simulink, the equations were modeled.

 5. Data Comparison and Interpretations of Results
•	The graphs indicate that time and optimum conditions are related to wine quality, and the relationship between wine quality and initial parameters is explored.
•	Red wine fermentation is a simultaneous fermentation and solid-phase extraction process. Some parts of the resulting graphs are overlapping.
•	Fermentation conditions directly affect phenolic extraction rates, making quantitative modeling in a heterogeneous environment difficult. 
•	In this work, we developed simulations and process flow diagrams, which predicted the concentration and quality profiles.

3.1.C) Equations for modeling – 

For concentration profiles, anthocyanins we have the first-order equation as follows 

d[A]/dt = -k1[ΔA] (4)

Let A to be phenolic stored in grapes solids, and A1 and A2 be initial and final concentrations, ΔA = A2-A1
The typical anthocyanin molecule - malvidin three glucoside (Oenin) is selected. The reaction is the first order assuming k2 is small, i.e., A=>B. We obtained the following chart from comsol simulation, B is phenolics in the wine, B increases as A decreases.[Zenteno 2010 and Setford 2017] 
Rate constant k = 2.2 L/mol


Volume V is assumed constant. Co – Oenin Concentration, CB- Biomass concentration. 




Rate of anthocyanin extraction (to produce wine color)  = -raCOCB

Subscript - 'i’ represents initial concentration. We assume color, ethanol changes mainly with anthocyanin and biomass concentration changes. 


dCO/dt = -kCOCB-CO

Similarly, biomass, ethanol, and wine color relationship are defined with anthocyanin concentration as a second-order reaction. (E – ethanol, C – color)
dCB/dt = -kCOCB+(CBi-CB)
dCE/dt = -kCOCB-CEi
dCC/dt = -kCOCB-CCi (5)


3.2] Fermentation Kinetics:

3.2.A) Simulation of batch fermentation reactor or 'Fermenter' in MATLAB:

Assumptions

1) Sugar consumptions for ethanol and biomass production are
independent [16]
2)No Competitive inhibition is exerted between glucose and fructose,
especially at high, total sugar concentration [16]
3) Ethanol does not inhibit sugar consumption.
4) CO2 accumulation in the gas phase is negligible.

3.2.B) Process to start the simulation

As per the literature review (Zenteno 2010), Monod Kinetics has been used for all earlier simulations. The essential variables of the system are the dry biological mass or cell X, substrate concentration S, and product concentration P. The reactor volume V is well mixed. V The growth is assumed to follow the kinetics described by the Monod equation X equation. S Substrate consumption is related to cell growth by a constant yield YX/S P S. Product formation is the result of both growth and non-growth associated rates of production. The lag and decline phases of cell growth are not included in the model. Figure 9, is an information flow diagram first plotted to chart the code in MATLAB. Using figure 9, two script-files were generated. 

1) batch_fermentation function. (fx-function file)
2) initial values and graphical plots script. (matlab file)

These equations were used in first file-

Equations 6
Mass Balance- 

Rate of accumulation = 	Rate of Production
For Biomass V*(dX/dt) = 	rx*V
For Substrate V*(dS/dt) = 	rs*V
For Product V*(dP/dt) = 	rp*V 

Following Equations were used to Simulate Batch Fermentation Kinetics in Matlab.

 
  - Equations 3.1 – 1,2,3,4
 
Above equations represent Reaction rates for Cells, Substrate, Production, and the final equation  is the Monod Kinetics relation, respectively. Whereas,

k1 – is the non-growth associated coefficient and
k2 – is the coefficient associated with growth.


 
Figure 9 Process Information Flow Diagram for Fermentation Kinetics Model


The Matlab and Simulink® Model was designed to represent the model structure and mass balance equations for Monod Kinetics into a bioreactor and is shown in Fig. 9. Shaded boxes represent the reaction rates, which have been lumped into subsystems. To solve the system of ordinary differential equations (ODEs) and to estimate unknown parameters in the reaction rate equations, the interface parameter estimation was used. This program allows the user to decide which parameters to estimate and which type of ODE solver and optimization technique to use. The user imports observed data as it relates to the input, output, or state data of the Simulink® model. With the imported data as reference, the user can select options for the ODE solver (fixed step/variable) step, stiff/non-stiff, tolerance, step size) as well options for the optimization technique (nonlinear least squares/simplex, maximum number of iterations, and tolerance). With the selected solver and optimization method, the unknown independent, dependent, and/or initial state parameters in the model are determined within set ranges. For this study, nonlinear least squares regression was used with Matlab ode45, which is a Runge–Kutta [3, 4] formula for non-stiff systems. The steps of nonlinear least squares regression are as follows:
1. Guess initial values for parameters: Substrate and biomass concentration, dilution factor.
2. Solve for dy(t)/dt using Simulink simulation and iterative solver (ode45).

 
Figure 8 Nomenclature for Process Modelling Diagram of Fermentation Kinetics.




3.2.C) Simulink Model for Wine Aging:

Following equations were modelled in Simulink,

X + S  XS => X + P
(k1 is forward rate for first reaction k-1 is backward reaction rate and k2 is rate of reaction 2)

s = [S], p = [P], x= [X], c = [XS]

ds/dt = -k1*x*s + k-1(X0-x)
dp/dt = k2(X0-x)
dx/dt = -k1*x*s + k-1(X0-x) + k2(X0-x) (7)

The zero subscripts indicates initial values, and reaction constants are assumed and corresponding to from the literature Miller (2019a) [1]

CHAPTER 4
RESULTS AND DISCUSSIONS

4.1 On-site work –

    4.1.1 Practical observations

•	Grape Harvesting process had many material losses, which can be minimized if further processes were optimized, as shown in Figure 9, the distances of 'units' have been a factor to slow processes.
•	The general issues were - The variation of wine quality and increasing diversity of taste and color in the Red Wine category, which could be resolved by optimizing phenolic extraction.[16]
•	Red wine had varying alcohol levels, which could be addressed by analyzing fermentation kinetics.
•	Since cooling due to jacket is effective, the temperature is maintained and assumed constant at 288K. (15oC).

4.1.2 Wine Faults

At York engineers, sommeliers, tasters, and wine judges talk about wine faults.  And it's definitely a topic that should be taken seriously.  Again, as a modern, optimistic winemaker, we feel that the overall state or quality of wines from around the world is exceptional these days.  We are aimed that winemakers around these days.  Who are capable of crafting high-quality, problem-free wines.  We saw a wide cross-section of wines from everywhere.  And there are still a lot of strange, bizarre, faulty wines out there.[17]

4.1.3 Data Gathered for modeling

Table 2 – Data Gathered for model development.
Fermentor working volume 	1500 L (Pilot plant) 
Initial temperature 	27°C
Jacket temperature (Constant)	15°C – 288K
Initial unreleased anthocyanin concentration [Miller 2019a 1]	840mg/L
Initial ethanol concentration 	10.5 % (v/v) 
Rate Constant [Setford 2017]	2.2 L/mol
Initial Biomass	0.15 g/L
Initial Wine Color (Red)	Assumed minimum
Enzyme Kinetics Constants 	Suitable Values were assumed. (unity)

4.2.Phenolic Extraction:

The following profiles (indicated by figures 10 and 11) show how biomass and ethanol concentrations are interrelated. Since biomass produces Ethanol, as shown in 2.2 Fermentation Kinetics. Therefore biomass plot from Figure 11 overlaps with biomass, as shown in figure 10. In a way, the model developed as per simplified kinetics assumed Anthocyanin in grapes is 50mol/L and diminishes to sub-zero levels after one week of fermentation. It follows the pattern in Miller 2019a and Setford 2017. [1,10] 
Anthocyanin extraction rate slows markedly, both over the 24‐hr extraction period and between Days 2 and 3 until day six. As Anthocyanin in grapes decreases, by day six, it drops significantly, and wine color improves gradually until wine is aged after fermentation. These concentration and time profiles are in accordance with experimental and practical observations. However, their accuracy is still being checked.
Despite the above limitations, we believe this work represents a major step forward for the understanding of phenolic extraction in red wine processing, a phenomenon that has long eluded engineering analysis. Predictions from this model are in robust agreement with historical data, and markedly superior to the well‐mixed style models currently in use in the wine industry to predict phenolic extraction rates.

 
Figure 10 Phenolic Extraction Profiles and Wine Color Variation, Ethanol Concentration vs Time
 
Figure 11 Biomass Concentration w.r.t time in Grape Solids


4.3 Fermentation Kinects :

Figure 12 shows that substrates are consumed rapidly, and thus biomass concentration increases from 0.15g/L to 0.2g/L, its maxima on the first day itself. If we continue to add nutrients at a slow constant rate, a steady-state concentration will be reached over time, as shown. This simulation considers biomass evolution, nutrient consumption (glucose, fructose, and nitrogen), and the production of Ethanol and CO2. The work of  Zenteno 2010 [16] shows Biomass concentration 0.18 g/l, and substrates are Nutrients, which includes N–NH4, Mg, Fe, Co, Mn, I, Ni, and Zn. The best wine color production potential was obtained at a natural substrate concentration of 50 g/L without nutrient addition, as shown in the figure below, where yeast concentration drops as the steady supply is absent but stabilizes and slowly diminishes as available natural nutrients gradually decrease over time. 
The slope of the substrate or nutrients curve for the first day is lower than yeast, confirming the first order profile of them and Monod Kinetics for yeast. As shown in Figures 10 and 11, yeast concentration is an indicator of ethanol concentration.
 
 
Figure 12 Figures showing Biomass and Substrate(above) and Natural Yeast response (below)



4.4 Wine aging and wine quality:

The construction and study of process models capable of predicting the wine aging process during the prolonged storage phase would be of benefit to a range of wine research initiatives. It is likely that insights gained from this process would assist in deriving similar aging models for other stages of the winemaking process, such as the extraction of phenolic compounds for improving wine aroma (and wine color) upon the addition of wood chips or during micro-oxygenation and barrel aging processes that also have a significant impact on the quality and sensory properties of the finished wine. 

Following the model equations (7), assuming unity values, we came up with the following model in Simulink (figure 13), and the result of the run is shown in figure 14 as obtained. Since day zero of wine aging, we can see the nutrients rapidly falling as ethanol level falls due to Le-Chatelliers principal as yeast consume too many nutrients, and since Ethanol is already there, it drops. From fraction 1 to 0.8, basically 10% to 8% , and then reaches a steady state. Aroma meanwhile improves starting from zero to a perfect wine, after day 14, possibly and until bottling.


The following table is generated after comparing all figures from 10-14.


Table 3 – Parameter to anticipate the final product [3,4,10]
Parameter Change	Effect on Final Product
Rise (++)  in [Nutrients]	More Ethanol more biomass, poor aroma
Fall (--) in [Nutrients]	Optimum Ethanol, less biomass, better aroma
[Anthocyanin in Grape Solids] ++	Wine coloration achieved sooner
[Anthocyanin in Grape Solids] -- 	Wine coloration achieved during aging





 
Figure 13 Wine aging - Simulink Model
 
Figure 14 Wine Aging Graph, Ratio vs Time.
 
CONCLUSIONS


The model presented in this article represents well the complexity of the temperature dynamics observed in a wine fermentation tank, using Anthocyanin remaining in the grape solid cap region. For example, simulated plots of simplified extraction profiles were similar to those recorded by experimental work previously done. When fermentations were simulated with the cooling system, the concentration gradient reached a steady state in 30 hours. Additionally, when low initial concentrations of yeast were used, sluggish fermentations were predicted, as would be expected in a real wine fermentation with deficient yeast concentrations. The model can be easily adapted to design and assess control strategies to avoid poor wine quality in large wine fermentation tanks, where temperature gradients are more significant. Our future efforts will be directed in designing such control strategies.

The development of engineering models, as described above, dissected the synthesis and extraction phenomena associated with wine fermentation. These models would also provide insights into novel fruit and wine process operations that might enhance (or diminish) key wine quality attributes, such as optimizing skin extraction while minimising seed extraction. Furthermore, such models may present new opportunities for equipment design, where mixing operations are improved. The ability to predict and optimise the rate and extent of phenolic extraction during normal fermentative maceration by manipulating process variables such as concentration and mixing operations removes the need for winemakers to use advanced maceration techniques, thereby decreasing the cost of production and improving the overall efficiency of the winery through optimising tank space and minimizing energy consumption.
 
REFERENCES

REFERENCES

[1] Miller KV, Noguera R, Beaver J, Oberholster A, Block DE. A combined phenolic extraction and fermentation reactor engineering model for multiphase red wine fermentation. Biotechnology and Bioengineering. (2019a);1–8.  https://doi.org/10.1002/bit.27178

[2] Boulton, R. B., Singleton, V. L., Bisson, L. F., & Kunkee, R. E. (1996). Principles and practices of winemaking. New York, NY: Chapman & Hall. https://doi.org/10.1007/978‐1‐4757‐6255‐6


[3] Konrad V. Miller, David E. Block, A Review of Wine Fermentation Process Modeling, Journal of Food Engineering (2019b), https://doi.org/10.1016/j.jfoodeng. 2019.109783

[4] Rhim, J. W., Nunes, R. V., Jones, V. A., & Swartzel, K. R. (1989). Kinetics of color change of grape juice generated using linearly increasing temperature. Journal of Food Science, 54(3), 776–777. https://doiorg/10.1111/j.1365‐2621.1989.tb04710.x

[5] Boulton, R.B., V.L. Singleton, L.F. Bisson, and R.E. Kunkee. 1996. Principles and practices of winemaking. Chapman and Hall, New York.

[6] Lerno, L., Reichwage, M., Ponangi, R., Hearne, L., Block, D. E., & Oberholster, A. (2015). Effects of Cap and Overall Fermentation Temperature on Phenolic Extraction in  Cabernet Sauvignon Fermentations. American Journal of Enology and Viticulture, 66(4), 444–453. doi:10.5344/ajev.2015.14129

[7] Miller, K. V., Oberholster, A., & Block, D. E. (2018). Creation and Validation of a Reactor Engineering Model for Multi-phase Red Wine Fermentations. Biotechnology and Bioengineering. doi:10.1002/bit.26874

[8]  Kosseva, M. R. (2017). Chemical Engineering Aspects of Fruit Wine Production. Science and Technology of Fruit Wine Production, 253–293. doi:10.1016/b978-0-12-800850-8.00006-5

[9] Moresi, M. (1989). Optimal Fermenter Design for White Wine Production. Biotechnology Applications in Beverage Production, 107–125. doi:10.1007/978-94-009-1113-0_9



[10] Patrick C. Setford a, David W. Jeffery a, b, Paul R. Grbin a, Richard A. Muhlack (2017) Factors affecting extraction and evolution of phenolic compounds during red wine maceration and the role of process modelling, Trends in Food Science & Technology 69 (2017) 106-117, https://doi.org/10.1016/j.tifs.2017.09.005 0924-2244

[11] Ana Jurinjak Tušek, Anita Šalić & Bruno Zelić (2017) Mathematical modelling of polyphenol extraction by aqueous two-phase system in continuously operated macro- and micro-extractors, Separation Science and Technology, 52:5, 864-875, DOI: 10.1080/01496395.2016.1273953

[12] Ciani Maurizio, Morales Pilar, Comitini Francesca, Tronchoni Jordi, Canonico Laura, Curiel José A., Oro Lucia, Rodrigues Alda J., Gonzalez Ramon , Non-conventional Yeast Species for Lowering Ethanol Content of Wines , Frontiers in Microbiology, 7 , DOI=10.3389/fmicb.2016.00642    ISSN=1664-302X   

[13] Zanoni, B., Siliani, S., Canuti, V., Rosi, I. and Bertuccioli, M. (2010), A kinetic study on extraction and transformation phenomena of phenolic compounds during red wine fermentation. International Journal of Food Science & Technology, 45: 2080-2088. doi:10.1111/j.1365-2621.2010.02374.x

[14] Lerno, L., Reichwage, M., Panprivech, S., Ponangi, R., Hearne, L., Oberholster, A., & Block, D. E. (2017). Chemical gradients in pilotscale cabernet sauvignon fermentations and their effect on phenolic extraction. American Journal of Enology and Viticulture, 68, 401–411. https://doi.org/10.5344/ajev.2017.16104

[15] Schmid, F., Schadt, J., Jiranek, V., & Block, D. E. (2009). Formation of temperature gradients in large‐ and small‐scale red wine fermentations during cap management. Australian Journal of Grape and Wine Research, 15(3), 249–255. https://doi.org/10.1111/j.1755‐0238.2009. 00053.x

[16] M. Isabel Zenteno, J. Ricardo Pérez-Correa, Claudio A. Gelmi, Eduardo Agosin, Modeling temperature gradients in wine fermentation tanks, Journal of Food Engineering, Volume 99, Issue 1, 2010, Pages 40-48, ISSN 0260-8774, https://doi.org/10.1016/j.jfoodeng.2010.01.033.

[17] Carrillo-Reyes, J., Albarrán-Contreras, B.A. & Buitrón, G. Influence of Added Nutrients and Substrate Concentration in Biohydrogen Production from Winery Wastewaters Coupled to Methane Production. Appl Biochem Biotechnol 187, 140–151 (2019). https://doi.org/10.1007/s12010-018-2812-5





PROJECT DETAILS
   
Student Details
Student Name	Paritosh  Kulkarni
Register Number	160903018	Section / Roll No	6
Email Address	Pari2798@gmail.com
Phone No (M)	7676587484

Project Details
Project Title	Analysis of phenolic extraction and fermentation kinetics for red wine production
Project Duration	16 Weeks	Date of reporting	1 Feb 2020
	
Organization Details
Organization Name	York Winey Pvt.Ltd
Full postal address with pin code	Gat No.15, 2, Gangapur-Savargaon Rd,
Gangavarhe,
Nashik, Maharashtra 422222
Website address	http://www.yorkwinery.com/
	
Supervisor Details
Supervisor Name	Mr. Sachin Darade
Designation	HR and Marketing Manager
Full contact address with pin code	Gat No.15, 2, Gangapur-Savargaon Rd,
Gangavarhe,
Nashik, Maharashtra 422222
Email address	sachin@yorkwinery.com	Phone No (M)	+91 9423970247
	
Internal Guide Details
Faculty Name	Dr. S Shanmuga Priya
Full contact address with pin code	Department of Chemical Engineering, 
Manipal Institute of Technology, Manipal – 576 104 
(Karnataka State), INDIA
Email address	shan.priya@manipal.edu



