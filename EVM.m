function varargout = EVM(varargin)
% EVM MATLAB code for EVM.fig
%      EVM, by itself, creates a new EVM or raises the existing
%      singleton*.
%
%      H = EVM returns the handle to a new EVM or the handle to
%      the existing singleton*.
%
%      EVM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EVM.M with the given input arguments.
%
%      EVM('Property','Value',...) creates a new EVM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EVM_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EVM_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EVM

% Last Modified by GUIDE v2.5 07-Dec-2016 22:56:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EVM_OpeningFcn, ...
                   'gui_OutputFcn',  @EVM_OutputFcn, ...
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


% --- Executes just before EVM is made visible.
function EVM_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EVM (see VARARGIN)

% Choose default command line output for EVM
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EVM wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global Akshay;
global Amol;
global Utpal;
global Sonu;
global Raj;
Akshay=0;
Amol=0;
Utpal=0;
Sonu=0;
Raj=0;

% --- Outputs from this function are returned to the command line.
function varargout = EVM_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




% --- Executes on button press in Akshay.
function Akshay_Callback(hObject, eventdata, handles)
% hObject    handle to Akshay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Akshay;
global Amol;
global Utpal;
global Sonu;
global Raj;

Akshay=Akshay+1;
load chirp.mat;
for i=1:1:5
    sound(y, Fs);
end

% --- Executes on button press in Amol.
function Amol_Callback(hObject, eventdata, handles)
% hObject    handle to Amol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Akshay;
global Amol;
global Utpal;
global Sonu;
global Raj;

Amol=Amol+1;
load chirp.mat;
for i=1:1:5
    sound(y, Fs);
end

% --- Executes on button press in Utpal.
function Utpal_Callback(hObject, eventdata, handles)
% hObject    handle to Utpal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Akshay;
global Amol;
global Utpal;
global Sonu;
global Raj;

Utpal=Utpal+1;
load chirp.mat;
for i=1:1:5
    sound(y, Fs);
end

% --- Executes on button press in Sonu.
function Sonu_Callback(hObject, eventdata, handles)
% hObject    handle to Sonu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Akshay;
global Amol;
global Utpal;
global Sonu;
global Raj;

Sonu=Sonu+1;
load chirp.mat;
for i=1:1:5
    sound(y, Fs);
end

% --- Executes on button press in Raj.
function Raj_Callback(hObject, eventdata, handles)
% hObject    handle to Raj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Akshay;
global Amol;
global Utpal;
global Sonu;
global Raj;

Raj=Raj+1;
load chirp.mat;
for i=1:1:5
    sound(y, Fs);
end

% --- Executes on button press in RESULTS.
function RESULTS_Callback(hObject, eventdata, handles)
% hObject    handle to RESULTS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Akshay;
global Amol;
global Utpal;
global Sonu;
global Raj;

set(handles.Aks,'String',Akshay);
set(handles.Amo,'String',Amol);
set(handles.Son,'String',Sonu);
set(handles.Utp,'String',Utpal);
set(handles.Rj,'String',Raj);

set(handles.Aks1,'String',100*Akshay/(Akshay+Amol+Sonu+Utpal+Raj));
set(handles.Amo1,'String',100*Amol/(Akshay+Amol+Sonu+Utpal+Raj));
set(handles.Son1,'String',100*Sonu/(Akshay+Amol+Sonu+Utpal+Raj));
set(handles.Utp1,'String',100*Utpal/(Akshay+Amol+Sonu+Utpal+Raj));
set(handles.Rj1,'String',100*Raj/(Akshay+Amol+Sonu+Utpal+Raj));

set(handles.total,'String',Akshay+Amol+Sonu+Utpal+Raj);
function Aks_Callback(hObject, eventdata, handles)
% hObject    handle to Aks (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Aks as text
%        str2double(get(hObject,'String')) returns contents of Aks as a double


% --- Executes during object creation, after setting all properties.
function Aks_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Aks (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Amo_Callback(hObject, eventdata, handles)
% hObject    handle to Amo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Amo as text
%        str2double(get(hObject,'String')) returns contents of Amo as a double


% --- Executes during object creation, after setting all properties.
function Amo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Amo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Son_Callback(hObject, eventdata, handles)
% hObject    handle to Son (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Son as text
%        str2double(get(hObject,'String')) returns contents of Son as a double


% --- Executes during object creation, after setting all properties.
function Son_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Son (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Utp_Callback(hObject, eventdata, handles)
% hObject    handle to Utp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Utp as text
%        str2double(get(hObject,'String')) returns contents of Utp as a double


% --- Executes during object creation, after setting all properties.
function Utp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Utp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rj_Callback(hObject, eventdata, handles)
% hObject    handle to Rj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rj as text
%        str2double(get(hObject,'String')) returns contents of Rj as a double


% --- Executes during object creation, after setting all properties.
function Rj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Aks1_Callback(hObject, eventdata, handles)
% hObject    handle to Aks1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Aks1 as text
%        str2double(get(hObject,'String')) returns contents of Aks1 as a double


% --- Executes during object creation, after setting all properties.
function Aks1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Aks1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Amo1_Callback(hObject, eventdata, handles)
% hObject    handle to Amo1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Amo1 as text
%        str2double(get(hObject,'String')) returns contents of Amo1 as a double


% --- Executes during object creation, after setting all properties.
function Amo1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Amo1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Utp1_Callback(hObject, eventdata, handles)
% hObject    handle to Utp1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Utp1 as text
%        str2double(get(hObject,'String')) returns contents of Utp1 as a double


% --- Executes during object creation, after setting all properties.
function Utp1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Utp1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Son1_Callback(hObject, eventdata, handles)
% hObject    handle to Son1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Son1 as text
%        str2double(get(hObject,'String')) returns contents of Son1 as a double


% --- Executes during object creation, after setting all properties.
function Son1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Son1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rj1_Callback(hObject, eventdata, handles)
% hObject    handle to Rj1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rj1 as text
%        str2double(get(hObject,'String')) returns contents of Rj1 as a double


% --- Executes during object creation, after setting all properties.
function Rj1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rj1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function total_Callback(hObject, eventdata, handles)
% hObject    handle to total (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of total as text
%        str2double(get(hObject,'String')) returns contents of total as a double


% --- Executes during object creation, after setting all properties.
function total_CreateFcn(hObject, eventdata, handles)
% hObject    handle to total (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
