function varargout = ESB07(varargin)
% ESB07 MATLAB code for ESB07.fig
%      ESB07, by itself, creates a new ESB07 or raises the existing
%      singleton*.
%
%      H = ESB07 returns the handle to a new ESB07 or the handle to
%      the existing singleton*.
%
%      ESB07('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ESB07.M with the given input arguments.
%
%      ESB07('Property','Value',...) creates a new ESB07 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ESB07_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ESB07_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ESB07

% Last Modified by GUIDE v2.5 25-Jul-2022 16:51:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ESB07_OpeningFcn, ...
                   'gui_OutputFcn',  @ESB07_OutputFcn, ...
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


% --- Executes just before ESB07 is made visible.
function ESB07_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ESB07 (see VARARGIN)

% Choose default command line output for ESB07
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ESB07 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ESB07_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in faultsort.
function faultsort_Callback(hObject, eventdata, handles)
sel = get(hObject,'value');
faultA = {'A1';'A2';'A3';'A4';'A5';'A6';'A7';'A8';'A9';'A10';'A11';'A12'};
faultB = {'B1';'B2';'B3';'B4';'B5';'B6';'B7';'B8'};
faultC = {'C1';'C2';'C3';'C4';'C5';'C6';'C7';'C8';'C9';'C10';'C11';'C12';'C13';'C14';'C15';'C16'};
faultD = {'D1';'D2';'D3';'D4';'D5';'D6';'D7'};
faultE = {'E1';'E2';'E3';'E4';'E5';'E6';'E7'};
faultF = {'F1';'F2';'F3';'F4';'F5'};
faultG = {'G1';'G2';'G3';'G4';'G5';'G6';'G7';'G8';'G9';'G10';'G11';'G12'};
faultH = {'H1';'H2';'H3'};
faultI = {'I1';'I2';'I3';'I4';'I5';'I6';'I7';'I8'};
faultJ = {'J1';'J2';'J3';'J4';'J5';'J6';'J7';'J8';'J9';'J10';'J11';'J12';'J13';'J14'};
faultK = {'K1';'K2';'K3';'K4'};
faultL = {'L1'};
faultM = {'M1';'M2';'M3';'M4';'M5';'M6';'M7';'M8'};
faultN = {'N1';'N2';'N3';'N4';'N5';'N6';'N7';'N8';'N9';'N10';'N11';'N12';'N13';'N14'};
faultO = {'O1';'O2';'O3';'O4';'O5';'O6'};
faultP = {'P1'};
faultQ = {'Q1'};
faultR = {'R1';'R2'};
faultS = {'S1'};
faultT = {'T1';'T2'};
faultU = {'U1';'U2';'U3';'U4'};
faultV = {'V1';'V2'};
faultW = {'W1'};
switch sel
    case 1
        set(handles.faultnum,'string','','value',1)
    case 2
        set(handles.faultnum,'string',faultA,'value',1)
    case 3
        set(handles.faultnum,'string',faultB,'value',1)
    case 4
        set(handles.faultnum,'string',faultC,'value',1)
    case 5
        set(handles.faultnum,'string',faultD,'value',1)
    case 6
        set(handles.faultnum,'string',faultE,'value',1)
    case 7
        set(handles.faultnum,'string',faultF,'value',1)
    case 8
        set(handles.faultnum,'string',faultG,'value',1)
    case 9
        set(handles.faultnum,'string',faultH,'value',1)
    case 10
        set(handles.faultnum,'string',faultI,'value',1)
    case 11
        set(handles.faultnum,'string',faultJ,'value',1)
    case 12
        set(handles.faultnum,'string',faultK,'value',1)
    case 13
        set(handles.faultnum,'string',faultL,'value',1)
    case 14
        set(handles.faultnum,'string',faultM,'value',1)
    case 15
        set(handles.faultnum,'string',faultN,'value',1)
    case 16
        set(handles.faultnum,'string',faultO,'value',1)
    case 17
        set(handles.faultnum,'string',faultP,'value',1)
    case 18
        set(handles.faultnum,'string',faultQ,'value',1)
    case 19
        set(handles.faultnum,'string',faultR,'value',1)
    case 20
        set(handles.faultnum,'string',faultS,'value',1)
    case 21
        set(handles.faultnum,'string',faultT,'value',1)
    case 22
        set(handles.faultnum,'string',faultU,'value',1)
    case 23
        set(handles.faultnum,'string',faultV,'value',1)
    case 24
        set(handles.faultnum,'string',faultW,'value',1)
end
% hObject    handle to faultsort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns faultsort contents as cell array
%        contents{get(hObject,'Value')} returns selected item from faultsort


% --- Executes during object creation, after setting all properties.
function faultsort_CreateFcn(hObject, eventdata, handles)
% hObject    handle to faultsort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in faultnum.
function faultnum_Callback(hObject, eventdata, handles)
if isequal(get(gcf,'SelectionType'),'open')
    faultnum = get(hObject,'string');
    num = get(hObject,'value');
    set(handles.fault_num_display,'string',faultnum{num});
end
% hObject    handle to faultnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns faultnum contents as cell array
%        contents{get(hObject,'Value')} returns selected item from faultnum


% --- Executes during object creation, after setting all properties.
function faultnum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to faultnum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_input.
function btn_input_Callback(hObject, eventdata, handles)
sel = get(handles.CNC_model,'value');
switch sel
    case 1
    case 2
        filename = 'NL502SC.xlsx';
    case 3
        filename = 'NL502S.xlsx';
end
sel2 = get(handles.fault_num_display,'string');
switch sel2
    case 'A1'
        nColumn = 'B';
    case 'A2'
        nColumn = 'C';
    case 'A3'
        nColumn = 'D';
    case 'A4'
        nColumn = 'E';
    case 'A5'
        nColumn = 'F';
    case 'A6'
        nColumn = 'G';
    case 'A7'
        nColumn = 'H';
    case 'A8'
        nColumn = 'I';
    case 'A9'
        nColumn = 'J';
    case 'A10'
        nColumn = 'K';
    case 'A11'
        nColumn = 'L';
    case 'A12'
        nColumn = 'M';
    case 'B1'
        nColumn = 'N';
    case 'B2'
        nColumn = 'O';
    case 'B3'
        nColumn = 'P';
    case 'B4'
        nColumn = 'Q';
    case 'B5'
        nColumn = 'R';
    case 'B6'
        nColumn = 'S';
    case 'B7'
        nColumn = 'T';
    case 'B8'
        nColumn = 'U';
    case 'C1'
        nColumn = 'V';
    case 'C2'
        nColumn = 'W';
    case 'C3'
        nColumn = 'X';
    case 'C4'
        nColumn = 'Y';
    case 'C5'
        nColumn = 'Z';
    case 'C6'
        nColumn = 'AA';
    case 'C7'
        nColumn = 'AB';
    case 'C8'
        nColumn = 'AC';
    case 'C9'
        nColumn = 'AD';
    case 'C10'
        nColumn = 'AE';
    case 'C11'
        nColumn = 'AF';
    case 'C12'
        nColumn = 'AG';
    case 'C13'
        nColumn = 'AH';
    case 'C14'
        nColumn = 'AI';
    case 'C15'
        nColumn = 'AJ';
    case 'C16'
        nColumn = 'AK';
    case 'D1'
        nColumn = 'AL';
    case 'D2'
        nColumn = 'AM';
    case 'D3'
        nColumn = 'AN';
    case 'D4'
        nColumn = 'AO';
    case 'D5'
        nColumn = 'AP';
    case 'D6'
        nColumn = 'AQ';
    case 'D7'
        nColumn = 'AR';
    case 'E1'
        nColumn = 'AS';
    case 'E2'
        nColumn = 'AT';
    case 'E3'
        nColumn = 'AU';
    case 'E4'
        nColumn = 'AV';
    case 'E5'
        nColumn = 'AW';
    case 'E6'
        nColumn = 'AX';
    case 'E7'
        nColumn = 'AY';
    case 'F1'
        nColumn = 'AZ';
    case 'F2'
        nColumn = 'BA';
    case 'F3'
        nColumn = 'BB';
    case 'F4'
        nColumn = 'BC';
    case 'F5'
        nColumn = 'BD';
    case 'G1'
        nColumn = 'BE';
    case 'G2'
        nColumn = 'BF';
    case 'G3'
        nColumn = 'BG';
    case 'G4'
        nColumn = 'BH';
    case 'G5'
        nColumn = 'BI';
    case 'G6'
        nColumn = 'BJ';
    case 'G7'
        nColumn = 'BK';
    case 'G8'
        nColumn = 'BL';
    case 'G9'
        nColumn = 'BM';
    case 'G10'
        nColumn = 'BN';
    case 'G11'
        nColumn = 'BO';
    case 'G12'
        nColumn = 'BP';
    case 'H1'
        nColumn = 'BQ';
    case 'H2'
        nColumn = 'BR';
    case 'H3'
        nColumn = 'BS';
    case 'I1'
        nColumn = 'BT';
    case 'I2'
        nColumn = 'BU';
    case 'I3'
        nColumn = 'BV';
    case 'I4'
        nColumn = 'BW';
    case 'I5'
        nColumn = 'BX';
    case 'I6'
        nColumn = 'BY';
    case 'I7'
        nColumn = 'BZ';
    case 'I8'
        nColumn = 'CA';
    case 'J1'
        nColumn = 'CB';
    case 'J2'
        nColumn = 'CC';
    case 'J3'
        nColumn = 'CD';
    case 'J4'
        nColumn = 'CE';
    case 'J5'
        nColumn = 'CF';
    case 'J6'
        nColumn = 'CG';
    case 'J7'
        nColumn = 'CH';
    case 'J8'
        nColumn = 'CI';
    case 'J9'
        nColumn = 'CJ';
    case 'J10'
        nColumn = 'CK';
    case 'J11'
        nColumn = 'CL';
    case 'J12'
        nColumn = 'CM';
    case 'J13'
        nColumn = 'CN';
    case 'J14'
        nColumn = 'CO';
    case 'K1'
        nColumn = 'CP';
    case 'K2'
        nColumn = 'CQ';
    case 'K3'
        nColumn = 'CR';
    case 'K4'
        nColumn = 'CS';
    case 'L1'
        nColumn = 'CT';
    case 'M1'
        nColumn = 'CU';
    case 'M2'
        nColumn = 'CV';
    case 'M3'
        nColumn = 'CW';
    case 'M4'
        nColumn = 'CX';
    case 'M5'
        nColumn = 'CY';
    case 'M6'
        nColumn = 'CZ';
    case 'M7'
        nColumn = 'DA';
    case 'M8'
        nColumn = 'DB';
    case 'N1'
        nColumn = 'BC';
    case 'N2'
        nColumn = 'DD';
    case 'N3'
        nColumn = 'DE';
    case 'N4'
        nColumn = 'DF';
    case 'N5'
        nColumn = 'DG';
    case 'N6'
        nColumn = 'DH';
    case 'N7'
        nColumn = 'DI';
    case 'N8'
        nColumn = 'DJ';
    case 'N9'
        nColumn = 'DK';
    case 'N10'
        nColumn = 'DL';
    case 'N11'
        nColumn = 'DM';
    case 'N12'
        nColumn = 'DN';
    case 'N13'
        nColumn = 'DO';
    case 'N14'
        nColumn = 'DP';
    case 'O1'
        nColumn = 'DQ';
    case 'O2'
        nColumn = 'DR';
    case 'O3'
        nColumn = 'DS';
    case 'O4'
        nColumn = 'DT';
    case 'O5'
        nColumn = 'DU';
    case 'O6'
        nColumn = 'DV';
    case 'P1'
        nColumn = 'DW';
    case 'Q1'
        nColumn = 'DX';
    case 'R1'
        nColumn = 'DY';
    case 'R2'
        nColumn = 'DZ';
    case 'S1'
        nColumn = 'EA';
    case 'T1'
        nColumn = 'EB';
    case 'T2'
        nColumn = 'EC';
    case 'U1'
        nColumn = 'ED';
    case 'U2'
        nColumn = 'EE';
    case 'U3'
        nColumn = 'EF';
    case 'U4'
        nColumn = 'EG';
    case 'V1'
        nColumn = 'EH';
    case 'V2'
        nColumn = 'EI';
    case 'W1'
        nColumn = 'EJ';
end
num = str2num(get(handles.fault_wait_num,'string'));
row = num + 1;
sheet = 1;
xlRange = [nColumn num2str(row)];
xlswrite(filename,1,sheet,xlRange);
% hObject    handle to btn_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_clr.
function btn_clr_Callback(hObject, eventdata, handles)
sel = get(handles.CNC_model,'value');
switch sel
    case 1
    case 2
        filename = 'NL502SC.xlsx';
    case 3
        filename = 'NL502S.xlsx';
end
sel2 = get(handles.fault_num_display,'string');
switch sel2
    case 'A1'
        nColumn = 'B';
    case 'A2'
        nColumn = 'C';
    case 'A3'
        nColumn = 'D';
    case 'A4'
        nColumn = 'E';
    case 'A5'
        nColumn = 'F';
    case 'A6'
        nColumn = 'G';
    case 'A7'
        nColumn = 'H';
    case 'A8'
        nColumn = 'I';
    case 'A9'
        nColumn = 'J';
    case 'A10'
        nColumn = 'K';
    case 'A11'
        nColumn = 'L';
    case 'A12'
        nColumn = 'M';
    case 'B1'
        nColumn = 'N';
    case 'B2'
        nColumn = 'O';
    case 'B3'
        nColumn = 'P';
    case 'B4'
        nColumn = 'Q';
    case 'B5'
        nColumn = 'R';
    case 'B6'
        nColumn = 'S';
    case 'B7'
        nColumn = 'T';
    case 'B8'
        nColumn = 'U';
    case 'C1'
        nColumn = 'V';
    case 'C2'
        nColumn = 'W';
    case 'C3'
        nColumn = 'X';
    case 'C4'
        nColumn = 'Y';
    case 'C5'
        nColumn = 'Z';
    case 'C6'
        nColumn = 'AA';
    case 'C7'
        nColumn = 'AB';
    case 'C8'
        nColumn = 'AC';
    case 'C9'
        nColumn = 'AD';
    case 'C10'
        nColumn = 'AE';
    case 'C11'
        nColumn = 'AF';
    case 'C12'
        nColumn = 'AG';
    case 'C13'
        nColumn = 'AH';
    case 'C14'
        nColumn = 'AI';
    case 'C15'
        nColumn = 'AJ';
    case 'C16'
        nColumn = 'AK';
    case 'D1'
        nColumn = 'AL';
    case 'D2'
        nColumn = 'AM';
    case 'D3'
        nColumn = 'AN';
    case 'D4'
        nColumn = 'AO';
    case 'D5'
        nColumn = 'AP';
    case 'D6'
        nColumn = 'AQ';
    case 'D7'
        nColumn = 'AR';
    case 'E1'
        nColumn = 'AS';
    case 'E2'
        nColumn = 'AT';
    case 'E3'
        nColumn = 'AU';
    case 'E4'
        nColumn = 'AV';
    case 'E5'
        nColumn = 'AW';
    case 'E6'
        nColumn = 'AX';
    case 'E7'
        nColumn = 'AY';
    case 'F1'
        nColumn = 'AZ';
    case 'F2'
        nColumn = 'BA';
    case 'F3'
        nColumn = 'BB';
    case 'F4'
        nColumn = 'BC';
    case 'F5'
        nColumn = 'BD';
    case 'G1'
        nColumn = 'BE';
    case 'G2'
        nColumn = 'BF';
    case 'G3'
        nColumn = 'BG';
    case 'G4'
        nColumn = 'BH';
    case 'G5'
        nColumn = 'BI';
    case 'G6'
        nColumn = 'BJ';
    case 'G7'
        nColumn = 'BK';
    case 'G8'
        nColumn = 'BL';
    case 'G9'
        nColumn = 'BM';
    case 'G10'
        nColumn = 'BN';
    case 'G11'
        nColumn = 'BO';
    case 'G12'
        nColumn = 'BP';
    case 'H1'
        nColumn = 'BQ';
    case 'H2'
        nColumn = 'BR';
    case 'H3'
        nColumn = 'BS';
    case 'I1'
        nColumn = 'BT';
    case 'I2'
        nColumn = 'BU';
    case 'I3'
        nColumn = 'BV';
    case 'I4'
        nColumn = 'BW';
    case 'I5'
        nColumn = 'BX';
    case 'I6'
        nColumn = 'BY';
    case 'I7'
        nColumn = 'BZ';
    case 'I8'
        nColumn = 'CA';
    case 'J1'
        nColumn = 'CB';
    case 'J2'
        nColumn = 'CC';
    case 'J3'
        nColumn = 'CD';
    case 'J4'
        nColumn = 'CE';
    case 'J5'
        nColumn = 'CF';
    case 'J6'
        nColumn = 'CG';
    case 'J7'
        nColumn = 'CH';
    case 'J8'
        nColumn = 'CI';
    case 'J9'
        nColumn = 'CJ';
    case 'J10'
        nColumn = 'CK';
    case 'J11'
        nColumn = 'CL';
    case 'J12'
        nColumn = 'CM';
    case 'J13'
        nColumn = 'CN';
    case 'J14'
        nColumn = 'CO';
    case 'K1'
        nColumn = 'CP';
    case 'K2'
        nColumn = 'CQ';
    case 'K3'
        nColumn = 'CR';
    case 'K4'
        nColumn = 'CS';
    case 'L1'
        nColumn = 'CT';
    case 'M1'
        nColumn = 'CU';
    case 'M2'
        nColumn = 'CV';
    case 'M3'
        nColumn = 'CW';
    case 'M4'
        nColumn = 'CX';
    case 'M5'
        nColumn = 'CY';
    case 'M6'
        nColumn = 'CZ';
    case 'M7'
        nColumn = 'DA';
    case 'M8'
        nColumn = 'DB';
    case 'N1'
        nColumn = 'BC';
    case 'N2'
        nColumn = 'DD';
    case 'N3'
        nColumn = 'DE';
    case 'N4'
        nColumn = 'DF';
    case 'N5'
        nColumn = 'DG';
    case 'N6'
        nColumn = 'DH';
    case 'N7'
        nColumn = 'DI';
    case 'N8'
        nColumn = 'DJ';
    case 'N9'
        nColumn = 'DK';
    case 'N10'
        nColumn = 'DL';
    case 'N11'
        nColumn = 'DM';
    case 'N12'
        nColumn = 'DN';
    case 'N13'
        nColumn = 'DO';
    case 'N14'
        nColumn = 'DP';
    case 'O1'
        nColumn = 'DQ';
    case 'O2'
        nColumn = 'DR';
    case 'O3'
        nColumn = 'DS';
    case 'O4'
        nColumn = 'DT';
    case 'O5'
        nColumn = 'DU';
    case 'O6'
        nColumn = 'DV';
    case 'P1'
        nColumn = 'DW';
    case 'Q1'
        nColumn = 'DX';
    case 'R1'
        nColumn = 'DY';
    case 'R2'
        nColumn = 'DZ';
    case 'S1'
        nColumn = 'EA';
    case 'T1'
        nColumn = 'EB';
    case 'T2'
        nColumn = 'EC';
    case 'U1'
        nColumn = 'ED';
    case 'U2'
        nColumn = 'EE';
    case 'U3'
        nColumn = 'EF';
    case 'U4'
        nColumn = 'EG';
    case 'V1'
        nColumn = 'EH';
    case 'V2'
        nColumn = 'EI';
    case 'W1'
        nColumn = 'EJ';
end
num = str2num(get(handles.fault_wait_num,'string'));
row = num + 1;
sheet = 1;
xlRange = [nColumn num2str(row)];
xlswrite(filename,0,sheet,xlRange);
set(handles.fault_num_display,'string','');
% hObject    handle to btn_clr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in CNC_model.
function CNC_model_Callback(hObject, eventdata, handles)
% hObject    handle to CNC_model (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns CNC_model contents as cell array
%        contents{get(hObject,'Value')} returns selected item from CNC_model


% --- Executes during object creation, after setting all properties.
function CNC_model_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CNC_model (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_calculation.
function btn_calculation_Callback(hObject, eventdata, handles)
sel = get(handles.CNC_model,'value');
switch sel
    case 1
    case 2
        filename = 'NL502SC.xlsx';
    case 3
        filename = 'NL502S.xlsx';
end
cst = str2double(get(handles.const,'string'));
time_s = str2num(get(handles.times,'string'));
case_num_wait = str2num(get(handles.fault_wait_num,'string'));
max_nth = str2num(get(handles.max_nth,'string'));
Table_All = readtable(filename);
Matrix_All = table2array(Table_All);
Matrix_All(:,1)=[];
[m_all,n_all]=size(Matrix_All);
Matrix_C_0 = eye(m_all);
Matrix_P_0 = eye(n_all);
Matrix_C_1 = zeros(m_all);
Matrix_P_1 = zeros(n_all);

for k=1:time_s
    O_12 = 0;
    Sim_C_1 = 0.0;
    for i=1:m_all
        for j=1:m_all
            if i==j
                Matrix_C_1(i,j) = 1;
            else
                for u=1:n_all
                    if Matrix_All(i,u) == 1
                        for v=1:n_all
                            if Matrix_All(j,v) == 1
                                O_12 = O_12 + 1;
                                Sim_C_1=Sim_C_1+Matrix_P_0(u,v);
                            end
                        end
                    end
                end
                if O_12==0
                    Matrix_C_1(i,j) = 0;
                    O_12 = 0;
                    Sim_C_1 = 0.0;
                else
                    Matrix_C_1(i,j) = cst * Sim_C_1 / O_12;
                    O_12 = 0;
                    Sim_C_1 = 0.0;
                end
            end
        end
    end

    O_12 = 0;
    Sim_P_1 = 0.0;
    for i=1:n_all
        for j=1:n_all
            if i==j
                Matrix_P_1(i,j) = 1;
            else
                for u=1:m_all
                    if Matrix_All(u,i) == 1
                        for v=1:m_all
                            if Matrix_All(v,j) == 1
                                O_12 = O_12 + 1;
                                Sim_P_1=Sim_P_1+Matrix_C_0(u,v);
                            end
                        end
                    end
                end
                if O_12==0
                    Matrix_P_1(i,j) = 0;
                    O_12 = 0;
                    Sim_P_1 = 0.0;
                else
                    Matrix_P_1(i,j) = cst * Sim_P_1 / O_12;
                    O_12 = 0;
                    Sim_P_1 = 0.0;
                end
            end
        end
    end

    for i=1:m_all
        for j=1:m_all
            Matrix_C_0(i,j) = Matrix_C_1(i,j);
        end
    end

    for i=1:n_all
        for j=1:n_all
            Matrix_P_0(i,j) = Matrix_P_1(i,j);
        end
    end
    
end

Arr_wait = Matrix_C_1(case_num_wait,:);
[max_case_value,max_case_num] = sort(Arr_wait,'descend');
set(handles.max_sim_show,'string',sprintf('%0.4f',max_case_value(max_nth)));
set(handles.max_sim_num,'string',num2str(max_case_num(max_nth)));
% hObject    handle to btn_calculation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function const_Callback(hObject, eventdata, handles)
% hObject    handle to const (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of const as text
%        str2double(get(hObject,'String')) returns contents of const as a double


% --- Executes during object creation, after setting all properties.
function const_CreateFcn(hObject, eventdata, handles)
% hObject    handle to const (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function times_Callback(hObject, eventdata, handles)
% hObject    handle to times (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of times as text
%        str2double(get(hObject,'String')) returns contents of times as a double


% --- Executes during object creation, after setting all properties.
function times_CreateFcn(hObject, eventdata, handles)
% hObject    handle to times (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function max_nth_Callback(hObject, eventdata, handles)
% hObject    handle to max_nth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of max_nth as text
%        str2double(get(hObject,'String')) returns contents of max_nth as a double


% --- Executes during object creation, after setting all properties.
function max_nth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to max_nth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_details.
function btn_details_Callback(hObject, eventdata, handles)
sel = get(handles.CNC_model,'value');
switch sel
    case 1
    case 2
        filename = 'NL502SC分表.xlsx';
    case 3
        filename = 'NL502S分表.xlsx';
end
[~,txt,~] = xlsread(filename);
sheet = 1;
number = get(handles.max_sim_num,'string');
numk = str2num(number) + 1;
num = num2str(numk);
set(handles.number,'string',xlsread(filename,sheet,['A' num]));
set(handles.part,'string',txt(numk,6));
set(handles.where,'string',txt(numk,7));
set(handles.content,'string',txt(numk,8));
set(handles.pheno,'string',txt(numk,9));
set(handles.reason,'string',txt(numk,10));
set(handles.details,'string',txt(numk,11));
set(handles.mod,'string',txt(numk,12));
set(handles.duty,'string',txt(numk,13));
% hObject    handle to btn_details (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_newfault.
function btn_newfault_Callback(hObject, eventdata, handles)
sel = get(handles.CNC_model,'value');
switch sel
    case 1
    case 2
        filename = 'NL502SC.xlsx';
    case 3
        filename = 'NL502S.xlsx';
end
[num,~,~] = xlsread(filename);
row = max(num(:,1)) + 1;
max_num = num2str(row);
set(handles.fault_wait_num,'string',max_num);
row_mLine = row + 1;
xlRange_input = ['A' num2str(row_mLine)];
xlswrite(filename,row,1,xlRange_input);
str = ['B' num2str(row_mLine)];
en = ['EJ' num2str(row_mLine)];
xlRange_zero = [str ':' en];
xlswrite(filename,0,xlRange_zero);
% hObject    handle to btn_newfault (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btn_delete.
function btn_delete_Callback(hObject, eventdata, handles)
sel = get(handles.CNC_model,'value');
switch sel
    case 1
    case 2
        filename = 'NL502SC.xlsx';
    case 3
        filename = 'NL502S.xlsx';
end
num_input = str2num(get(handles.fault_wait_num,'string'));
row = num_input + 1;
str = ['A' num2str(row)];
en = ['EJ' num2str(row)];
xlRange_nan = [str ':' en];
xlswrite(filename,NaN,xlRange_nan);
set(handles.fault_wait_num,'string','');
% hObject    handle to btn_delete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function report_time_Callback(hObject, eventdata, handles)
% hObject    handle to report_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of report_time as text
%        str2double(get(hObject,'String')) returns contents of report_time as a double


% --- Executes during object creation, after setting all properties.
function report_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to report_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in report_time_year.
function report_time_year_Callback(hObject, eventdata, handles)
% hObject    handle to report_time_year (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns report_time_year contents as cell array
%        contents{get(hObject,'Value')} returns selected item from report_time_year


% --- Executes during object creation, after setting all properties.
function report_time_year_CreateFcn(hObject, eventdata, handles)
% hObject    handle to report_time_year (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in report_time_month.
function report_time_month_Callback(hObject, eventdata, handles)
% hObject    handle to report_time_month (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns report_time_month contents as cell array
%        contents{get(hObject,'Value')} returns selected item from report_time_month


% --- Executes during object creation, after setting all properties.
function report_time_month_CreateFcn(hObject, eventdata, handles)
% hObject    handle to report_time_month (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in report_time_day.
function report_time_day_Callback(hObject, eventdata, handles)
% hObject    handle to report_time_day (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns report_time_day contents as cell array
%        contents{get(hObject,'Value')} returns selected item from report_time_day


% --- Executes during object creation, after setting all properties.
function report_time_day_CreateFcn(hObject, eventdata, handles)
% hObject    handle to report_time_day (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function report_time_minute_Callback(hObject, eventdata, handles)
% hObject    handle to report_time_minute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of report_time_minute as text
%        str2double(get(hObject,'String')) returns contents of report_time_minute as a double


% --- Executes during object creation, after setting all properties.
function report_time_minute_CreateFcn(hObject, eventdata, handles)
% hObject    handle to report_time_minute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function complete_time_Callback(hObject, eventdata, handles)
% hObject    handle to complete_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of complete_time as text
%        str2double(get(hObject,'String')) returns contents of complete_time as a double


% --- Executes during object creation, after setting all properties.
function complete_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to complete_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in complete_time_year.
function complete_time_year_Callback(hObject, eventdata, handles)
% hObject    handle to complete_time_year (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns complete_time_year contents as cell array
%        contents{get(hObject,'Value')} returns selected item from complete_time_year


% --- Executes during object creation, after setting all properties.
function complete_time_year_CreateFcn(hObject, eventdata, handles)
% hObject    handle to complete_time_year (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in complete_time_month.
function complete_time_month_Callback(hObject, eventdata, handles)
% hObject    handle to complete_time_month (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns complete_time_month contents as cell array
%        contents{get(hObject,'Value')} returns selected item from complete_time_month


% --- Executes during object creation, after setting all properties.
function complete_time_month_CreateFcn(hObject, eventdata, handles)
% hObject    handle to complete_time_month (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in complete_time_day.
function complete_time_day_Callback(hObject, eventdata, handles)
% hObject    handle to complete_time_day (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns complete_time_day contents as cell array
%        contents{get(hObject,'Value')} returns selected item from complete_time_day


% --- Executes during object creation, after setting all properties.
function complete_time_day_CreateFcn(hObject, eventdata, handles)
% hObject    handle to complete_time_day (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function complete_time_minute_Callback(hObject, eventdata, handles)
% hObject    handle to complete_time_minute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of complete_time_minute as text
%        str2double(get(hObject,'String')) returns contents of complete_time_minute as a double


% --- Executes during object creation, after setting all properties.
function complete_time_minute_CreateFcn(hObject, eventdata, handles)
% hObject    handle to complete_time_minute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in part_input.
function part_input_Callback(hObject, eventdata, handles)
% hObject    handle to part_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns part_input contents as cell array
%        contents{get(hObject,'Value')} returns selected item from part_input


% --- Executes during object creation, after setting all properties.
function part_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to part_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in mod_input.
function mod_input_Callback(hObject, eventdata, handles)
% hObject    handle to mod_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns mod_input contents as cell array
%        contents{get(hObject,'Value')} returns selected item from mod_input


% --- Executes during object creation, after setting all properties.
function mod_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mod_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in duty_input.
function duty_input_Callback(hObject, eventdata, handles)
% hObject    handle to duty_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns duty_input contents as cell array
%        contents{get(hObject,'Value')} returns selected item from duty_input


% --- Executes during object creation, after setting all properties.
function duty_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to duty_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in input.
function input_Callback(hObject, eventdata, handles)
sel = get(handles.CNC_model,'value');
switch sel
    case 1
    case 2
        filename = 'NL502SC分表.xlsx';
        content_D = 'NL502SC';
    case 3
        filename = 'NL502S分表.xlsx';
        content_D = 'NL502S';
end
num = str2num(get(handles.num_wait_input,'string'));
row = num + 1;
sheet = 1;
xlRange_B = ['B' num2str(row)];
content_B = get(handles.report_time,'string');
xlswrite(filename,{content_B},sheet,xlRange_B);
xlRange_C = ['C' num2str(row)];
content_C = get(handles.complete_time,'string');
xlswrite(filename,{content_C},sheet,xlRange_C);
xlRange_D = ['D' num2str(row)];
xlswrite(filename,{content_D},sheet,xlRange_D);
xlRange_E = ['E' num2str(row)];
sel_E = get(handles.part_input,'value');
switch sel_E
    case 1
    case 2
        content_E = 'CNC与伺服控制单元';
    case 3
        content_E = '刀架';
    case 4
        content_E = '刀架、电源与电气系统';
    case 5
        content_E = '刀库及换刀';
    case 6
        content_E = '电源与电气系统';
    case 7
        content_E = '进给轴';
    case 8
        content_E = '卡盘、尾架、中心架';
    case 9
        content_E = '内防护';
    case 10
        content_E = '排屑系统';
    case 11
        content_E = '其它部件';
    case 12
        content_E = '其它部件、主传动系统';
    case 13
        content_E = '气动系统';
    case 14
        content_E = '润滑系统';
    case 15
        content_E = '外防护';
    case 16
        content_E = '液压系统';
    case 17
        content_E = '主传动系统';
    case 18
        content_E = '铸件及其加工面';
end
xlswrite(filename,{content_E},sheet,xlRange_E);
xlRange_F = ['F' num2str(row)];
content_F = get(handles.where_input,'string');
xlswrite(filename,{content_F},sheet,xlRange_F);
xlRange_G = ['G' num2str(row)];
content_G = get(handles.content_input,'string');
xlswrite(filename,{content_G},sheet,xlRange_G);
xlRange_H = ['H' num2str(row)];
content_H = get(handles.pheno_input,'string');
xlswrite(filename,{content_H},sheet,xlRange_H);
xlRange_I = ['I' num2str(row)];
content_I = get(handles.reason_input,'string');
xlswrite(filename,{content_I},sheet,xlRange_I);
xlRange_J = ['J' num2str(row)];
content_J = get(handles.details_input,'string');
xlswrite(filename,{content_J},sheet,xlRange_J);
xlRange_K = ['K' num2str(row)];
sel_K = get(handles.mod_input,'value');
switch sel_K
    case 1
    case 2
        content_K = 'CNC硬件功能故障';
    case 3
        content_K = '电气参数故障';
    case 4
        content_K = '电气元件损坏';
    case 5
        content_K = '机械零部件损坏';
    case 6
        content_K = '零部件松动';
    case 7
        content_K = '零部件松动、其它';
    case 8
        content_K = '其它';
    case 9
        content_K = '其它、其它';
    case 10
        content_K = '线路故障';
    case 11
        content_K = '液气油堵塞';
    case 12
        content_K = '液气油渗漏';
    case 13
        content_K = '运动部件故障';
    case 14
        content_K = '装配调整不当';
end
xlswrite(filename,{content_K},sheet,xlRange_K);
xlRange_L = ['L' num2str(row)];
sel_L = get(handles.duty_input,'value');
switch sel_L
    case 1
    case 2
        content_L = '电气设计';
    case 3
        content_L = '客户';
    case 4
        content_L = '客户、正常';
    case 5
        content_L = '配套件';
    case 6
        content_L = '配套件、正常';
    case 7
        content_L = '正常';
    case 8
        content_L = '装配';
end
xlswrite(filename,{content_L},sheet,xlRange_L);
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in del.
function del_Callback(hObject, eventdata, handles)
sel = get(handles.CNC_model,'value');
switch sel
    case 1
    case 2
        filename = 'NL502SC分表.xlsx';
    case 3
        filename = 'NL502S分表.xlsx';
end
num = str2num(get(handles.num_wait_input,'string'));
row = num + 1;
str = ['A' num2str(row)];
en = ['L' num2str(row)];
xlRange_nan = [str ':' en];
xlswrite(filename,NaN,xlRange_nan);
set(handles.num_wait_input,'string','');
% hObject    handle to del (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function where_input_Callback(hObject, eventdata, handles)
% hObject    handle to where_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of where_input as text
%        str2double(get(hObject,'String')) returns contents of where_input as a double


% --- Executes during object creation, after setting all properties.
function where_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to where_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function content_input_Callback(hObject, eventdata, handles)
% hObject    handle to content_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of content_input as text
%        str2double(get(hObject,'String')) returns contents of content_input as a double


% --- Executes during object creation, after setting all properties.
function content_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to content_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pheno_input_Callback(hObject, eventdata, handles)
% hObject    handle to pheno_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pheno_input as text
%        str2double(get(hObject,'String')) returns contents of pheno_input as a double


% --- Executes during object creation, after setting all properties.
function pheno_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pheno_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function reason_input_Callback(hObject, eventdata, handles)
% hObject    handle to reason_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reason_input as text
%        str2double(get(hObject,'String')) returns contents of reason_input as a double


% --- Executes during object creation, after setting all properties.
function reason_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reason_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function details_input_Callback(hObject, eventdata, handles)
% hObject    handle to details_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of details_input as text
%        str2double(get(hObject,'String')) returns contents of details_input as a double


% --- Executes during object creation, after setting all properties.
function details_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to details_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in new.
function new_Callback(hObject, eventdata, handles)
sel = get(handles.CNC_model,'value');
switch sel
    case 1
    case 2
        filename = 'NL502SC分表.xlsx';
    case 3
        filename = 'NL502S分表.xlsx';
end
num = get(handles.fault_wait_num,'string');
set(handles.num_wait_input,'string',num);
row = str2num(num) + 1;
sheet = 1;
xlRange_A = ['A' num2str(row)];
xlswrite(filename,str2num(num),sheet,xlRange_A);
% hObject    handle to new (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
