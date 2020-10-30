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
1 # Number of pattern per block (here 1 pattern for 1 block)
1935 2011 # Start and end year for block (could consider having second pattern to break into fishing with foreign fleet & after)

# Auto-generation
1 # Env/blcok/deviation adjustment method for time varying param = warning relative to base param bounds
# Time varying param info: biology/spawn-recruitment/catchability/tag/selectivity
0 0 0 0 0

# __________________________M, GROWTH, FECUNDITY, REC, MVMT_______________________________________________________________________________
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
# Lo 	Hi 		Init 	Prior 	Prior_SD 	Prior_type	PHASE 	env_link 	dev_link 	dev_minyr 	dev_maxyr 	dev_PH 	Block 	Block_Fxn 	Parameter
#??? How do you figure out what parameters to use? How do you choose informative starting values? Why not Natural mortality? Why no params for males set Init to 0 and phase to negative see page 94?
0		  1		  0.3		0.3		      0			    0			   -3		     0			0			0			0			0			0	0			# NatM_p_1_Fem_GP_1 	= Natural mortality estimated in Phase 3 ??? See table B7 page 407 of SAW54
1		  45		22		22		      0			    0			   -2		     0			0			0			0			0			0	0			# L_at_Amin_Fem_GP_1 # Eq. 7ish SAW 54 page 364, calc length at age 0
10    50		40		40		      0			    0			   -4		     0			0			0			0			0			0	0			# L_at_Amax_Fem_GP_1
0.05  1.5		0.97	0.97	      0			    0			   -4		     0			0			0			0			0			0	0			# VonBert_K_Fem_GP_1
0.05	0.25	0.1		0.1		      0			    0			   -3		     0			0			0			0			0			0	0   	# lnSD_young_Fem_GP_1  # Variability for size at age <= Amin
0.05	0.25	0.1		0.1		      0			    0			   -3		     0			0			0			0			0			0	0   	# lnSD_old_Fem_GP_1
-3    3     4.0023e-06 4.0023e-06 0     0        -3        0      0     0     0     0     0 0     # WTlen_1_Fem_GP_1  # length-weight SAW54 page 364
-3		4		  3.23	3.23	      0			    0			   -3		     0			0			0			0			0			0	0			# WTlen_2_Fem_GP_1
20		35		27.4	27.4	      0			    0			   -3		     0			0			0			0			0			0	0			# Mat_50%_Fem_GP_1 # in stock assess
-3		3		  -0.25	-0.25	      0			    0			   -3		     0			0			0			0			0			0	0			# Mat_slope_Fem_GP_1
-3		3		  1		  1		        0			    0			   -3		     0			0			0			0			0			0	0			# Eggs/kg_intercept_Fem_GP_1
-3		3		  0		  0		        0			    0			   -3		     0	    0			0			0			0			0	0			# Eggs/kg_slope_wt_Fem_GP_1
# prior type = 0 = prior not used

# Hermaphroditism Parameters - NONE

# Recruitment distribution Parameters (described page 77 of manual) ??? are these really necessary
# Lo 	Hi 		Init 	Prior 	Prior_SD 	Prior_type	PHASE 	env_link 	dev_link 	dev_minyr 	dev_maxyr 	dev_PH 	Block 	Block_Fxn	Parameter
# 0		0		0		0		0			0			-4		0			0			0			0			0		1		0			# RecruitDist_GrowthPattern1
# 0		0		0		0		0			0			-4		0			0			0			0			0		1		0			# RecruitDist_Area1
# 0		0		0		0		0			0			-4		0			0			0			0			0		1		0			# RecruitDist_Month1


# Cohort growth dev base Parameters ??? not sure where this is comming from
# Lo 	Hi 		Init 	Prior 	Prior_SD 	Prior_type	PHASE 	env_link 	dev_link 	dev_minyr 	dev_maxyr 	dev_PH 	Block 	Block_Fxn	Parameter
0.1		10		1		1		1			0			-1		0			0			0			0			0		0		0			# CohortGrowDev

# Movement Parameters - NONE
# Age Error Parameters - NONE
# Catch Multiplier Parameters - NONE

# Sex Ratio Parameters (fraction femail by growth pattern) ??? why needed, no parameter above specifies need for this parameter?
# Lo 	Hi 			Init 	Prior 	Prior_SD 	Prior_type	PHASE 	env_link 	dev_link 	dev_minyr 	dev_maxyr 	dev_PH 	Block 	Block_Fxn	  Parameter
1e-06	0.999999	0.5		0.5		0.5			       0			-99		       0			  0			    0			      0			      0		0		        0			  #FracFemale_GP1

# Seasonal Biology Parameters (NONE here)
0 0 0 0 0 0 0 0 0 0 # This is where my control file breaks and I don't know why???????????????????????????


# __________________________RECRUITMENT_______________________________________________________________________________
# Spawner-Recruit
3 # Beverton-Holt with 2 parameters log_R0 and steepness_h
0 # Don't use steepness in initial equilibrium R calc.
0 # Placeholder

# Spawner-Recruit Parameters ??? I don't understand the regime & autocorrelation, see pg 103 of manual
# Lo    Hi 		Init 	Prior 	Prior_SD 	Prior_type	PHASE 	env_link 	dev_link 	dev_minyr 	dev_maxyr 	dev_PH 	Block 	Block_Fxn	Parameter
3		    31		9		  10.3	   10			   0			      1		     0			0			      0			      0			0		0		0			# log_R0
0.2		   1		0.9		0.9		   0.05		   1			     -4		     0			0			      0			      0			0		0		0			#steepness_h # ??? hard to estimate with rec devs, try fixing but letting rec devs vary, estimate R0 and fix everything else, Fishlife Jim Thorson R package
0		     2		0.3		0.8		   0.8			 0			     -99		   0			0			      0			      0			0		0		0			#sigma_R
-5		   5		0		  0		     1			   0			     -4		     0			0			      0			      0			0		0		0			#SR_Regime
0		     0		0		  0		     0			   0			     -99		   0			0			      0			      0			0		0		0			#SR_Autocorrelation

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

# __________________________FISHING MORTALITY SETUP_______________________________________________________________________________
# Fishing Mortality Method 
0.3 # F ballpark summed across fleets
-1935 # F ballpark year, negative disables
3 # Hybrid F method
4 # Max F
3 # Number of tuning iterations for hybrid F method

# Initial Fishing Mortality Param ??? needed?
# Lo 	Hi 		Init 	Prior 	Prior_SD 	Prior_type	PHASE 	env_link 	dev_link 	dev_minyr 	dev_maxyr 	dev_PH 	Block 	Block_Fxn	Parameter
# 0		3		0.1		0		99			0			1		0			0			0			0			0		0		0			#InitF_Fleet1				
# 0		3		0.1		0		99			0			1		0			0			0			0			0		0		0			#InitF_Fleet2				
# 0		3		0.1		0		99			0			1		0			0			0			0			0		0		0			#InitF_Fleet3				
# 0		3		0.1		0		99			0			1		0			0			0			0			0		0		0			#InitF_Fleet4				

# __________________________Q SETUP FOR CPUE INDICES_______________________________________________________________________________
# Catchability Setup for fleets with CPUE or survey data ??? use analytical solution rather than estimating?
# Fleet   Link_type  Link_info extra_se  biasadj float fleetname   
3         1           0         0       0       1     # spring_survey
4         1           0         0       0       1     # fall_survey 
-9999     0           0         0       0       0     # End line

# Catchability parameters
# Lo  Hi    Init  Prior   Prior_SD  Prior_type  PHASE   env_link  dev_link  dev_minyr   dev_maxyr   dev_PH  Block   Block_Fxn Parameter
-25     25     -7     0         1       0           -1        0         0         0           0          0      0         0         # spring_survey logQ
-25     25     -7     0         1       0           -1        0         0         0           0          0      0         0         # fall_survey logQ

# __________________________LENGTH-BASED SELECTIVITY SETUP_______________________________________________________________________________
# Selectivity and Discard Setup # Used logistic selectivity - First column = 0 so not used # specified correctly??? 
# Pattern   Discard   Male  Special   Label
0              2         0     0          # Fleet 1 com_domestic ??? Assume discard mortality determined by 4 param
0              0         0     0          # Fleet 2 com_foreign
0              0         0     0          # Fleet 3 spring_survey
0              0         0     0          # Fleet 4 fall_survey

# __________________________AGE-BASED SELECTIVITY SETUP_______________________________________________________________________________
# Age Selectivity Setup #??? set up correctly? Logistic selectivity
# Pattern   Discard   Male  Special   Label
12              0         0     0          # Fleet 1 com_domestic
12              0         0     0          # Fleet 2 com_foreign
12              0         0     0          # Fleet 3 spring_survey
12              0         0     0          # Fleet 4 fall_survey

# Length-based Selectivity Parameters
# Lo  Hi    Init  Prior   Prior_SD  Prior_type  PHASE   env_link  dev_link  dev_minyr   dev_maxyr   dev_PH  Block   Block_Fxn Parameter
10     100    30    30        1         0         4         0         0         0             0         0     0       0       # Retain_L_inflection_com_domestic(1) # Retention ascending inflection 
-1     20      1    1         0         0        -4         0         0         0             0         0     0       0       # Retain_L_width_com_domestic(1) # Retention ascending mat_slope
-10    1000    999  999       1         0        -4         0         0         0             0         0     0       0       # Retain_L_asymptote_logit_com_domestic(1) # Max retention
-1     2       0    0         1         0        -4         0         0         0             0         0     0       0       # Retain_L_male_offset_com_domestic(1) # Male offset

# Discard Mortality Parameters
# Lo  Hi    Init  Prior   Prior_SD  Prior_type  PHASE   env_link  dev_link  dev_minyr   dev_maxyr   dev_PH  Block   Block_Fxn Parameter
-10    10     -5    -5        1         0        -2         0         0         0             0         0     0       0       # DiscMort_L_infl_com_domestic(1) # Discard descending inflection 
-1     2       1    1         1         0        -2         0         0         0             0         0     0       0       # Disc_Mort_L_width_com_domestic(1) # Discard descending slope
-1     2      0.95  0.95      1         0        -4         0         0         0             0         0     0       0       # Disc_Mort_L_level_old_com_domestic(1) # Max discard mortality # assume 95% discard mortality for now???
-1     2      0     0         1         0        -4         0         0         0             0         0     0       0       # DiscMort_L_male_offset_com_domestic(1) # Male offset

# Age Selectivity Parameters 
# Lo  Hi    Init  Prior   Prior_SD  Prior_type  PHASE   env_link  dev_link  dev_minyr   dev_maxyr   dev_PH  Block   Block_Fxn Parameter
0     10    1.5   0       0         0           2       0         0         0           0           0       0       0         # Age_inflection_com_domestic(1)
0     10    0.05  0       0         0           3       0         0         0           0           0       0       0         # Age_95%width_com_domestic(1)
0     10    1.5   0       0         0           2       0         0         0           0           0       0       0         # Age_inflection_com_foreign(2)
0     10    0.05  0       0         0           3       0         0         0           0           0       0       0         # Age_95%width_com_foreign(2)
0     10    1.5   0       0         0           2       0         0         0           0           0       0       0         # Age_inflection_spring_survey(3)
0     10    0.05  0       0         0           3       0         0         0           0           0       0       0         # Age_95%width_spring_survey(3)
0     10    1.5   0       0         0           2       0         0         0           0           0       0       0         # Age_inflection_fall_survey(4)
0     10    0.05  0       0         0           3       0         0         0           0           0       0       0         # Age_95%width_fall_survey(4)
# 

# Dirichlet Multinomial Error for Data Weighting - Not used

# Two-Dimensional Auto-Regressive Selectivity
0 # Not used

# Tag Recapture Parameters - Not used
0 # No tagging data

# Time-varying Parameters - Not used

# Variance Adjustment Factors - Not used, could be used to adjust data weighting 
# Factor  Fleet   Value   Description
-9999     0       0       # End section

# Lambdas (Emphasis Factors) ??? page 142
4 # Max lambda phase
1 # SD offset used when estimating variance parameters so contribute to log likelihood

# Lambda Parameters ??? Not entirely sure what this does/should be used for
# Likelihood_component  Fleet   Phase     Lambda_value    Size_Freq_Method
8                       1       3         1               1                 # com_domestic catch fit
8                       2       3         1               1                 # com_foreign catch fit 
1                       3       3         1               1                 # spring_survey fit
1                       4       3         1               1                 # fall_survey fit 
-9999                   1       1         1               1                 # End section 

# Controls for Variance of Derived Quantities
0 # No additional std dev reporting

# TO DEBUG
# change phases
# don't estimate as many parameters
# Check data
# Maybe start 1973 and assume not fished in first -999 in catch, extra param

# Setting Phases
# Scale pop. In first phase
# - Rzero
# - Rec devs

# Phase 2
# - Growth
# Phase 3
# - Selectivity
# Phases 4&5
# - Time-varying
# - Results shouldn’t depend on phasing
# Sensitivity analysis to check that this works as desired




999 #End of the control file input









