class RscDisplayName
{
	idd = 1234;
	class ControlsBackground
	{
		class RscPicture_1200: RscPicture {
            idc = 1200;
            text = "Satelite_Phone\Images\phone.paa";
            x = 0.2997 * safezoneW + safezoneX;
            y = 0.1 * safezoneH + safezoneY;
            w = 0.2375 * safezoneW;
            h = 0.875 * safezoneH;
        };

		class RscText_1000: RscText
        {
            idc = 1000;
            colorText[] = {0,0,0,1};
			// colorBackground[] = {100, 0, 0, 0.5};
            text = "";
            x = 0.403 * safezoneW + safezoneX;
            y = 0.52 * safezoneH + safezoneY;
            w = 0.05 * safezoneW;
            h = 0.02 * safezoneH;
        };
	};

	class Controls
	{
		class Btn1: RscButtonTextOnly
		{
			idc = -1;
			text = "";
			// colorBackground[] = {100, 0, 0, 0.5};
			onButtonClick = "['1']execVM 'Satelite_Phone\Scripts\dial.sqf'";
			x = 0.37 * safezoneW + safezoneX;
            y = 0.76 * safezoneH + safezoneY;
            w = 0.03 * safezoneW;
            h = 0.02 * safezoneH;
		};

		class Btn2: RscButtonTextOnly
		{
			idc = -1;
			text = "";
			// colorBackground[] = {100, 100, 0, 0.5};
			onButtonClick = "['2']execVM 'Satelite_Phone\Scripts\dial.sqf'";
			x = 0.403 * safezoneW + safezoneX;
            y = 0.77 * safezoneH + safezoneY;
            w = 0.03 * safezoneW;
            h = 0.02 * safezoneH;
		};

		class Btn3: RscButtonTextOnly
		{
			idc = -1;
			text = "";
			// colorBackground[] = {100, 50, 50, 0.5};
			onButtonClick = "['3']execVM 'Satelite_Phone\Scripts\dial.sqf'";
			x = 0.436 * safezoneW + safezoneX;
            y = 0.76 * safezoneH + safezoneY;
            w = 0.03 * safezoneW;
            h = 0.02 * safezoneH;
		};

		class Btn4: RscButtonTextOnly
		{
			idc = -1;
			text = "";
			// colorBackground[] = {0, 0, 100, 0.5};
			onButtonClick = "['4']execVM 'Satelite_Phone\Scripts\dial.sqf'";
			x = 0.37 * safezoneW + safezoneX;
            y = 0.795 * safezoneH + safezoneY;
            w = 0.03 * safezoneW;
            h = 0.02 * safezoneH;
		};

		class Btn5: RscButtonTextOnly
		{
			idc = -1;
			text = "";
			// colorBackground[] = {0, 0, 100, 0.5};
			onButtonClick = "['5']execVM 'Satelite_Phone\Scripts\dial.sqf'";
			x = 0.403 * safezoneW + safezoneX;
            y = 0.805 * safezoneH + safezoneY;
            w = 0.03 * safezoneW;
            h = 0.02 * safezoneH;
		};

		class Btn6: RscButtonTextOnly
		{
			idc = -1;
			text = "";
			// colorBackground[] = {0, 0, 100, 0.5};
			onButtonClick = "['6']execVM 'Satelite_Phone\Scripts\dial.sqf'";
			x = 0.436 * safezoneW + safezoneX;
            y = 0.795 * safezoneH + safezoneY;
            w = 0.03 * safezoneW;
            h = 0.02 * safezoneH;
		};

		class Btn7: RscButtonTextOnly
		{
			idc = -1;
			text = "";
			// colorBackground[] = {100, 0, 0, 0.5};
			onButtonClick = "['7']execVM 'Satelite_Phone\Scripts\dial.sqf'";
			x = 0.37 * safezoneW + safezoneX;
            y = 0.83 * safezoneH + safezoneY;
            w = 0.03 * safezoneW;
            h = 0.02 * safezoneH;
		};

		class Btn8: RscButtonTextOnly
		{
			idc = -1;
			text = "";
			// colorBackground[] = {100, 0, 0, 0.5};
			onButtonClick = "['8']execVM 'Satelite_Phone\Scripts\dial.sqf'";
			x = 0.403 * safezoneW + safezoneX;
            y = 0.840 * safezoneH + safezoneY;
            w = 0.03 * safezoneW;
            h = 0.02 * safezoneH;
		};

		class Btn9: RscButtonTextOnly
		{
			idc = -1;
			text = "";
			// colorBackground[] = {100, 0, 0, 0.5};
			onButtonClick = "['9']execVM 'Satelite_Phone\Scripts\dial.sqf'";
			x = 0.436 * safezoneW + safezoneX;
            y = 0.83 * safezoneH + safezoneY;
            w = 0.03 * safezoneW;
            h = 0.02 * safezoneH;
		};

		class Btn0: RscButtonTextOnly
		{
			idc = -1;
			text = "";
			// colorBackground[] = {100, 0, 0, 0.5};
			onButtonClick = "['0']execVM 'Satelite_Phone\Scripts\dial.sqf'";
			x = 0.403 * safezoneW + safezoneX;
            y = 0.875 * safezoneH + safezoneY;
            w = 0.03 * safezoneW;
            h = 0.02 * safezoneH;
		};

		class BtnGreen: RscButtonTextOnly
		{
			idc = -1;
			text = "";
			// colorBackground[] = {100, 0, 0, 0.5};
			onButtonClick = "execVM 'Satelite_Phone\Scripts\send.sqf'";
			x = 0.37 * safezoneW + safezoneX;
            y = 0.715 * safezoneH + safezoneY;
            w = 0.018 * safezoneW;
            h = 0.02 * safezoneH;
		};

		class BtnRed: RscButtonTextOnly
		{
			idc = -1;
			text = "";
			// colorBackground[] = {100, 0, 0, 0.5};
			onButtonClick = "execVM 'Satelite_Phone\Scripts\clear.sqf'";
			x = 0.447 * safezoneW + safezoneX;
            y = 0.715 * safezoneH + safezoneY;
            w = 0.018 * safezoneW;
            h = 0.02 * safezoneH;
		};
	};
};

