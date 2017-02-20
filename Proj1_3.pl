#! /usr/bin/perl -w
#
# Filename: Proj1_3.pl
# Description: Project 1 part 3
# By: Ronald Coe, Jr.
# Class: CMIS 375
#


#
#
# Initialize a variable to be used as a boolean
#
$not_nice_out = 0;


#
#
# While it is not nice out loop
#
while(!$not_nice_out) {
	#
	#
	# Call sub-routine to determine whether it is nice out or not
	#
	$temp_outside = &TemperatureCompare;
	
	#
	#
	# If the value of the temperature outside is between 50 and 80 degrees
	# then quit the loop, otherwise keep asking for temperatures
	#
	unless(!(($temp_outside >= 50) && ($temp_outside <= 80))) {
		$not_nice_out = 1;
		print "nice day\n";
	}
}






########################################################
#
# Sub-routine: TemperatureConverter #
#
#
sub TemperatureCompare {
	#
	#
	# Collect the temperature outside and return its value to the caller
	#
	print "Please enter a temparature in Farhenheit: ";
	$temperature = <STDIN>;

	return $temperature;

}
