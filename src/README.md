Logical Circuit verilog code for detecting abnormality in body functions.
In the phase1 of the project by analyzing the ph of the blood and blood type classification, abnormality in blood can be detected.
just send the blood type and ph data to get the warning result.
BloodAbnormalityDetector uses BloodTypeClassification and BloodPhAnalyzer.

In fallingDetector module, by comparing the falling data sensor of the factory that created the sensor and the data sent by the user ,
it can be detected wether the user is falling or not.
FallingDetector uses 8bitComparator.

by using tempretureAbnormalityDetector and blooadPressureAbnormalityDetector it can be detected wether user has abnormal tempreture and 
blood pressure or not.
tempretureAbnormalityDetector uses tempretureCalculator and tempretureAnalyzer module.
blooadPressureAbnormalityDetector uses PrityErrorChecker and PressureAnalyzer.
PrityErrorChecker checks if the data sent to the sensors is correct or not.

GlycemicIndexCalculator checks the blood glycemic by first calculating the absolute value of the data sent to the sensor and 
counting the number of 1bits in the data.
