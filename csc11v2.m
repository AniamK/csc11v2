function varargout = csc11v2(varargin)
% CSC11V2 MATLAB code for csc11v2.fig
%      CSC11V2, by itself, creates a new CSC11V2 or raises the existing
%      singleton*.
%
%      H = CSC11V2 returns the handle to a new CSC11V2 or the handle to
%      the existing singleton*.
%
%      CSC11V2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CSC11V2.M with the given input arguments.
%
%      CSC11V2('Property','Value',...) creates a new CSC11V2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before csc11v2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to csc11v2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help csc11v2

% Last Modified by GUIDE v2.5 18-Jan-2018 14:53:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @csc11v2_OpeningFcn, ...
                   'gui_OutputFcn',  @csc11v2_OutputFcn, ...
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


% --- Executes just before csc11v2 is made visible.
function csc11v2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to csc11v2 (see VARARGIN)

% Choose default command line output for csc11v2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes csc11v2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = csc11v2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btn_load.
function btn_load_Callback(hObject, eventdata, handles)
% hObject    handle to btn_load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname]=uigetfile('*.*','Choose an image');
imageData=imread(strcat(pathname,filename));
setappdata(handles.axes1,'imageData',imageData);
setappdata(handles.axes1,'fileName',filename);
axes(handles.axes1);
imshow(imageData);
set(handles.box_xcp,'string','0');
set(handles.box_ycp,'string','0');
set(handles.box_rcp,'string','0');
set(handles.box_xci,'string','0');
set(handles.box_yci,'string','0');
set(handles.box_rci,'string','0');


function box_xcp_Callback(hObject, eventdata, handles)
% hObject    handle to box_xcp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_xcp as text
%        str2double(get(hObject,'String')) returns contents of box_xcp as a double


% --- Executes during object creation, after setting all properties.
function box_xcp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_xcp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_ycp_Callback(hObject, eventdata, handles)
% hObject    handle to box_ycp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_ycp as text
%        str2double(get(hObject,'String')) returns contents of box_ycp as a double


% --- Executes during object creation, after setting all properties.
function box_ycp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_ycp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_rcp_Callback(hObject, eventdata, handles)
% hObject    handle to box_rcp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_rcp as text
%        str2double(get(hObject,'String')) returns contents of box_rcp as a double


% --- Executes during object creation, after setting all properties.
function box_rcp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_rcp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_xci_Callback(hObject, eventdata, handles)
% hObject    handle to box_xci (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_xci as text
%        str2double(get(hObject,'String')) returns contents of box_xci as a double


% --- Executes during object creation, after setting all properties.
function box_xci_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_xci (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_yci_Callback(hObject, eventdata, handles)
% hObject    handle to box_yci (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_yci as text
%        str2double(get(hObject,'String')) returns contents of box_yci as a double


% --- Executes during object creation, after setting all properties.
function box_yci_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_yci (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function box_rci_Callback(hObject, eventdata, handles)
% hObject    handle to box_rci (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box_rci as text
%        str2double(get(hObject,'String')) returns contents of box_rci as a double


% --- Executes during object creation, after setting all properties.
function box_rci_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box_rci (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_findPupil.
function btn_findPupil_Callback(hObject, eventdata, handles)
% hObject    handle to btn_findPupil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imageDataC = getappdata(handles.axes1,'imageData'); %get image from axes1
chbox = get(handles.chbox_anirudh, 'Value');
if(chbox==0)
    disp('checkbox was check');
    [imageDataC,center,radius] = coarse(imageDataC);
    %imshow(imageDataC);
    center = floor(center);
    radius = floor(radius);
    set(handles.box_xcp,'string',num2str(center(1)));
    set(handles.box_ycp,'string',num2str(center(2)));
    set(handles.box_rcp,'string',num2str(radius));
else
    disp('search iris by daugmans algorithm');
    [ci,cp,out] = thresh(imageDataC,110,160);
    set(handles.box_xcp,'string',num2str(cp(2)));
    set(handles.box_ycp,'string',num2str(cp(1)));
    set(handles.box_rcp,'string',num2str(cp(3)));
    set(handles.box_xci,'string',num2str(ci(2)));
    set(handles.box_yci,'string',num2str(ci(1)));
    set(handles.box_rci,'string',num2str(ci(3)));
    imshow(imageDataC);
    h = viscircles([cp(2),cp(1)],cp(3));
    h = viscircles([ci(2),ci(1)],ci(3));
    disp('aa complated');
end

% --- Executes on button press in btn_findIris.
function btn_findIris_Callback(hObject, eventdata, handles)
% hObject    handle to btn_findIris (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imageDataF = getappdata(handles.axes1,'imageData'); %get image from axes1
[center, radius] = fine(imageDataF);
set(handles.box_xci,'string',num2str(center(2)));
set(handles.box_yci,'string',num2str(center(1)));
set(handles.box_rci,'string',num2str(radius));

% --- Executes on button press in btn_local.
function btn_local_Callback(hObject, eventdata, handles)
% hObject    handle to btn_local (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imageData = getappdata(handles.axes1,'imageData'); %get image from axes1
imshow(imageData);
cp(1)=str2num(char(get(handles.box_xcp,'String')));
cp(2)=str2num(char(get(handles.box_ycp,'String')));
cp(3)=str2num(char(get(handles.box_rcp,'String')));
ci(1)=str2num(char(get(handles.box_xci,'String')));
ci(2)=str2num(char(get(handles.box_yci,'String')));
ci(3)=str2num(char(get(handles.box_rci,'String')));
h = viscircles([cp(1),cp(2)],cp(3));
h = viscircles([ci(1),ci(2)],ci(3));


% --- Executes on button press in btn_nor.
function btn_nor_Callback(hObject, eventdata, handles)
% hObject    handle to btn_nor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imageDataN = getappdata(handles.axes1,'imageData'); %get image from axes1
cp(1)=str2num(char(get(handles.box_xcp,'String')));
cp(2)=str2num(char(get(handles.box_ycp,'String')));
cp(3)=str2num(char(get(handles.box_rcp,'String')));
ci(1)=str2num(char(get(handles.box_xci,'String')));
ci(2)=str2num(char(get(handles.box_yci,'String')));
ci(3)=str2num(char(get(handles.box_rci,'String')));
[ring,parr]=normaliseiris(imageDataN,ci(1),ci(2),ci(3),cp(1),cp(2),cp(3),'normal.bmp',100,300);
parr=adapthisteq(parr);
%setappdata(handles.figure1,'imageData',parr);
setappdata(handles.axes1,'imageDataN',parr);
imshow(parr);
set(handles.btn_save,'Enable','on') 

% --- Executes on button press in btn_save.
function btn_save_Callback(hObject, eventdata, handles)
% hObject    handle to btn_save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
filename = getappdata(handles.axes1,'fileName'); %get image from axes1
[file,path] = uiputfile(filename,'Save file name');
save_dir = strcat(path,file);
disp(save_dir);
imageDataS = getappdata(handles.axes1,'imageDataN'); %get image from axes1
imwrite(imageDataS,save_dir);

% --- Executes on button press in chbox_anirudh.
function chbox_anirudh_Callback(hObject, eventdata, handles)
% hObject    handle to chbox_anirudh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chbox_anirudh
