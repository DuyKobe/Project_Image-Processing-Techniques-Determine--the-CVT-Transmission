function varargout = VD2vedothi(varargin)
% VD2VEDOTHI MATLAB code for VD2vedothi.fig
%      VD2VEDOTHI, by itself, creates a new VD2VEDOTHI or raises the existing
%      singleton*.
%
%      H = VD2VEDOTHI returns the handle to a new VD2VEDOTHI or the handle to
%      the existing singleton*.
%
%      VD2VEDOTHI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VD2VEDOTHI.M with the given input arguments.
%
%      VD2VEDOTHI('Property','Value',...) creates a new VD2VEDOTHI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VD2vedothi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VD2vedothi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VD2vedothi

% Last Modified by GUIDE v2.5 15-Oct-2022 17:46:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VD2vedothi_OpeningFcn, ...
                   'gui_OutputFcn',  @VD2vedothi_OutputFcn, ...
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


% --- Executes just before VD2vedothi is made visible.
function VD2vedothi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VD2vedothi (see VARARGIN)

% Choose default command line output for VD2vedothi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VD2vedothi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = VD2vedothi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
luachon = get(handles.luachon, 'value');
batluoi = get(handles.cb, 'value');
switch luachon
    case 1
axes (handles.axes1);
t = -pi:0.1:pi;
plot (t, sin(t),'r');
xlabel('time');
ylabel('Do lon');
if batluoi ==1
grid on ; 
else 
    grid off ;
end
case 2
axes (handles.axes1);
t = -pi:0.1:pi;
plot (t, cos(t),'b');
if batluoi ==1
grid on ; 
else 
    grid off ; 
end
xlabel('time');
ylabel('Do lon');
case 3
axes (handles.axes1);
t = -pi:0.1:pi;
plot (t, tan(t),'y');
if batluoi ==1
grid on ; 
else 
    grid off ; 
end 
xlabel('time');
ylabel('Do lon');
case 4
axes (handles.axes1);
t = -pi:0.1:pi;
plot (t, exp(t),'g');
if batluoi ==1
grid on ; 
else 
    grid off ; 
end
xlabel('time');
ylabel('Do lon');
end
% %axes(handles.axes2);
% t = -pi:0.1:pi;
% plot (t, cos(t), 'r');
% grid on ; 
% hold on;
% xlabel('time');
% ylabel('value');

 


% --- Executes on selection change in luachon.
function luachon_Callback(hObject, eventdata, handles)
% hObject    handle to luachon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns luachon contents as cell array
%        contents{get(hObject,'Value')} returns selected item from luachon


% --- Executes during object creation, after setting all properties.
function luachon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to luachon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function file_Callback(hObject, eventdata, handles)
% hObject    handle to file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function help_Callback(hObject, eventdata, handles)
% hObject    handle to help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function about_Callback(hObject, eventdata, handles)
% hObject    handle to about (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
web about.htm;

% --------------------------------------------------------------------
function newfile_Callback(hObject, eventdata, handles)
% hObject    handle to newfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function quit_Callback(hObject, eventdata, handles)
% hObject    handle to quit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = questdlg('Would you like to quit?', ...
                         'Choice menu', ...
                         'Yes', 'No', 'Yes');
switch choice 
    case Yes
        close
    case No
end
    


% --- Executes on button press in cb.
function cb_Callback(hObject, eventdata, handles)
% hObject    handle to cb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cb
