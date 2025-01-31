# Overview
CalculateElongation is an IDL function that calculates the elongation angle between an observer position, the Sun, and another (x,y) point using the law of cosines. 
The function ensures numerical stability and returns the elongation angle in degrees.

# Function Definition
FUNCTION CalculateElongation, r_obs_pos, r_obs_sun, r_sun_pos

# Parameters
- r_obs_pos: Scalar representing the distance between the observer and the target position (x,y).
- r_obs_sun: Scalar representing the distance between the observer and the Sun.
- r_sun_pos: Scalar representing the distance between the Sun and the target position (x,y).

# Returns
- elongation: The elongation angle in degrees.

# Formula
- The function calculates the elongation angle using the law of cosines. The result is then converted from radians to degrees.

# Features
- Numerical Stability: Ensures cos_elongation remains within the valid range [-1.0,1.0] to prevent errors in the ACOS function.

# Usage
1. Load the Procedure
   
To use the function, load the script in your IDL environment:

.r CalculateElongation.pro

2. Compute elongation angle:
   
elongation = CalculateElongation(r_obs_pos, r_obs_sun, r_sun_pos)

PRINT, 'Elongation Angle: ', elongation

# License
This script is open-source and free to use for research and academic purposes. If you use it in research, please provide appropriate attribution.

# Author
Eduardo Tirado-Bueno, 
Instituto Nacional de Astrofísica Óptica y Electrónica,
Last Update: January 2025

For inquiries, feel free to reach out (etirado@inaoe.mx)

