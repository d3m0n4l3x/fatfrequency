#!/usr/bin/perl -w
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

@letters_sorted_by_counts=(
"b",
"p",
"r",
"m",
"j",
"i",
"d",
"s",
"k",
"v",
"y",
"h",
"e",
"w",
"x",
"c",
"o",
"u",
"t",
"n",
"f",
"l",
"a",
"g",
"q",
);

@letters_frequency_sorted=(
"T",
"H",
"E",
"A",
"O",
"S",
"D",
"P",
"N",
"C",
"M",
"L",
"V",
"I",
"F",
"W",
"G",
"R",
"Y",
"U",
"Q",
"B",
"X",
"Z",
"K",
);

print "@letters_sorted_by_counts\n@letters_frequency_sorted\n";

print "======================Cleartext:=======================\n";


NEXT_LETTER: foreach $c_letter (@string_array){
	for($count=0; $count<=(scalar(@letters_frequency_sorted)-1); $count++){
		if(lc($c_letter) eq lc($letters_sorted_by_counts[$count])){
			print "$letters_frequency_sorted[$count]";
			next NEXT_LETTER;
		}
	}
	print "$c_letter";
}


print "\n";
exit(1);