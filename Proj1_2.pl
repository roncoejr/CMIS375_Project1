#! /usr/bin/perl -w
#
# Filename: Proj1_2.pl
# Description: Project 1 part 2
# By: Ronald Coe, Jr.
# Class: CMIS 375
#


#
#
# Call the subroutine to collect 10 things
#
&EnterTenThings;





########################################################
#
# Sub-routine: EnterTenThings #
#
#
sub EnterTenThings {
	#
	#
	# Create a counter for the upcoming loop
	#
	$i_next = 0;
	
	#
	#
	# Ask the user to enter values
	#
	print 'Enter ten integer values: ';
	
	#
	#
	# Ask for 10 values
	#
	for($i=0; $i < 10; $i++) {
		#
		#
		# Create and increment a counter to display before each entry
		#
		$i_next += 1;
		print "\nValue $i_next: ";
		#
		#
		# Collect the value and get rid of the newline character
		#
		chomp($things[$i] = <STDIN>);
	}

	#
	#
	# Call the sub-routine to show the 10 values entered, passing the array
	# containing those values
	#
	&ShowTenThings(@things);
}

########################################################
#
# Sub-routine: ShowTenThings #
#
#
#
sub ShowTenThings {
	print "The list of numbers used is: ";
	#
	#
	# Loop through the array obtained from the caller and print its values
	#
	foreach (@_) {
		print "$_ ";
	}
	print "\n";
	
	#
	#
	# Call the sub-routine that will do something with the 10 things passed to
	# this sub-routine
	#
	&ProcessTenThings(@_);
}

########################################################
#
# Sub-routine: ProcessTenThings #
#
#
#
sub ProcessTenThings {
	#
	#
	# Initialize variables that will be used in upcoming calculations
	#
	$multiplied_things = 1;
	$added_things = 0;
	$i = 0;
	#
	#
	# Loop through the array
	#
	foreach (@_) {
		#
		#
		# If this array element is on an even numbered indicies, add its value
		# to the running total of evenly indexed items
		#
		if(($i % 2) == 0) {
			# print "$i -- even \n";;
			$added_things += $_[$i];
		}
		#
		#
		# If this array element is on an odd numbered indicies, multiply its value
		# to the running total of odd indexed items
		#
		else {
			# print "$i -- odd \n";
			$multiplied_things *= $_[$i];
		}
		$i++;
	}
	print "The result of adding the even elements is: $added_things \n";
	print "The result of multiplying the odd elements is: $multiplied_things \n";

}
