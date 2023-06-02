function varargout = VD1(varargin)
% VD1 MATLAB code for VD1.fig
%      VD1, by itself, creates a new VD1 or raises the existing
%      singleton*.
%
%      H = VD1 returns the handle to a new VD1 or the handle to
%      the existing singleton*.
%
%      VD1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VD1.M with the given input arguments.
%
%      VD1('Property','Value',...) creates a new VD1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VD1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VD1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VD1

% Last Modified by GUIDE v2.5 08-Oct-2022 21:29:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VD1_OpeningFcn, ...
                   'gui_OutputFcn',  @VD1_OutputFcn, ...
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


% --- Executes just before VD1 is made visible.
function VD1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VD1 (see VARARGIN)

% Choose default command line output for VD1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VD1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = VD1_OutputFcn(hObject, eventdata, handles) 
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
