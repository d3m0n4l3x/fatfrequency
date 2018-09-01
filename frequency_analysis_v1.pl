#!/usr/bin/perl -w
#Writen by demonalex for John Jay's Applied Cryptography class on Aug 31, 2018.
#After using this script, please replace the value of $string shown below.
$|=1;
$string='lrvmnir bpr sumvbwvr jx bpr lmiwv yjeryrkbi jx qmbm wi
bpr xjvni mkd ymibrut jx irhx wi bpr riirkvr jx
ymbinlmtmipw utn qmumbr dj w ipmhh but bj rhnvwdmbr bpr
yjeryrkbi jx bpr qmbm mvvjudwko bj yt wkbrusurbmbwjk
lmird jk xjubt trmui jx ibndt
wb wi kjb mk rmit bmiq bj rashmwk rmvp yjeryrkb mkd wbi
iwokwxwvmkvr mkd ijyr ynib urymwk nkrashmwkrd bj ower m
vjyshrbr rashmkmbwjk jkr cjnhd pmer bj lr fnmhwxwrd mkd
wkiswurd bj invp mk rabrkb bpmb pr vjnhd urmvp bpr ibmbr
jx rkhwopbrkrd ywkd vmsmlhr jx urvjokwgwko ijnkdhrii
ijnkd mkd ipmsrhrii ipmsr w dj kjb drry ytirhx bpr xwkmh
mnbpjuwbt lnb yt rasruwrkvr cwbp qmbm pmi hrxb kj djnlb
bpmb bpr xjhhjcwko wi bpr sujsru msshwvmbwjk mkd
wkbrusurbmbwjk w jxxru yt bprjuwri wk bpr pjsr bpmb bpr
riirkvr jx jqwkmcmk qmumbr cwhh urymwk wkbmvb';

@string_array=split(//, $string);


print "=====================Mapping List:=====================\n";


@letters=('a'..'z');
%letters_with_counts=();
foreach $letter (@letters){
	$count=()=$string=~m/$letter/g;
	#print $letter." : $count\n";								#DEBUG
	$letters_with_counts{$letter}=$count;
}

@letters_sorted_by_counts=();
foreach my $a_letter (sort { $letters_with_counts{$a} <=> $letters_with_counts{$b} } keys %letters_with_counts) {
	#printf "%-8s %s\n", $a_letter, $letters_with_counts{$a_letter};				#DEBUG
	push(@letters_sorted_by_counts, $a_letter);
}
#The array, @letters_sorted_by_counts, has all letters sorted by their counts from the SMALLEST to the BIGGEST.

print "@letters_sorted_by_counts\n";								#DEBUG


%letters_frequency=(
'A'=>0.0817,
'B'=>0.0150,
'C'=>0.0278,
'D'=>0.0425,
'E'=>0.1270,
'F'=>0.0223,
'G'=>0.0202,
'H'=>0.0609,
'I'=>0.0697,
'J'=>0.0015,
'K'=>0.0077,
'L'=>0.0403,
'M'=>0.0241,
'N'=>0.0675,
'O'=>0.0751,
'P'=>0.0193,
'Q'=>0.0010,
'R'=>0.0599,
'S'=>0.0633,
'T'=>0.0906,
'U'=>0.0276,
'V'=>0.0098,
'W'=>0.0236,
'X'=>0.0015,
'Y'=>0.0197,
'Z'=>0.0007,
);

@letters_frequency_sorted=();
foreach my $b_letter (sort { $letters_frequency{$a} <=> $letters_frequency{$b} } keys %letters_frequency) {
	#printf "%-8s %s\n", $b_letter, $letters_frequency{$b_letter};				#DEBUG
	push(@letters_frequency_sorted, $b_letter);
}

print "@letters_frequency_sorted\n";								#DEBUG


print "======================Cleartext:=======================\n";


NEXT_LETTER: foreach $c_letter (@string_array){
	for($count=0; $count<=25; $count++){
		if(lc($c_letter) eq lc($letters_sorted_by_counts[$count])){
			print "$letters_frequency_sorted[$count]";
			next NEXT_LETTER;
		}
	}
	print "$c_letter";
}


print "\n";
exit(1);