local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
local res = external_profile("Config/Input/Aircrafts/common_joystick_binding.lua")

join(res.keyCommands,{
{down = iCommandEnginesStart, name = _('Auto execute full start procedure'),	category = _('Cheat')},
{down = iCommandEnginesStop,  name = _('Auto execute full stop procedure') ,	category = _('Cheat')},
-- Flight Control
{down = iCommandPlaneUpStart,			up = iCommandPlaneUpStop,			name = _('Aircraft Down'),			category = _('Flight Control')},
{down = iCommandPlaneDownStart,			up = iCommandPlaneDownStop,			name = _('Aircraft Up'),			category = _('Flight Control')},
{down = iCommandPlaneLeftStart,			up = iCommandPlaneLeftStop,			name = _('Aircraft Bank Left'),		category = _('Flight Control')},
{down = iCommandPlaneRightStart,		up = iCommandPlaneRightStop,		name = _('Aircraft Bank Right'),	category = _('Flight Control')},
{down = iCommandPlaneLeftRudderStart,	up = iCommandPlaneLeftRudderStop,	name = _('Aircraft Rudder Left'),	category = _('Flight Control')},
{down = iCommandPlaneRightRudderStart,	up = iCommandPlaneRightRudderStop,	name = _('Aircraft Rudder Right'),	category = _('Flight Control')},

{down = iCommandThrottleIncrease, up = iCommandThrottleStop,  name = _('Thrust Smoothly Up'),		category = _('Flight Control')},
{down = iCommandThrottleDecrease, up = iCommandThrottleStop,  name = _('Thrust Smoothly Down'),	category = _('Flight Control')},

{down = 3002, up = 3002, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 1,	value_up = 0.0, name = _('Engine RPM Increase'), category = _('Flight Control')},
{down = 3002, up = 3002, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = -1, value_up = 0.0, name = _('Engine RPM Decrease'), category = _('Flight Control')},

-- Systems
--{down = iCommandPlaneFlaps,																			name = _('Wing Flaps Handle, Up/Down'),	category = _('Systems')},
{down = iCommandPlaneFlapsOn,				up = iCommandPlaneFlaps,								name = _('Wing Flaps Handle, Down'),		category = _('Systems')},
{down = iCommandPlaneFlapsOff,				up = iCommandPlaneFlaps,								name = _('Wing Flaps Handle, Up'),		category = _('Systems')},
{down = iCommandPlaneHook,																			name = _('Landing Gear Next State'),		category = _('Systems')},
{down = iCommandPlaneGearUp,				up = iCommandPlaneGear,									name = _('Landing Gear Handle, Up'),			category = _('Systems')},
{down = iCommandPlaneGearDown,				up = iCommandPlaneGear,									name = _('Landing Gear Handle, Down'),			category = _('Systems')},
{down = iCommandPlaneWheelBrakeOn,			up = iCommandPlaneWheelBrakeOff,						name = _('Wheel Brake On/Off'),			category = _('Systems')},
{down = iCommandPlaneWheelBrakeLeftOn,		up = iCommandPlaneWheelBrakeLeftOff,					name = _('Wheel Brake Left On/Off'),	category = _('Systems')},
{down = iCommandPlaneWheelBrakeRightOn,		up = iCommandPlaneWheelBrakeRightOff,					name = _('Wheel Brake Right On/Off'),	category = _('Systems')},
{down = iCommandPlaneFonar, 																		name = _('Canopy Open/Close'),			category = _('Systems')},
{down = iCommandPlaneEject,																			name = _('Eject (3 times)'),			category = _('Systems')},

{down = 3003, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 1, name = _('War Emergency Power'), category = _('Flight Control')}, 

{down = 3004, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 1, name = _('Mixture control (rotary)'), category = _('Engine Control')},

{down = 3023, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 1, name = _('Clock heating switch ON'), category = _('Systems')},
{down = 3023, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 0, name = _('Clock heating switch OFF'), category = _('Systems')},
{down = 3026, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 1, name = _('Accum switch ON'), category = _('Systems')},
{down = 3026, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 0, name = _('Accum switch OFF'), category = _('Systems')},
{down = 3027, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 1, name = _('Shunt switch ON'), category = _('Systems')},
{down = 3027, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 0, name = _('Shunt switch OFF'), category = _('Systems')},
{down = 3028, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 1, name = _('Radio switch ON'), category = _('Systems')},
{down = 3028, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 0, name = _('Radio switch OFF'), category = _('Systems')},
{down = 3024, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 1, name = _('Pitot heating switch ON'), category = _('Systems')},
{down = 3024, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 0, name = _('Pitot heating switch OFF'), category = _('Systems')},
{down = 3025, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 1, name = _('Nav light switch ON'), category = _('Systems')},
{down = 3025, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 0, name = _('Nav light heating switch OFF'), category = _('Systems')},

{down = 3030, up = 3030, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 1, value_up = 0, name = _('Fire left torch Button'), category = _('Systems')},
{down = 3089, up = 3089, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 1, value_up = 0, name = _('Torches jettison Button'), category = _('Systems')},
{down = 3031, up = 3031, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 1, value_up = 0, name = _('Fire right torch Button'), category = _('Systems')},
{down = 3032, up = 3032, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 1, value_up = 0, name = _('Nav light test Button'), category = _('Systems')},

{down = 3025, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 1, name = _('Nav light switch ON'), category = _('Systems')},
{down = 3025, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = 0, name = _('Nav light heating switch OFF'), category = _('Systems')},

{down = 3033, up = 3033, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 1, value_up = 0, name = _('Ratchet relay Button'), category = _('Engine Control')},

{down = 3022, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 1.0,	 name = _('Ignition switch BOTH'), category = _('Engine Control')},
{down = 3022, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 0.33,	 name = _('Ignition switch Right'), category = _('Engine Control')},
{down = 3022, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 0.66,	 name = _('Ignition switch Left'), category = _('Engine Control')},
{down = 3022, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 0.0,	 name = _('Ignition switch OFF'), category = _('Engine Control')},

{down = 3036, up = 3036, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 1.0, value_up = 0.5, name = _('Starter Power'), category = _('Engine Control')},
{down = 3036, up = 3036, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 0.0, value_up = 0.5, name = _('Starter Clutch'), category = _('Engine Control')},

{down = 3062, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 1, name = _('Fuel valve OPEN'), category = _('Fuel System Controls')},
{down = 3062, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 0, name = _('Fuel valve CLOSE'), category = _('Fuel System Controls')},

{down = 3046, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 1, name = _('Supercharger switch HIGH'), category = _('Engine Control')},
{down = 3046, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 0, name = _('Supercharger switch LOW'), category = _('Engine Control')},

{down = 3029, up = 3029, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 1, value_up = 0, name = _('Motor Shutdown'), category = _('Engine Control')},

{down = 3064, up = 3064, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 1, value_up = 0, name = _('Ratchet relay Rope'), category = _('Engine Control')},

{down = 3060, up = 3060, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0, name = _('Gun wing left Recharge'), category = _('Weapons')},
{down = 3061, up = 3061, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0, name = _('Gun wing right Recharge'), category = _('Weapons')},
{down = 3070, up = 3070, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0, name = _('Gun nose left Recharge'), category = _('Weapons')},
{down = 3071, up = 3071, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0, name = _('Gun nose right Recharge'), category = _('Weapons')},

{down = 3037, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 0, name = _('Primary fuel Switch MOTOR'), category = _('Fuel System Controls')},
{down = 3037, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 0.5, name = _('Primary fuel Switch CARB'), category = _('Fuel System Controls')},
{down = 3037, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 1, name = _('Primary fuel Switch CLOSE'), category = _('Fuel System Controls')},

{down = 3005, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = -1, name = _('Primary fuel Pump OPEN'), category = _('Fuel System Controls')},
{down = 3039, up = 3039, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 1, value_up = 0, name = _('Primary fuel Pump PULL'), category = _('Fuel System Controls')},
{down = 3005, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = 1, name = _('Primary fuel Pump CLOSE'), category = _('Fuel System Controls')},

{down = 3069, cockpit_device_id  = devices.COMMON_SYSTEM, value_down = 1, name = _('Mech sight ON'), category = _('Weapons')},
{down = 3069, cockpit_device_id  = devices.COMMON_SYSTEM, value_down = 0, name = _('Mech sight OFF'), category = _('Weapons')},
{down = 3700, cockpit_device_id  = devices.COMMON_SYSTEM, value_down = 1, name = _('Sight filter ON'), category = _('Weapons')},
{down = 3700, cockpit_device_id  = devices.COMMON_SYSTEM, value_down = 0, name = _('Sight filter OFF'), category = _('Weapons')},

{down = 3050, cockpit_device_id  = devices.GEAR_SYSTEM,	value_down = 1, name = _('Gear lock ON'),	category = _('Systems')},
{down = 3050, cockpit_device_id  = devices.GEAR_SYSTEM,	value_down = 0, name = _('Gear lock OFF'),	category = _('Systems')},
{down = 3050, up = 3050, cockpit_device_id = devices.GEAR_SYSTEM, value_down = 1, value_up = 0, name = _('Gear lock (Warthog)'), category = _('Systems')},

{down = 3051, cockpit_device_id  = devices.GEAR_SYSTEM, value_down = 1, name = _('Gear direction UP'),   category = _('Systems')},
{down = 3051, cockpit_device_id  = devices.GEAR_SYSTEM, value_down = 0, name = _('Gear direction DOWN'), category = _('Systems')},
{down = 3051, up = 3051, cockpit_device_id = devices.GEAR_SYSTEM, value_down = 1, value_up = 0, name = _('Gear direction (Warthog)'), category = _('Systems')},

{down = 3055, cockpit_device_id  = devices.GEAR_SYSTEM,	value_down = 1, name = _('Gear brake spring ON'),	category = _('Systems')},
{down = 3055, cockpit_device_id  = devices.GEAR_SYSTEM,	value_down = 0, name = _('Gear brake spring OFF'),	category = _('Systems')},
{down = 3055, up = 3055, cockpit_device_id = devices.GEAR_SYSTEM, value_down = 1, value_up = 0, name = _('Gear brake spring (Warthog)'), category = _('Systems')},

{down = 3006, up = 3006, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down =  1, value_up = 0.0, name = _('Motor cooling flaps Increase'), category = _('Engine Control')}, 
{down = 3006, up = 3006, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = -1, value_up = 0.0, name = _('Motor cooling flaps Decrease'), category = _('Engine Control')}, 

{down = 3007, up = 3007, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down =  1, value_up = 0.0, name = _('Oil radiator Increase'), category = _('Engine Control')}, 
{down = 3007, up = 3007, cockpit_device_id  = devices.MOTOR_SYSTEM, value_down = -1, value_up = 0.0, name = _('Oil radiator flaps Decrease'), category = _('Engine Control')}, 

{down = 3005, up = 3005, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down =  1, value_up = 0.0, name = _('Sight brightness Increase'), category =_('Weapons')}, 
{down = 3005, up = 3005, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = -1, value_up = 0.0, name = _('Sight brightness Decrease'), category = _('Weapons')}, 
{down = 3088, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1, name = _('Main Bomb Switch - ON'), category = _('Weapons')},
{down = 3088, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 0, name = _('Main Bomb Switch - OFF'), category = _('Weapons')},
{down = 3003, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1, name = _('Rockect/Bomb Selector Increase'), category = _('Weapons')},
{down = 3003, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = -1, name = _('Rockect/Bomb Selector Decrease'), category = _('Weapons')},

{down = 3006, up = 3006, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down =  1, value_up = 0.0, name = _('Cockpit light Increase'), category =_('Systems')}, 
{down = 3006, up = 3006, cockpit_device_id  = devices.ELECTRIC_SYSTEM, value_down = -1, value_up = 0.0, name = _('Cockpit light Decrease'), category = _('Systems')}, 

{down = 3002, up = 3002, cockpit_device_id  = devices.COMMON_SYSTEM, value_down =  1, value_up = 0.0, name = _('Altimeter pressure set Increase'), category =_('Systems')}, 
{down = 3002, up = 3002, cockpit_device_id  = devices.COMMON_SYSTEM, value_down = -1, value_up = 0.0, name = _('Altimeter pressure set Decrease'), category = _('Systems')}, 

{pressed = 3040, cockpit_device_id  = devices.COMMON_SYSTEM, value_pressed = 0.002, name = _('Compass course Increase'), category =_('Systems')}, 
{pressed = 3040, cockpit_device_id  = devices.COMMON_SYSTEM, value_pressed = -0.002, name = _('Compass course Decrease'), category = _('Systems')}, 

{down = 3003, cockpit_device_id  = devices.COMMON_SYSTEM, value_down =  1, name = _('Seat height Increase'), category =_('Systems')}, 
{down = 3003, cockpit_device_id  = devices.COMMON_SYSTEM, value_down =  -1, name = _('Seat height Decrease'), category = _('Systems')}, 

{down = 3001, up = 3001, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_down = 1, value_up = 0, name = _('Oxygen adjusting valve Increase'), category = _('Systems')},
{down = 3001, up = 3001, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_down = -1, value_up = 0, name = _('Oxygen adjusting valve Decrease'), category = _('Systems')},
{down = 3002, up = 3002, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_down = 1, value_up = 0, name = _('Oxygen emergency valve Increase'), category = _('Systems')},
{down = 3002, up = 3002, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_down = -1, value_up = 0, name = _('Oxygen emergency valve Decrease'), category = _('Systems')},
{down = 3003, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_down = -1, name = _('Oxygen shutoff valve OPEN'), category = _('Systems')},
{down = 3003, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_down = 1, name = _('Oxygen shutoff valve CLOSE'), category = _('Systems')},

-- Stick
--{combos = {{key = 'JOY_BTN2'}}, down = iCommandPlanePickleOn, up = iCommandPlanePickleOff, 										name = _('Weapon Release Button'), category = _('Stick')},
{combos = {{key = 'JOY_BTN2'}}, down = 3002, up = 3002, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0.0, name = _('Weapon Release Button'), category = _('Stick')},
{combos = defaultDeviceAssignmentFor("fire"), down = iCommandPlaneFire, up = iCommandPlaneFireOff, 												name = _('Cannon Fire Button'), category = _('Stick')},
})

-- joystick axes 
join(res.axisCommands,{
{combos = defaultDeviceAssignmentFor("roll")	, action = iCommandPlaneRoll, name = _('Roll')},
{combos = defaultDeviceAssignmentFor("pitch")	, action = iCommandPlanePitch, name = _('Pitch')},
{combos = defaultDeviceAssignmentFor("rudder")	, action = iCommandPlaneRudder, name = _('Rudder')},
{combos = defaultDeviceAssignmentFor("thrust")	, action = iCommandPlaneThrustCommon, name = _('Thrust')},
{action = 3001, cockpit_device_id  = devices.MOTOR_SYSTEM, name = _('Engine RPM Setting')},
{action = iCommandWheelBrake,		name = _('Wheel Brake')},
{action = iCommandLeftWheelBrake,	name = _('Wheel Brake Left')},
{action = iCommandRightWheelBrake,	name = _('Wheel Brake Right')},

-- TrackIR axes
{action = iCommandViewVerticalAbs		, name = _('Absolute Camera Vertical View')},
{action = iCommandViewHorizontalAbs		, name = _('Absolute Camera Horizontal View')},
{action = iCommandViewHorTransAbs		, name = _('Absolute Horizontal Shift Camera View')},
{action = iCommandViewVertTransAbs		, name = _('Absolute Vertical Shift Camera View')},
{action = iCommandViewLongitudeTransAbs	, name = _('Absolute Longitude Shift Camera View')},
{action = iCommandViewRollAbs			, name = _('Absolute Roll Shift Camera View')},
{action = iCommandViewZoomAbs			, name = _('Zoom View')},
})

return res
