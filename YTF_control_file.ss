# Yellowtail Flounder Stock Synthesis Control file

0 # Don't read the weight-at-age file (there isn't one)
1 # Number of growth patterns (morphs)
1 # Number of plattons within a morph

# Settlement timing for recruits and distribution
4 # Recruitment distributed to 1 area
1 # SPR global
1 # Number of recruitment settlement events per year
0 # Placeholder
# Growth info: Growth pattern/Month/Area/Age at Settlement
1 1 1 0

# Movement: only if Nareas > 1

# Time blocks
1 # Number of block patterns
2 # Number of pattern per block (here 2 pattern for 1 block)
1935 1975 # Start and end year for block (historic fishing with foreign fleet)
1976 2011 # (after end of foreign fishing)

# Auto-generation
1 # Env/blcok/deviation adjustment method for time varying param = warning relative to base param bounds
# Time varying param info: biology/spawn-recruitment/catchability/tag/selectivity
0 0 0 0 0

# Natural Mortality
0 # Use age independent natural mortality (SAW 54 used 0.3 based on average Lorenzen over all ages, see SAW 54 pg 358)

# Growth
1 # Use von Bertalanffy ??? arbitrary
1 # Age (Amin) for L1
999 # Age (Amax) for L2 = Linfinity
-999 # Growth in plus group
0 # Placeholder
0 # Std dev added to length-at-age
4 # CV pattern is lognormal dist. of size-at-age ??? since age comp available

# Maturity-Fecundity
2 # Age logistic maturity option ??? since age comp available
1 # First mature age (SAW 54 Figure B10 shows age/length at 50% maturity between 1.5-2.5yr)
1 # Fecundity option f= w(a+b*w) ??? irrelevant if weight-at-age file used ???


# Hermaphroditism
0 # Not used

# Parameter offset method
1 # directly assign offset param ??? I don't really understand the nuances of this option

# Catch multiplier - not used in data
# Ageing Error parameters - not used in data
# Sex ratio - not used since data is for combined sexes

# Growth/Maturity-Fecundity Parameters
# Lo 	Hi 		Init 	Prior 	Prior_SD 	Prior_type	PHASE 	env_link 	dev_link 	dev_minyr 	dev_maxyr 	dev_PH 	Block 	Parameter
#??? How do you figure out what parameters to use? How do you choose informative starting values? Why not Natural mortality? Why no params for males set Init to 0 and phase to negative see page 94?
1		45		22		22		0			0			-2		0			0			0			0			0			1	#L_Amin_Fem_B1
1		45		22		22		0			0			-2		0			0			0			0			0			2	#L_Amin_Fem_B2
10		50		40		40		0			0			-4		0			0			0			0			0			1	#L_Amax_Fem_B1
10		50		40		40		0			0			-4		0			0			0			0			0			2	#L_Amax_Fem_B2
0.05	1.5		0.97	0.97	0			0			-4		0			0			0			0			0			1	#VonBert_K_Fem_B1
0.05	1.5		0.97	0.97	0			0			-4		0			0			0			0			0			2	#VonBert_K_Fem_B2
0.05	0.25	0.1		0.1		0			0			-3		0			0			0			0			0			1   #CV_young_Fem_B1  # Variability for size at age <= Amin
0.05	0.25	0.1		0.1		0			0			-3		0			0			0			0			0			2   #CV_young_Fem_B2  # Variability for size at age <= Amin
0.05	0.25	0.1		0.1		0			0			-3		0			0			0			0			0			1   #CV_old_Fem_B1  # Variability for size at age >= Amax
0.05	0.25	0.1		0.1		0			0			-3		0			0			0			0			0			2   #CV_old_Fem_B2  # Variability for size at age >= Amax
-3		4		3.23	3.23	0			0			-3		0			0			0			0			0			1	#WtLen_scale_Fem_B1 #??? I don't understand where this info is coming from
-3		4		3.23	3.23	0			0			-3		0			0			0			0			0			2	#WtLen_scale_Fem_B2
20		35		27.4	27.4	0			0			-3		0			0			0			0			0			1	# Mat_50_Fem_B1
20		35		27.4	27.4	0			0			-3		0			0			0			0			0			2	# Mat_50_Fem_B2
-3		3		-0.25	-0.25	0			0			-3		0			0			0			0			0			1	#Mat_slope_Fem_B1
-3		3		-0.25	-0.25	0			0			-3		0			0			0			0			0			2	#Mat_slope_Fem_B2
-3		3		1		1		0			0			-3		0			0			0			0			0			1	#Eggs_alpha_Fem_B1
-3		3		1		1		0			0			-3		0			0			0			0			0			2	#Eggs_alpha_Fem_B2
-3		3		0		0		0			0			-3		0			0			0			0			0			1	#Eggs_beta_Fem_B1
-3		3		0		0		0			0			-3		0			0			0			0			0			2	#Eggs_beta_Fem_B2

# Hermaphroditism Parameters - NONE

# Recruitment distribution Parameters (described page 77 of manual) ??? are these really necessary
# Lo 	Hi 		Init 	Prior 	Prior_SD 	Prior_type	PHASE 	env_link 	dev_link 	dev_minyr 	dev_maxyr 	dev_PH 	Block 	Parameter
0		0		0		0		0			0			-4		0			0			0			0			0		1		# RecruitDist_GrowthPattern1_B1
0		0		0		0		0			0			-4		0			0			0			0			0		2		# RecruitDist_GrowthPattern1_B2
0		0		0		0		0			0			-4		0			0			0			0			0		1		# RecruitDist_Area1_B1
0		0		0		0		0			0			-4		0			0			0			0			0		2		# RecruitDist_Area1_B2
0		0		0		0		0			0			-4		0			0			0			0			0		1		# RecruitDist_Month1_B1
0		0		0		0		0			0			-4		0			0			0			0			0		12		# RecruitDist_Month1_B2


# Cohort growth dev base Parameters ??? not sure where this is comming from
# Lo 	Hi 		Init 	Prior 	Prior_SD 	Prior_type	PHASE 	env_link 	dev_link 	dev_minyr 	dev_maxyr 	dev_PH 	Block 	Parameter

# Movement Parameters - NONE
# Age Error Parameters - NONE
# Catch Multiplier Parameters - NONE

# Sex Ratio Parameters (fraction femail by growth pattern) ??? why needed, no parameter above specifies need for this parameter?
# Lo 	Hi 			Init 	Prior 	Prior_SD 	Prior_type	PHASE 	env_link 	dev_link 	dev_minyr 	dev_maxyr 	dev_PH 	Block 	Parameter
1e-06	0.999999	0.5		0.5		0.5			0			-99		0			0			0			0			0		1		#FracFemale_B1
1e-06	0.999999	0.5		0.5		0.5			0			-99		0			0			0			0			0		2		#FracFemale_B2

# Seasonal Biology Parameters (NONE here)
0 0 0 0 0 0 0 0 0 0



# Spawner-Recruit
3 # Beverton-Holt with 2 parameters log_R0 and steepness_h
0 # Don't use steepness in initial equilibrium R calc.
0 # Placeholder

# Spawner-Recruit Parameters ??? I don't understand the regime & autocorrelation, see pg 103 of manual
# Lo 	Hi 		Init 	Prior 	Prior_SD 	Prior_type	PHASE 	env_link 	dev_link 	dev_minyr 	dev_maxyr 	dev_PH 	Block 	Parameter
3		31		9		10.3	10			0			1		0			0			0			0			0		1		# log_R0_B1
3		31		9		10.3	10			0			1		0			0			0			0			0		2		# log_R0_B2
0.2		1		0.9		0.9		0.05		1			-4		0			0			0			0			0		1		#steepness_h_B1
0.2		1		0.9		0.9		0.05		1			-4		0			0			0			0			0		2		#steepness_h_B2
0		2		0.3		0.8		0.8			0			-99		0			0			0			0			0		1		#sigma_R_B1
0		2		0.3		0.8		0.8			0			-99		0			0			0			0			0		2		#sigma_R_B2
-5		5		0		0		1			0			-4		0			0			0			0			0		1		#SR_Regime_B1
-5		5		0		0		1			0			-4		0			0			0			0			0		2		#SR_Regime_B2
0		0		0		0		0			0			-99		0			0			0			0			0		1		#SR_Autocorrelation_B1
0		0		0		0		0			0			-99		0			0			0			0			0		2		#SR_Autocorrelation_B2


# Recruitment deviation
2 # Rec devs not constrained to sum to zero
1935 # first year of main rec devs ??? how to pick?
2011 # Last year of main rec devs
3 # Phase of main rec devs
1 # Advanced options:
  0 # No early rec dev
  6 # Phase for early rec dev
  0 # Phase for forecast recruitment
  1 # Forecast rec devs lambda
  1940 # Last year with no bias adjustment # Begin of ramp #??? how pick years?
  1972 # First year with full bias adjustment # Begin of plateau
  2010 # Last year with full bias adjustment
  2011 # First recent year with full bias adjustment
  0.8 # Max bias adjustment
  0 # Period for cycles in recruitment (see params below)
  -5 # min rec dev
  5 # max rec dev
  0 # Number of rec devs to read
# End advanced options


# Fishing Mortality Method 
0.3 # F ballpark summed across fleets
-1935 # F ballpark year, negative disables
3 # Hybrid F method
4 # Max F
3 # Number of tuning iterations for hybrid F method

# Initial Fishing Mortality Param








