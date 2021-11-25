unit Hardware;

{$mode objfpc}{$H+}

interface


uses
  GlobalConfig,
  GlobalConst,
  Platform,
  Classes,
  GPIO,
  SysUtils;

procedure GPIOinit();
procedure Forwards();
procedure Backwards();
procedure Turnleft();
procedure Turnright();
procedure Stopbot();

implementation


procedure GPIOinit();
   begin
      GPIODeviceFunctionSelect(GPIODeviceGetDefault, GPIO_PIN_17, GPIO_FUNCTION_OUT);
      GPIODeviceFunctionSelect(GPIODeviceGetDefault, GPIO_PIN_18, GPIO_FUNCTION_OUT);
      GPIODeviceFunctionSelect(GPIODeviceGetDefault, GPIO_PIN_23, GPIO_FUNCTION_OUT);
      GPIODeviceFunctionSelect(GPIODeviceGetDefault, GPIO_PIN_24, GPIO_FUNCTION_OUT);

      GPIODeviceOutputSet(GPIODeviceGetDefault, GPIO_PIN_17, GPIO_LEVEL_HIGH);
      Sleep(1000);
      GPIODeviceOutputSet(GPIODeviceGetDefault, GPIO_PIN_17, GPIO_LEVEL_LOW);
      GPIODeviceOutputSet(GPIODeviceGetDefault, GPIO_PIN_18, GPIO_LEVEL_LOW);
      GPIODeviceOutputSet(GPIODeviceGetDefault, GPIO_PIN_23, GPIO_LEVEL_LOW);
      GPIODeviceOutputSet(GPIODeviceGetDefault, GPIO_PIN_24, GPIO_LEVEL_LOW);

   end;

procedure Forwards();
 begin
      GPIODeviceOutputSet(GPIODeviceGetDefault, GPIO_PIN_17, GPIO_LEVEL_HIGH);
 end;

procedure Backwards();
 begin
      GPIODeviceOutputSet(GPIODeviceGetDefault, GPIO_PIN_18, GPIO_LEVEL_HIGH);
 end;

procedure Turnleft();
 begin
      GPIODeviceOutputSet(GPIODeviceGetDefault, GPIO_PIN_23, GPIO_LEVEL_HIGH);
 end;

procedure Turnright();
 begin
      GPIODeviceOutputSet(GPIODeviceGetDefault, GPIO_PIN_24, GPIO_LEVEL_HIGH);
 end;

procedure Stopbot();
 begin
      GPIODeviceOutputSet(GPIODeviceGetDefault, GPIO_PIN_17, GPIO_LEVEL_LOW);
      GPIODeviceOutputSet(GPIODeviceGetDefault, GPIO_PIN_18, GPIO_LEVEL_LOW);
      GPIODeviceOutputSet(GPIODeviceGetDefault, GPIO_PIN_23, GPIO_LEVEL_LOW);
      GPIODeviceOutputSet(GPIODeviceGetDefault, GPIO_PIN_24, GPIO_LEVEL_LOW);
 end;







end.

