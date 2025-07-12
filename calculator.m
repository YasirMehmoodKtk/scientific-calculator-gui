
              %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
              %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
              %                                                         %
              %                       Name    = Yasir Mehmood            %
              %                    Student ID = 318899                  %
              %                                                         %
              %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
              %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = calculator(varargin)
% CALCULATOR MATLAB code for calculator.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR.M with the given input arguments.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculator

% Last Modified by GUIDE v2.5 04-Aug-2020 09:31:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @calculator_OutputFcn, ...
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


% --- Executes just before calculator is made visible.
function calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculator (see VARARGIN)

% Choose default command line output for calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

global M;
M=0;
global shift
shift=0;

function disp_Callback(hObject, eventdata, handles)
% hObject    handle to disp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of disp as text
%        str2double(get(hObject,'String')) returns contents of disp as a double


% --- Executes during object creation, after setting all properties.
function disp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to disp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in mc.
function mc_Callback(hObject, eventdata, handles)
% hObject    handle to mc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global M;
M=0;


% --- Executes on button press in mr.
function mr_Callback(hObject, eventdata, handles)
% hObject    handle to mr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global M;
set(handles.disp,'String','');
set(handles.disp,'String',M);

% --- Executes on button press in mneg.
function mneg_Callback(hObject, eventdata, handles)
% hObject    handle to mneg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.disp,'string');
b=eval(a);
global M;
M=M-b;

% --- Executes on button press in mpos.
function mpos_Callback(hObject, eventdata, handles)
% hObject    handle to mpos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%M=[0];
a=get(handles.disp,'string');
b=eval(a);
global M;
M=M+b;




% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.disp,'String');
str=str(1:end-1);
set(handles.disp,'String',str);


% --- Executes on button press in reverse.
function reverse_Callback(hObject, eventdata, handles)
% hObject    handle to reverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat('-',s));


% --- Executes on button press in seven.
function seven_Callback(hObject, eventdata, handles)
% hObject    handle to seven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'7'));



% --- Executes on button press in eight.
function eight_Callback(hObject, eventdata, handles)
% hObject    handle to eight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'8'));


% --- Executes on button press in nine.
function nine_Callback(hObject, eventdata, handles)
% hObject    handle to nine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'9'));


% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'/'));


% --- Executes on button press in percent.
function percent_Callback(hObject, eventdata, handles)
% hObject    handle to percent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'/100'));


% --- Executes on button press in four.
function four_Callback(hObject, eventdata, handles)
% hObject    handle to four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'4'));


% --- Executes on button press in five.
function five_Callback(hObject, eventdata, handles)
% hObject    handle to five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'5'));


% --- Executes on button press in six.
function six_Callback(hObject, eventdata, handles)
% hObject    handle to six (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'6'));


% --- Executes on button press in multiply.
function multiply_Callback(hObject, eventdata, handles)
% hObject    handle to multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'*'));


% --- Executes on button press in openbrac.
function openbrac_Callback(hObject, eventdata, handles)
% hObject    handle to openbrac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'('));


% --- Executes on button press in one.
function one_Callback(hObject, eventdata, handles)
% hObject    handle to one (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'1'));


% --- Executes on button press in two.
function two_Callback(hObject, eventdata, handles)
% hObject    handle to two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%s=get(handles.disp,'String');
%set(handles.disp,'String',strcat(s,'2'));
p_val=get(handles.disp,'string');
val='2';
c_val=[p_val,val];
set(handles.disp,'string',c_val)


% --- Executes on button press in three.
function three_Callback(hObject, eventdata, handles)
% hObject    handle to three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'3'));


% --- Executes on button press in minus.
function minus_Callback(hObject, eventdata, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'-'));


% --- Executes on button press in closebrac.
function closebrac_Callback(hObject, eventdata, handles)
% hObject    handle to closebrac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,')'));


% --- Executes on button press in zero.
function zero_Callback(hObject, eventdata, handles)
% hObject    handle to zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'0'));


% --- Executes on button press in dot.
function dot_Callback(hObject, eventdata, handles)
% hObject    handle to dot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'.'));


% --- Executes on button press in equal.
function equal_Callback(hObject, eventdata, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.disp,'string');
b=eval(a);          % calculate value expression passed in a string
set(handles.disp,'string',b);



% --- Executes on button press in plus.
function plus_Callback(hObject, eventdata, handles)
% hObject    handle to plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'+'));


% --- Executes on button press in ce.
function ce_Callback(hObject, eventdata, handles)
% hObject    handle to ce (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global shift
set(handles.disp,'String','');
shift=0;

% --- Executes on button press in off.
function off_Callback(hObject, eventdata, handles)
% hObject    handle to off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
closereq();


% --- Executes on button press in shift.
function shift_Callback(hObject, eventdata, handles)
% hObject    handle to shift (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global shift
shift=1;
        

% --- Executes on button press in tan.
function tan_Callback(hObject, eventdata, handles)
% hObject    handle to tan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global shift
s=get(handles.disp,'String');
switch shift
    case 0
        set(handles.disp,'String',strcat(s,'tan('));
    case 1
        set(handles.disp,'String',strcat(s,'atan('));
        shift=0;
end

% --- Executes on button press in cos.
function cos_Callback(hObject, eventdata, handles)
% hObject    handle to cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global shift
s=get(handles.disp,'String');
switch shift
    case 0
        set(handles.disp,'String',strcat(s,'cos('));
    case 1
        set(handles.disp,'String',strcat(s,'acos('));
        shift=0;
end


% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)
% hObject    handle to sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global shift
s=get(handles.disp,'String');
switch shift
    case 0
        set(handles.disp,'String',strcat(s,'sin('));
    case 1
        set(handles.disp,'String',strcat(s,'asin('));
        shift=0;
end



% --- Executes on button press in exp.
function exp_Callback(hObject, eventdata, handles)
% hObject    handle to exp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global shift
s=get(handles.disp,'String');
switch shift
    case 0
        set(handles.disp,'String',strcat(s,'exp('));
    case 1
        set(handles.disp,'String',strcat(s,'10^('));
        shift=0;
end



% --- Executes on button press in natlog.
function natlog_Callback(hObject, eventdata, handles)
% hObject    handle to natlog (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global shift
s=get(handles.disp,'String');
switch shift
    case 0
        set(handles.disp,'String',strcat(s,'log('));
    case 1
        set(handles.disp,'String',strcat(s,'log10('));
        shift=0;
end



% --- Executes on button press in square.
function square_Callback(hObject, eventdata, handles)
% hObject    handle to square (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global shift
s=get(handles.disp,'String');
switch shift
    case 0
        set(handles.disp,'String',strcat(s,'^(2)'));
    case 1
        set(handles.disp,'String',strcat(s,'sqrt('));
        shift=0;
end


% --- Executes on button press in round.
function round_Callback(hObject, eventdata, handles)
% hObject    handle to round (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'round('));


% --- Executes on button press in hex.
function hex_Callback(hObject, eventdata, handles)
% hObject    handle to hex (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s=get(handles.disp,'String');
set(handles.disp,'String',strcat(s,'dec2hex('));
