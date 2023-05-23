function varargout = currencyconversion(varargin)
% CURRENCYCONVERSION MATLAB code for currencyconversion.fig
%      CURRENCYCONVERSION, by itself, creates a new CURRENCYCONVERSION or raises the existing
%      singleton*.
%
%      H = CURRENCYCONVERSION returns the handle to a new CURRENCYCONVERSION or the handle to
%      the existing singleton*.
%
%      CURRENCYCONVERSION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CURRENCYCONVERSION.M with the given IN arguments.
%
%      CURRENCYCONVERSION('Property','Value',...) creates a new CURRENCYCONVERSION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before currencyconversion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to currencyconversion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help currencyconversion

% Last Modified by GUIDE v2.5 11-May-2023 14:48:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @currencyconversion_OpeningFcn, ...
                   'gui_OutputFcn',  @currencyconversion_OutputFcn, ...
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


% --- Executes just before currencyconversion is made visible.
function currencyconversion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no OUT args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to currencyconversion (see VARARGIN)

% Choose default command line OUT for currencyconversion
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes currencyconversion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = currencyconversion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning OUT args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line OUT from handles structure
varargout{1} = handles.output;



function OUT_Callback(hObject, eventdata, handles)
% hObject    handle to OUT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of OUT as text
%        str2double(get(hObject,'String')) returns contents of OUT as a double


% --- Executes during object creation, after setting all properties.
function OUT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OUT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function BUTTON_Callback(hObject, eventdata, handles)
% hObject    handle to BUTTON (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=str2double(get(handles.OUT,'string'));
C=(83) * A;
set(handles.IN,'string',C); 
% Hint: get(hObject,'Value') returns toggle state of BUTTON


function IN_Callback(hObject, eventdata, handles)
% hObject    handle to IN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of IN as text
%        str2double(get(hObject,'String')) returns contents of IN as a double


% --- Executes during object creation, after setting all properties.
function IN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to IN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on BUTTON press in BUTTON.
