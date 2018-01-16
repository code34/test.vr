sleep 2;

0 = 0 spawn {
	disableSerialization;
	_html = (findDisplay 46) ctrlCreate ["RscHTML", -1];
	_html ctrlSetFont "EtelkaMonospacePro"; 
	_html ctrlSetBackgroundColor [0,0,0,0.8];
	_html ctrlSetPosition [0, 0, 1, 1];
	_html ctrlCommit 0;
	_html htmlLoad "http://linuxfr.org";
	copyToClipboard format ["%1",  ctrlText _html];
};

