class CfgFunctions
{
	class OTAS {
		class DataFunctions {
			// OTAS_Fnc_Process_Position_Phone
			class Process_Position_Phone {file = "Functions\data\Process_Position_Phone.sqf";}; 
		};

		class SatelitePhone {
			// OTAS_Fnc_Main_Controller
			class Main_Controller {file = "Functions\Satelite_Phone\Main_Controller.sqf";};
			// OTAS_Fnc_Reset_Code
			class Reset_Code {file = "Functions\Satelite_Phone\Reset_Code.sqf";};
		};

		class AirSupport {
			// OTAS_Fnc_Plane_Air_Support
			class Plane_Air_Support {file = "Functions\Air_Support\Plane_Air_Support.sqf";};
		};

		class FireSupport {
			// OTAS_Fnc_Artillery_Fire_Support
			class Artillery_Fire_Support {file = "Functions\Fire_Support\Artillery_Fire_Support.sqf";};
		};
	};
};

