#! /usr/bin/perl -w
#
# Filename: Proj1_1.pl
# Description: Project 1 part 1
# By: Ronald Coe, Jr.
# Class: CMIS 375
#



#
#
#
# Collect the first and last name of the user from standard input
#
#
print 'Enter your first name: ';
chomp($fname = <STDIN>);
print 'Enter your last name: ';
chomp($lname = <STDIN>);

print "Please enter a temparature in Farhenheit: ";
chomp($temp_f = <STDIN>);

#
#
# Call the sub-routine to convert the temperature
#
$temp_c = &TemperatureConverter($temp_f);


#
#
# Output the values of the variables assigned in the previous steps
#
print "Thank You $fname $lname, $temp_f degrees Fahrenheit is $temp_c degrees Celcius\n\n";







########################################################
#
# Sub-routine: TemperatureConverter #
# Description: Takes a temperature in Farhenheit and converts it to Celcius
#
sub TemperatureConverter {
	#
	#
	# Obtain the temperature in Farheheit
	#
	# $temperature = <STDIN>;

	#
	#
	# Convert the temperature into Celcius
	#
	$temperature_celcius = (($_[0]-32) *5)/9;

	#
	#
	# Output the converted temperature
	#
	# print "That temperature in celcius is: $temperature_celcius\n";
	
	return $temperature_celcius;
}
