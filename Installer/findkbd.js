var objWMI = GetObject("winmgmts://./root\\WMI");
var objInstances = objWMI.InstancesOf("MSWmi_PnPInstanceNames", 48);

//HID\{00001124-0000-1000-8000-00805f9b34fb}_VID&000205ac_PID&0256&Col01
var regex = /^HID.+05ac.+(0256|0255|023b|023a|0239|022c|022d|022e)&/i;

var enumItems = new Enumerator(objInstances);
for (; !enumItems.atEnd(); enumItems.moveNext()) 
{
	var objItem = enumItems.item();

	if(regex.test(objItem.InstanceName))
	{
    //WScript.Echo(objItem.InstanceName);
		WScript.Quit(255);
	}
}





