sleep 2;

with uiNamespace do { 
	 button = findDisplay 46 ctrlCreate ["RscShortcutButton", -1]; 
	 button ctrlSetPosition [0,0,0.3,0.1]; 
	 button ctrlCommit 0; 
	 button ctrlSetStructuredText parseText  
	 "<t size='0.5'>&#160;</t><br/><t size='1' align='center'>Button Text&#160;&#160;</t>"; 
	copyToClipboard format["%1", allVariables uiNamespace];
};

