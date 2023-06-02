function varargout = wavegenerator(varargin)
% WAVEGENERATOR MATLAB code for wavegenerator.fig
%      WAVEGENERATOR, by itself, creates a new WAVEGENERATOR or raises the existing
%      singleton*.
%
%      H = WAVEGENERATOR returns the handle to a new WAVEGENERATOR or the handle to
%      the existing singleton*.
%
%      WAVEGENERATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WAVEGENERATOR.M with the given input arguments.
%
%      WAVEGENERATOR('Property','Value',...) creates a new WAVEGENERATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before wavegenerator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to wavegenerator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help wavegenerator

% Last Modified by GUIDE v2.5 12-May-2023 14:55:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @wavegenerator_OpeningFcn, ...
                   'gui_OutputFcn',  @wavegenerator_OutputFcn, ...
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


% --- Executes just before wavegenerator is made visible.
function wavegenerator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to wavegenerator (see VARARGIN)

% Choose default command line output for wavegenerator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes wavegenerator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = wavegenerator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in sinewave.
function sinewave_Callback(hObject, eventdata, handles)
% hObject    handle to sinewave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fs=str2double(get(handles.input,'string'));
%fs = 512;                    % Sampling frequency (samples per second)
dt = 1/fs;                   % seconds per sample
StopTime = 0.25;             % seconds
t = (0:dt:StopTime-dt)';     % seconds
F = 60;                      % Sine wave frequency (hertz)
data = sin(2*pi*F*t);
plot(data)
grid on

% --- Executes on button press in cosinewave.
function cosinewave_Callback(hObject, eventdata, handles)
% hObject    handle to cosinewave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fs=str2double(get(handles.input,'string'));
%fs = 512;                    % Sampling frequency (samples per second)
dt = 1/fs;                   % seconds per sample
StopTime = 0.25;             % seconds
t = (0:dt:StopTime-dt)';     % seconds
F = 60;                      % Sine wave frequency (hertz)
data = cos(2*pi*F*t);
plot(data)
grid on


function input_Callback(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input as text
%        str2double(get(hObject,'String')) returns contents of input as a double


% --- Executes during object creation, after setting all properties.
function input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
