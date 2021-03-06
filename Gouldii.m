function varargout = Gouldii(varargin)
% GOULDII MATLAB code for Gouldii.fig
%      GOULDII, by itself, creates a new GOULDII or raises the existing
%      singleton*.
%
%      H = GOULDII returns the handle to a new GOULDII or the handle to
%      the existing singleton*.
%
%      GOULDII('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GOULDII.M with the given input arguments.
%
%      GOULDII('Property','Value',...) creates a new GOULDII or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Gouldii_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Gouldii_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Gouldii

% Last Modified by GUIDE v2.5 13-Jan-2018 06:50:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Gouldii_OpeningFcn, ...
                   'gui_OutputFcn',  @Gouldii_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Gouldii is made visible.
function Gouldii_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Gouldii (see VARARGIN)
clc

% Choose default command line output for Gouldii_LO_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Gouldii_LO_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
movegui('northwest')
set(handles.Input_ContangoEntry, 'enable', 'off')
set(handles.Input_opt2numofsteps, 'enable', 'off')
set(handles.Input_opt2lowerbound, 'enable', 'off')
set(handles.Input_opt2upperbound, 'enable', 'off')
    
% --- Outputs from this function are returned to the command line.
function varargout = Gouldii_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



%XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
%                            OPTIMIZED INPUTS
%XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

%--------------------------------------------------------------------------
% OPT 1


function Input_opt1numofsteps_Callback(hObject, eventdata, handles)
% hObject    handle to Input_opt1numofsteps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_opt1numofsteps as text
%        str2double(get(hObject,'String')) returns contents of Input_opt1numofsteps as a double
input = get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function Input_opt1numofsteps_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_opt1numofsteps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on key press with focus on Input_opt1numofsteps and none of its controls.
function Input_opt1numofsteps_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to Input_opt1numofsteps (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'Enable', 'on');

%===================


function Input_opt1lowerbound_Callback(hObject, eventdata, handles)
% hObject    handle to Input_opt1lowerbound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_opt1lowerbound as text
%        str2double(get(hObject,'String')) returns contents of Input_opt1lowerbound as a double
guidata(hObject, handles);
set(hObject, 'Enable', 'on');
handles = guidata(hObject);
handles.in_opt1lowerbound = get(hObject,'String');
%temp_input = handles.in_opt1lowerbound;
input_lower1 = get(handles.Input_opt1lowerbound, 'String');
input_upper1 = get(handles.Input_opt1upperbound, 'String');
input_lower1 = str2double(input_lower1);
input_upper1 = str2double(input_upper1);
if input_lower1 > input_upper1
              warning('you must enter a valid trading date in the correct format. Check to ensure that the date entered is not a weekend or holiday');    
              set(handles.Input_opt1lowerbound, 'string', handles.temp_opt1lowerbound) 
              set(hObject, 'Enable', 'on');
              guidata(hObject, handles);
end 

guidata(hObject, handles);
set(hObject, 'Enable', 'Inactive');

% --- Executes during object creation, after setting all properties.
function Input_opt1lowerbound_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_opt1lowerbound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on key press with focus on Input_opt1lowerbound and none of its controls.
function Input_opt1lowerbound_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to Input_opt1lowerbound (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over Input_opt1lowerbound.
function Input_opt1lowerbound_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to Input_opt1lowerbound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%handles = guidata(hObject);
%set(hObject, 'Enable', 'Inactive');
%uicontrol(handles.Input_opt1lowerbound);
guidata(hObject, handles);
handles.temp_opt1lowerbound = get(handles.Input_opt1lowerbound,'String');
%temp_input = handles.temp_opt1lowerbound;
guidata(hObject, handles);
set(hObject, 'Enable', 'on');



%===================


function Input_opt1upperbound_Callback(hObject, eventdata, handles)
% hObject    handle to Input_opt1upperbound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_opt1upperbound as text
%        str2double(get(hObject,'String')) returns contents of Input_opt1upperbound as a double
guidata(hObject, handles);
set(hObject, 'Enable', 'on');
handles = guidata(hObject);
handles.in_opt1upperound = get(hObject,'String');
%temp_input = handles.in_opt1upperbound;
input_lower1 = get(handles.Input_opt1lowerbound, 'String');
input_upper1 = get(handles.Input_opt1upperbound, 'String');
input_lower1 = str2double(input_lower1);
input_upper1 = str2double(input_upper1);
if input_upper1 < input_lower1
              warning('you must enter a valid trading date in the correct format. Check to ensure that the date entered is not a weekend or holiday');    
              set(handles.Input_opt1upperbound, 'string', handles.temp_opt1upperbound) 
              set(hObject, 'Enable', 'on');
              guidata(hObject, handles);
end 

guidata(hObject, handles);
set(hObject, 'Enable', 'Inactive');

% --- Executes during object creation, after setting all properties.
function Input_opt1upperbound_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_opt1upperbound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over Input_opt1upperbound.
function Input_opt1upperbound_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to Input_opt1upperbound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set(hObject, 'Enable', 'Inactive');
guidata(hObject, handles);
handles.temp_opt1upperbound = get(handles.Input_opt1upperbound,'String');
%temp_input = handles.temp_opt1lowerbound;
guidata(hObject, handles);
set(hObject, 'Enable', 'on');



%--------------------------------------------------------------------------
% OPT 2


function Input_opt2numofsteps_Callback(hObject, eventdata, handles)
% hObject    handle to Input_opt2numofsteps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_opt2numofsteps as text
%        str2double(get(hObject,'String')) returns contents of Input_opt2numofsteps as a double
input = get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function Input_opt2numofsteps_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_opt2numofsteps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%===================


function Input_opt2lowerbound_Callback(hObject, eventdata, handles)
% hObject    handle to Input_opt2lowerbound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_opt2lowerbound as text
%        str2double(get(hObject,'String')) returns contents of Input_opt2lowerbound as a double
guidata(hObject, handles);
set(hObject, 'Enable', 'on');
handles = guidata(hObject);
handles.in_opt2lowerbound = get(hObject,'String');
%temp_input = handles.in_opt1lowerbound;
input_lower2 = get(handles.Input_opt2lowerbound, 'String');
input_upper2 = get(handles.Input_opt2upperbound, 'String');
input_lower2 = str2double(input_lower2);
input_upper2 = str2double(input_upper2);
if input_lower2 > input_upper2
              warning('you must enter a valid trading date in the correct format. Check to ensure that the date entered is not a weekend or holiday');    
              set(handles.Input_opt2lowerbound, 'string', handles.temp_opt2lowerbound) 
              set(hObject, 'Enable', 'on');
              guidata(hObject, handles);
end 

guidata(hObject, handles);

set(hObject, 'Enable', 'Inactive');

% --- Executes during object creation, after setting all properties.
function Input_opt2lowerbound_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_opt2lowerbound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over Input_opt2lowerbound.
function Input_opt2lowerbound_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to Input_opt2lowerbound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guidata(hObject, handles);
handles.temp_opt2lowerbound = get(handles.Input_opt2lowerbound,'String');
%temp_input = handles.temp_opt1lowerbound;
guidata(hObject, handles);
set(hObject, 'Enable', 'on');


%===================


function Input_opt2upperbound_Callback(hObject, eventdata, handles)
% hObject    handle to Input_opt2upperbound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_opt2upperbound as text
%        str2double(get(hObject,'String')) returns contents of Input_opt2upperbound as a double
guidata(hObject, handles);
set(hObject, 'Enable', 'on');
handles = guidata(hObject);
handles.in_opt2upperound = get(hObject,'String');
%temp_input = handles.in_opt1upperbound;
input_lower2 = get(handles.Input_opt2lowerbound, 'String');
input_upper2 = get(handles.Input_opt2upperbound, 'String');
input_lower2 = str2double(input_lower2);
input_upper2 = str2double(input_upper2);
if input_upper2 < input_lower2
              warning('you must enter a valid trading date in the correct format. Check to ensure that the date entered is not a weekend or holiday');    
              set(handles.Input_opt2upperbound, 'string', handles.temp_opt2upperbound) 
              set(hObject, 'Enable', 'on');
              guidata(hObject, handles);
end 

guidata(hObject, handles);
set(hObject, 'Enable', 'Inactive');

% --- Executes during object creation, after setting all properties.
function Input_opt2upperbound_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_opt2upperbound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over Input_opt2upperbound.
function Input_opt2upperbound_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to Input_opt2upperbound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
guidata(hObject, handles);
handles.temp_opt2upperbound = get(handles.Input_opt2upperbound,'String');
%temp_input = handles.temp_opt1lowerbound;
guidata(hObject, handles);
set(hObject, 'Enable', 'on');


%XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
%                            PARAMETER INPUTS
%XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


function Input_ContangoEntry_Callback(hObject, eventdata, handles)
% hObject    handle to Input_ContangoEntry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_ContangoEntry as text
%        str2double(get(hObject,'String')) returns contents of Input_ContangoEntry as a double
input = get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function Input_ContangoEntry_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_ContangoEntry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%===================


function Input_Contango30Entry_Callback(hObject, eventdata, handles)
% hObject    handle to Input_Contango30Entry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_Contango30Entry as text
%        str2double(get(hObject,'String')) returns contents of Input_Contango30Entry as a double
input = get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function Input_Contango30Entry_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_Contango30Entry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%===================


function Input_ContangoExit_Callback(hObject, eventdata, handles)
% hObject    handle to Input_ContangoExit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_ContangoExit as text
%        str2double(get(hObject,'String')) returns contents of Input_ContangoExit as a double
input = get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function Input_ContangoExit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_ContangoExit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%===================


function Input_Contango30Exit_Callback(hObject, eventdata, handles)
% hObject    handle to Input_Contango30Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_Contango30Exit as text
%        str2double(get(hObject,'String')) returns contents of Input_Contango30Exit as a double
input = get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function Input_Contango30Exit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_Contango30Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%===================


function Input_LongContangoEntry_Callback(hObject, eventdata, handles)
% hObject    handle to Input_LongContangoEntry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_LongContangoEntry as text
%        str2double(get(hObject,'String')) returns contents of Input_LongContangoEntry as a double
input = get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function Input_LongContangoEntry_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_LongContangoEntry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%===================


function Input_LongContango30Entry_Callback(hObject, eventdata, handles)
% hObject    handle to Input_LongContango30Entry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_LongContango30Entry as text
%        str2double(get(hObject,'String')) returns contents of Input_LongContango30Entry as a double
input = get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function Input_LongContango30Entry_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_LongContango30Entry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
%                    DATE/STOPLOSS/PORTFOLIO INPUTS
%XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


function Input_StartDate_Callback(hObject, eventdata, handles)
% hObject    handle to Input_StartDate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_StartDate as text
%        str2double(get(hObject,'String')) returns contents of Input_StartDate as a double
input = get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function Input_StartDate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_StartDate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%===================


function Input_EndDate_Callback(hObject, eventdata, handles)
% hObject    handle to Input_EndDate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_EndDate as text
%        str2double(get(hObject,'String')) returns contents of Input_EndDate as a double
input = get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function Input_EndDate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_EndDate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%===================


function Input_Stoploss_Callback(hObject, eventdata, handles)
% hObject    handle to Input_Stoploss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_Stoploss as text
%        str2double(get(hObject,'String')) returns contents of Input_Stoploss as a double
input = get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function Input_Stoploss_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_Stoploss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%===================


function Input_InitialPortfolio_Callback(hObject, eventdata, handles)
% hObject    handle to Input_InitialPortfolio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_InitialPortfolio as text
%        str2double(get(hObject,'String')) returns contents of Input_InitialPortfolio as a double
input = get(hObject,'String');
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function Input_InitialPortfolio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_InitialPortfolio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



%XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
%                            RADIO PANELS
%XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

%--------------------------------------------------------------------------
% PANEL 1

% --- Executes when selected object is changed in radiopanel1.
function radiopanel1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in radiopanel1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OptimizedParameter1Button = get(handles.radiopanel1,'SelectedObject');
OptimizedParameter1String = get(OptimizedParameter1Button, 'String');

set(handles.OptimizedParam1, 'String', OptimizedParameter1String)
%drawnow

OptimizedParameter2Button = get(handles.radiopanel2,'SelectedObject');
OptimizedParameter2String = get(OptimizedParameter2Button, 'String');

if strcmp(OptimizedParameter1String,OptimizedParameter2String)

%    set(handles.Input_opt2numofsteps, 'String', '0')
%    set(handles.Input_opt2lowerbound, 'String', '0')
%    set(handles.Input_opt2upperbound, 'String', '0')
    set(handles.Input_opt2numofsteps, 'enable', 'off')
    set(handles.Input_opt2lowerbound, 'enable', 'off')
    set(handles.Input_opt2upperbound, 'enable', 'off')
    
        if strcmp(OptimizedParameter1String, 'ContangoEntry')   
            set(handles.Input_ContangoEntry, 'enable', 'off')

            set(handles.Input_Contango30Entry, 'enable', 'on')         
            set(handles.Input_ContangoExit, 'enable', 'on')       
            set(handles.Input_Contango30Exit, 'enable', 'on')       
            set(handles.Input_LongContangoEntry, 'enable', 'on')    
            set(handles.Input_LongContango30Entry, 'enable', 'on') 
            
        elseif strcmp(OptimizedParameter1String, 'Contango30Entry')    
            set(handles.Input_Contango30Entry, 'enable', 'off')

            set(handles.Input_ContangoEntry, 'enable', 'on')        
            set(handles.Input_ContangoExit, 'enable', 'on')       
            set(handles.Input_Contango30Exit, 'enable', 'on')       
            set(handles.Input_LongContangoEntry, 'enable', 'on')    
            set(handles.Input_LongContango30Entry, 'enable', 'on') 
            
        elseif strcmp(OptimizedParameter1String, 'ContangoExit')
            set(handles.Input_ContangoExit, 'enable', 'off') 

            set(handles.Input_ContangoEntry, 'enable', 'on') 
            set(handles.Input_Contango30Entry, 'enable', 'on')             
            set(handles.Input_Contango30Exit, 'enable', 'on')       
            set(handles.Input_LongContangoEntry, 'enable', 'on')    
            set(handles.Input_LongContango30Entry, 'enable', 'on')  
            
        elseif strcmp(OptimizedParameter1String,  'Contango30Exit')
            set(handles.Input_Contango30Exit, 'enable', 'off') 

            set(handles.Input_ContangoEntry, 'enable', 'on') 
            set(handles.Input_Contango30Entry, 'enable', 'on')         
            set(handles.Input_ContangoExit, 'enable', 'on')            
            set(handles.Input_LongContangoEntry, 'enable', 'on')    
            set(handles.Input_LongContango30Entry, 'enable', 'on')
            
        elseif strcmp(OptimizedParameter1String, 'LongContangoEntry') 
            set(handles.Input_LongContangoEntry, 'enable', 'off') 

            set(handles.Input_ContangoEntry, 'enable', 'on') 
            set(handles.Input_Contango30Entry, 'enable', 'on')         
            set(handles.Input_ContangoExit, 'enable', 'on')       
            set(handles.Input_Contango30Exit, 'enable', 'on')         
            set(handles.Input_LongContango30Entry, 'enable', 'on')
            
        elseif strcmp(OptimizedParameter1String,  'LongContango30Entry')     
            set(handles.Input_LongContango30Entry, 'enable', 'off')
            
            set(handles.Input_ContangoEntry, 'enable', 'on') 
            set(handles.Input_Contango30Entry, 'enable', 'on')         
            set(handles.Input_ContangoExit, 'enable', 'on')       
            set(handles.Input_Contango30Exit, 'enable', 'on')       
            set(handles.Input_LongContangoEntry, 'enable', 'on')                 
            %set(handles.input_Contango30Entry, 'string', '0.10')  
            
        end
        

else 
    
    
    set(handles.Input_ContangoEntry, 'enable', 'on')    
    set(handles.Input_Contango30Entry, 'enable', 'on')
    set(handles.Input_ContangoExit, 'enable', 'on') 
    set(handles.Input_Contango30Exit, 'enable', 'on') 
    set(handles.Input_LongContangoEntry, 'enable', 'on')   
    set(handles.Input_LongContango30Entry, 'enable', 'on')
    
    set(handles.Input_opt2numofsteps, 'enable', 'on')
    set(handles.Input_opt2lowerbound, 'enable', 'on')
    set(handles.Input_opt2upperbound, 'enable', 'on')        
     
    
        if strcmp(OptimizedParameter1String, 'ContangoEntry') || strcmp(OptimizedParameter2String, 'ContangoEntry')   
            set(handles.Input_ContangoEntry, 'enable', 'off') 
        end
        
        if strcmp(OptimizedParameter1String, 'Contango30Entry') || strcmp(OptimizedParameter2String, 'Contango30Entry')   
            set(handles.Input_Contango30Entry, 'enable', 'off')
        end
        
        if strcmp(OptimizedParameter1String, 'ContangoExit') || strcmp(OptimizedParameter2String, 'ContangoExit')
            set(handles.Input_ContangoExit, 'enable', 'off')   
        end
        
        if strcmp(OptimizedParameter1String,  'Contango30Exit') || strcmp(OptimizedParameter2String, 'Contango30Exit')
            set(handles.Input_Contango30Exit, 'enable', 'off') 
        end
        
        if strcmp(OptimizedParameter1String, 'LongContangoEntry') || strcmp(OptimizedParameter2String, 'LongContangoEntry')
            set(handles.Input_LongContangoEntry, 'enable', 'off') 
        end
        
        if strcmp(OptimizedParameter1String,  'LongContango30Entry') || strcmp(OptimizedParameter2String, 'LongContango30Entry')     
            set(handles.Input_LongContango30Entry, 'enable', 'off')     
        end
    
    
    
    
    
end        
        
guidata(hObject, handles);


%--------------------------------------------------------------------------
% PANEL 2


% --- Executes when selected object is changed in radiopanel2.
function radiopanel2_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in radiopanel2 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
OptimizedParameter1Button = get(handles.radiopanel1,'SelectedObject');
OptimizedParameter1String = get(OptimizedParameter1Button, 'String');

OptimizedParameter2Button = get(handles.radiopanel2,'SelectedObject');
OptimizedParameter2String = get(OptimizedParameter2Button, 'String');

set(handles.OptimizedParam2, 'String', OptimizedParameter2String)
%drawnow

if strcmp(OptimizedParameter1String,OptimizedParameter2String)
    
%    set(handles.Input_opt2numofsteps, 'String', '0')
%    set(handles.Input_opt2lowerbound, 'String', '0')
%    set(handles.Input_opt2upperbound, 'String', '0')    
    set(handles.Input_opt2numofsteps, 'enable', 'off')
    set(handles.Input_opt2lowerbound, 'enable', 'off')
    set(handles.Input_opt2upperbound, 'enable', 'off')
    
        if strcmp(OptimizedParameter2String, 'ContangoEntry')   
            set(handles.Input_ContangoEntry, 'enable', 'off')

            set(handles.Input_Contango30Entry, 'enable', 'on')         
            set(handles.Input_ContangoExit, 'enable', 'on')       
            set(handles.Input_Contango30Exit, 'enable', 'on')       
            set(handles.Input_LongContangoEntry, 'enable', 'on')    
            set(handles.Input_LongContango30Entry, 'enable', 'on') 
            
        elseif strcmp(OptimizedParameter2String, 'Contango30Entry')    
            set(handles.Input_Contango30Entry, 'enable', 'off')

            set(handles.Input_ContangoEntry, 'enable', 'on')        
            set(handles.Input_ContangoExit, 'enable', 'on')       
            set(handles.Input_Contango30Exit, 'enable', 'on')       
            set(handles.Input_LongContangoEntry, 'enable', 'on')    
            set(handles.Input_LongContango30Entry, 'enable', 'on') 

        elseif strcmp(OptimizedParameter2String, 'ContangoExit')
            set(handles.Input_ContangoExit, 'enable', 'off') 

            set(handles.Input_ContangoEntry, 'enable', 'on') 
            set(handles.Input_Contango30Entry, 'enable', 'on')             
            set(handles.Input_Contango30Exit, 'enable', 'on')       
            set(handles.Input_LongContangoEntry, 'enable', 'on')    
            set(handles.Input_LongContango30Entry, 'enable', 'on')  

        elseif strcmp(OptimizedParameter2String,  'Contango30Exit')
            set(handles.Input_Contango30Exit, 'enable', 'off') 

            set(handles.Input_ContangoEntry, 'enable', 'on') 
            set(handles.Input_Contango30Entry, 'enable', 'on')         
            set(handles.Input_ContangoExit, 'enable', 'on')            
            set(handles.Input_LongContangoEntry, 'enable', 'on')    
            set(handles.Input_LongContango30Entry, 'enable', 'on')

        elseif strcmp(OptimizedParameter2String, 'LongContangoEntry') 
            set(handles.Input_LongContangoEntry, 'enable', 'off') 

            set(handles.Input_ContangoEntry, 'enable', 'on') 
            set(handles.Input_Contango30Entry, 'enable', 'on')         
            set(handles.Input_ContangoExit, 'enable', 'on')       
            set(handles.Input_Contango30Exit, 'enable', 'on')         
            set(handles.Input_LongContango30Entry, 'enable', 'on')

        elseif strcmp(OptimizedParameter2String,  'LongContango30Entry')     
            set(handles.Input_LongContango30Entry, 'enable', 'off')
            
            set(handles.Input_ContangoEntry, 'enable', 'on') 
            set(handles.Input_Contango30Entry, 'enable', 'on')         
            set(handles.Input_ContangoExit, 'enable', 'on')       
            set(handles.Input_Contango30Exit, 'enable', 'on')       
            set(handles.Input_LongContangoEntry, 'enable', 'on')
            
        end
        

else
    
    set(handles.Input_ContangoEntry, 'enable', 'on')    
    set(handles.Input_Contango30Entry, 'enable', 'on')
    set(handles.Input_ContangoExit, 'enable', 'on') 
    set(handles.Input_Contango30Exit, 'enable', 'on') 
    set(handles.Input_LongContangoEntry, 'enable', 'on')   
    set(handles.Input_LongContango30Entry, 'enable', 'on')    
    
    set(handles.Input_opt2numofsteps, 'enable', 'on')
    set(handles.Input_opt2lowerbound, 'enable', 'on')
    set(handles.Input_opt2upperbound, 'enable', 'on')     
    

        if strcmp(OptimizedParameter2String, 'ContangoEntry') || strcmp(OptimizedParameter1String, 'ContangoEntry')  
            set(handles.Input_ContangoEntry, 'enable', 'off') 
        end
        
        if strcmp(OptimizedParameter2String, 'Contango30Entry') || strcmp(OptimizedParameter1String, 'Contango30Entry')    
            set(handles.Input_Contango30Entry, 'enable', 'off')
        end
        
        if strcmp(OptimizedParameter2String, 'ContangoExit') || strcmp(OptimizedParameter1String, 'ContangoExit')
            set(handles.Input_ContangoExit, 'enable', 'off')   
        end
        
        if strcmp(OptimizedParameter2String,  'Contango30Exit') || strcmp(OptimizedParameter1String, 'Contango30Exit')
            set(handles.Input_Contango30Exit, 'enable', 'off') 
        end
        
        if strcmp(OptimizedParameter2String, 'LongContangoEntry') || strcmp(OptimizedParameter1String, 'LongContangoEntry') 
            set(handles.Input_LongContangoEntry, 'enable', 'off') 
        end
        
        if strcmp(OptimizedParameter2String,  'LongContango30Entry') || strcmp(OptimizedParameter1String, 'LongContango30Entry')     
            set(handles.Input_LongContango30Entry, 'enable', 'off')     
        end    
    
    
end        
        
guidata(hObject, handles);








%XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
%                            RUN BUTTON
%XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


% --- Executes on button press in Run_LO.

function Run_LO_Callback(hObject, eventdata, handles)
% hObject    handle to Run_LO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

OptimizedParameter1Button = get(handles.radiopanel1,'SelectedObject');
OptimizedParameter1String = get(OptimizedParameter1Button, 'String');

OptimizedParameter2Button = get(handles.radiopanel2,'SelectedObject');
OptimizedParameter2String = get(OptimizedParameter2Button, 'String');

status_error3 = 'Setting default parameters';
status_error2 = 'Setting default dates';
status_error = 'Error Occurred - Check Dates';
status_start = 'Initialized';
status_run = 'Running';
status_end = 'Finished';
set(handles.status_GUI,'String',status_run);
%drawnow;
previousrun = get(handles.OutputTextBox,'String');
previousrun = previousrun(8:end);
previousrun = cellstr(previousrun);
previousrun = vertcat('Previous Run:',previousrun);
set(handles.OutputTextBox,'String', previousrun);    
%drawnow;

opt1numofsteps = get(handles.Input_opt1numofsteps,'String');
opt1lowerbound = get(handles.Input_opt1lowerbound,'String');
opt1upperbound = get(handles.Input_opt1upperbound,'String');

opt1numofsteps = str2num(opt1numofsteps);
opt1lowerbound = str2num(opt1lowerbound);
opt1upperbound = str2num(opt1upperbound);

opt2numofsteps = get(handles.Input_opt2numofsteps,'String');
opt2lowerbound = get(handles.Input_opt2lowerbound,'String');
opt2upperbound = get(handles.Input_opt2upperbound,'String');

opt2numofsteps = str2num(opt2numofsteps);
opt2lowerbound = str2num(opt2lowerbound);
opt2upperbound = str2num(opt2upperbound);


%----------------------------------------------------
% deal with the dates!!!

         startdate_string = get(handles.Input_StartDate,'String');
         enddate_string = get(handles.Input_EndDate,'String');
         
         if strcmp (startdate_string, 'MM/DD/YYYY') || strcmp (enddate_string , 'MM/DD/YYYY')
             set(handles.status_GUI,'String',status_error);
             warning('you must enter a valid trading date in the correct format. Check to ensure that the date entered is not a weekend or holiday'); 
             pause(2)
             set(handles.status_GUI,'String',status_error2);
             set(handles.Input_StartDate,'String', '08/21/2006');
             set(handles.Input_EndDate,'String', '12/27/2017');             
             pause(2)
             clc
             set(handles.OutputTextBox,'String', '');
             set(handles.status_GUI,'String',status_start);
             %drawnow;
             startdate_string = '08/21/2006';
             enddate_string = '12/27/2017';
         %return;
         end
         
         Serial_startdate = datenum(startdate_string,'mm/dd/yyyy');
         Serial_enddate = datenum(enddate_string,'mm/dd/yyyy');
         
         datecheck = 1; beginningdate = '08/20/2006'; finaldate = '12/28/2017';
         
         if Serial_startdate < datenum(beginningdate,'mm/dd/yyyy');
         datecheck = 0;
         end
         if Serial_enddate > datenum(finaldate,'mm/dd/yyyy');
         datecheck = 0;
         end
         
        ProperDates = isbusday(startdate_string) && isbusday(enddate_string) && datecheck == 1 ;

          if ProperDates == 0
             set(handles.status_GUI,'String',status_error);
             warning('you must enter a valid trading date in the correct format. Check to ensure that the date entered is not a weekend or holiday'); 
             pause(2)
             clc
             set(handles.status_GUI,'String',status_start);
             set(handles.OutputTextBox,'String', '');
             %drawnow;
             return;
             
          end        

%----------------------------------------------------

stoploss_string = get(handles.Input_Stoploss,'String');
StopLoss = str2num(stoploss_string);

initialportfolio_string = get(handles.Input_InitialPortfolio,'String');
initialportfolio = str2num(initialportfolio_string);

Commission_string = get(handles.Input_Commission,'String');
Commission = str2num(Commission_string);

ContangoEntry = get(handles.Input_ContangoEntry,'String');
Contango30Entry = get(handles.Input_Contango30Entry,'String');
ContangoExit = get(handles.Input_ContangoExit,'String');
Contango30Exit = get(handles.Input_Contango30Exit,'String');
LongContangoEntry = get(handles.Input_LongContangoEntry,'String');
LongContango30Entry = get(handles.Input_LongContango30Entry,'String');

ContangoEntry = str2num(ContangoEntry);
Contango30Entry = str2num(Contango30Entry);
ContangoExit = str2num(ContangoExit);
Contango30Exit = str2num(Contango30Exit);
LongContangoEntry = str2num(LongContangoEntry);
LongContango30Entry = str2num(LongContango30Entry);

if ContangoEntry == 0 && Contango30Entry == 0 && ContangoExit == 0 && Contango30Exit == 0 && LongContangoEntry == 0 && LongContango30Entry == 0

    
ContangoEntry = 0.08;
Contango30Entry = 0.1;
ContangoExit = 0.035;
Contango30Exit = 0.1;
LongContangoEntry = -0.05;
LongContango30Entry = 0;

set(handles.status_GUI,'String',status_error3);
             
set(handles.Input_ContangoEntry,'String',ContangoEntry);
set(handles.Input_Contango30Entry,'String',Contango30Entry);
set(handles.Input_ContangoExit,'String',ContangoExit);
set(handles.Input_Contango30Exit,'String',Contango30Exit);
set(handles.Input_LongContangoEntry,'String',LongContangoEntry);
set(handles.Input_LongContango30Entry,'String',LongContango30Entry);

pause(2)

set(handles.status_GUI,'String',status_start);
end

%StrategyIsEmpty = exist('StrategyPath');
%if StrategyIsEmpty == 0
%StrategyPath = 'default';
%SelectedStrategy = 'Gouldii_Strategy_Prime.m';
%else
StrategyPath = handles.StrategyPath;
SelectedStrategy = handles.SelectedStrategy;
   
%end    

%call the LO code here

%try
[OptContangoEntry,OptContango30Entry,OptContangoExit,OptContango30Exit,OptLongContangoEntry,OptLongContango30Entry,OptMaxDD,OptNetProfit,OptSharpeRatio,OptAnnualizedReturn] = Gouldii_SignalsLinearOptimizer(StrategyPath, SelectedStrategy, Commission, initialportfolio, StopLoss,Serial_startdate,Serial_enddate,OptimizedParameter1String,opt1numofsteps,opt1lowerbound,opt1upperbound,OptimizedParameter2String,opt2numofsteps,opt2lowerbound,opt2upperbound,ContangoEntry,Contango30Entry,ContangoExit,Contango30Exit,LongContangoEntry,LongContango30Entry);

%catch
% fprintf('Error in code');   
%end


            set(handles.Input_ContangoEntry, 'String', OptContangoEntry) 
            set(handles.Input_Contango30Entry, 'String', OptContango30Entry)         
            set(handles.Input_ContangoExit, 'String', OptContangoExit)       
            set(handles.Input_Contango30Exit, 'String', OptContango30Exit)       
            set(handles.Input_LongContangoEntry, 'String', OptLongContangoEntry)    
            set(handles.Input_LongContango30Entry,'String', OptLongContango30Entry) 
            
            
opt1output = sprintf('ContangoEntry = %.3f',OptContangoEntry);
opt2output = sprintf('Contango30Entry = %.3f',OptContango30Entry);   
opt3output = sprintf('ContangoExit = %.3f',OptContangoExit);        
opt4output = sprintf('Contango30Exit = %.3f',OptContango30Exit);
opt5output = sprintf('LongContangoEntry = %.3f',OptLongContangoEntry);
opt6output = sprintf('LongContango30Entry = %.3f',OptLongContango30Entry);
opt7output = sprintf('MaxDD = %.3f', OptMaxDD);
opt8output = sprintf('NetProfit = %.1f', OptNetProfit);
opt9output = sprintf('SharpeRatio = %.3f', OptSharpeRatio);
opt10output = sprintf('AnnualizedReturn = %.3f', OptAnnualizedReturn);

resultstitle = cellstr('Optimal Results:');


outputstring = {opt1output;
                opt2output;
                opt3output;
                opt4output;
                opt5output;
                opt6output;
                opt7output;
                opt8output;
                opt9output;
                opt10output};
            
outputstring = vertcat(resultstitle, outputstring);

xlswrite('LinearOptParams.xlsx',outputstring);

previousrun = get(handles.OutputTextBox,'String');
set(handles.PreviousTextbox,'String', previousrun);

set(handles.OutputTextBox,'String', outputstring)             
            
            %set(handles.input_Contango30Entry, 'string', '0.10') 
set(handles.status_GUI,'String',status_end);
pause(5)
set(handles.status_GUI,'String',status_start);
guidata(hObject, handles);


% --- Executes on button press in Strategy_button.
function Strategy_button_Callback(hObject, eventdata, handles)
% hObject    handle to Strategy_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%[FileName,PathName] = uigetfile('*.m','Select a strategy');
[FileName,PathName] = uigetfile(fullfile(pwd,'Strategies','Select a strategy'));
SelectedStrategy = FileName;
StrategyPath = PathName;

handles.SelectedStrategy = SelectedStrategy;
handles.StrategyPath = StrategyPath;

set(handles.Static_Strategy,'String',SelectedStrategy);
set(handles.Static_StrategyPath,'String',StrategyPath);

guidata(hObject, handles);



function Input_Commission_Callback(hObject, eventdata, handles)
% hObject    handle to Input_Commission (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Input_Commission as text
%        str2double(get(hObject,'String')) returns contents of Input_Commission as a double
input = get(hObject,'String');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function Input_Commission_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Input_Commission (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Stop_button.
function Stop_button_Callback(hObject, eventdata, handles)
% hObject    handle to Stop_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
