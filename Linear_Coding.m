function varargout = Linear_Coding(varargin)
% LINEAR_CODING MATLAB code for Linear_Coding.fig
%      LINEAR_CODING, by itself, creates a new LINEAR_CODING or raises the existing
%      singleton*.
%
%      H = LINEAR_CODING returns the handle to a new LINEAR_CODING or the handle to
%      the existing singleton*.
%
%      LINEAR_CODING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LINEAR_CODING.M with the given input arguments.
%
%      LINEAR_CODING('Property','Value',...) creates a new LINEAR_CODING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Linear_Coding_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Linear_Coding_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Linear_Coding

% Last Modified by GUIDE v2.5 08-May-2026 11:20:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Linear_Coding_OpeningFcn, ...
                   'gui_OutputFcn',  @Linear_Coding_OutputFcn, ...
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


% --- Executes just before Linear_Coding is made visible.
function Linear_Coding_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Linear_Coding (see VARARGIN)

% Choose default command line output for Linear_Coding
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Linear_Coding wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Linear_Coding_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function message_u_encoding_Callback(hObject, eventdata, handles)
% hObject    handle to message_u_encoding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of message_u_encoding as text
%        str2double(get(hObject,'String')) returns contents of message_u_encoding as a double

u = str2num(get(hObject,'String'));
if ~isempty(u)
    handles.u = u(:)';
    guidata(hObject, handles);
end



% --- Executes during object creation, after setting all properties.
function message_u_encoding_CreateFcn(hObject, eventdata, handles)
% hObject    handle to message_u_encoding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pre_matrix_Callback(hObject, eventdata, handles)
% hObject    handle to pre_matrix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pre_matrix as text
%        str2double(get(hObject,'String')) returns contents of pre_matrix as a double

p = str2num(get(hObject,'String'));
if ~isempty(p) && ~any(p(:) ~= 0 & p(:) ~= 1)
    handles.p = p;
    guidata(hObject, handles);
end



% --- Executes during object creation, after setting all properties.
function pre_matrix_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pre_matrix (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_encode_Callback(hObject, eventdata, handles)
% hObject    handle to n_encode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_encode as text
%        str2double(get(hObject,'String')) returns contents of n_encode as a double

n = str2double(get(hObject,'String'));
if ~isnan(n)
    handles.n = n;
    guidata(hObject, handles);
end


% --- Executes during object creation, after setting all properties.
function n_encode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_encode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_encode_Callback(hObject, eventdata, handles)
% hObject    handle to k_encode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k_encode as text
%        str2double(get(hObject,'String')) returns contents of k_encode as a double

k = str2double(get(hObject,'String'));
if ~isnan(k)
    handles.k = k;
    guidata(hObject, handles);
end



% --- Executes during object creation, after setting all properties.
function k_encode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k_encode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function message_v_decoding_Callback(hObject, eventdata, handles)
% hObject    handle to message_v_decoding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of message_v_decoding as text
%        str2double(get(hObject,'String')) returns contents of message_v_decoding as a double

v = str2num(get(hObject,'String'));
if ~isempty(v)
    handles.v = v(:)';
    guidata(hObject, handles);
end



% --- Executes during object creation, after setting all properties.
function message_v_decoding_CreateFcn(hObject, eventdata, handles)
% hObject    handle to message_v_decoding (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function generator_Callback(hObject, eventdata, handles)
% hObject    handle to generator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of generator as text
%        str2double(get(hObject,'String')) returns contents of generator as a double

g = str2num(get(hObject,'String'));
if ~isempty(g)
    handles.g = g;
    guidata(hObject, handles);
end


% --- Executes during object creation, after setting all properties.
function generator_CreateFcn(hObject, eventdata, handles)
% hObject    handle to generator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_decode_Callback(hObject, eventdata, handles)
% hObject    handle to n_decode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_decode as text
%        str2double(get(hObject,'String')) returns contents of n_decode as a double

n = str2double(get(hObject,'String'));
if ~isnan(n)
    handles.n_dec = n;
    guidata(hObject, handles);
end



% --- Executes during object creation, after setting all properties.
function n_decode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_decode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_decode_Callback(hObject, eventdata, handles)
% hObject    handle to k_decode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k_decode as text
%        str2double(get(hObject,'String')) returns contents of k_decode as a double

k = str2double(get(hObject,'String'));
if ~isnan(k)
    handles.k_dec = k;
    guidata(hObject, handles);
end



% --- Executes during object creation, after setting all properties.
function k_decode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k_decode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v_encoded_output_Callback(hObject, eventdata, handles)
% hObject    handle to v_encoded_output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of v_encoded_output as text
%        str2double(get(hObject,'String')) returns contents of v_encoded_output as a double


% --- Executes during object creation, after setting all properties.
function v_encoded_output_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v_encoded_output (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function check_for_errors_Callback(hObject, eventdata, handles)
% hObject    handle to check_for_errors (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of check_for_errors as text
%        str2double(get(hObject,'String')) returns contents of check_for_errors as a double



% --- Executes during object creation, after setting all properties.
function check_for_errors_CreateFcn(hObject, eventdata, handles)
% hObject    handle to check_for_errors (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function original_u_Callback(hObject, eventdata, handles)
% hObject    handle to original_u (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of original_u as text
%        str2double(get(hObject,'String')) returns contents of original_u as a double




% --- Executes during object creation, after setting all properties.
function original_u_CreateFcn(hObject, eventdata, handles)
% hObject    handle to original_u (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function correct_v_decoded_Callback(hObject, eventdata, handles)
% hObject    handle to correct_v_decoded (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of correct_v_decoded as text
%        str2double(get(hObject,'String')) returns contents of correct_v_decoded as a double



% --- Executes during object creation, after setting all properties.
function correct_v_decoded_CreateFcn(hObject, eventdata, handles)
% hObject    handle to correct_v_decoded (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Run_Encode.
function Run_Encode_Callback(hObject, eventdata, handles)
% hObject    handle to Run_Encode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if ~isfield(handles,'u') || ~isfield(handles,'p') || ~isfield(handles,'k') || ~isfield(handles,'n')
    errordlg('Missing inputs');
    return;
end

u = handles.u;
p = handles.p;
k = handles.k;
n = handles.n;

if k >= n
    errordlg('n must be greater than k');
    return;
end

g = [p eye(k)];
v = mod(u * g, 2);

handles.g = g;
handles.v_encoded = v;
handles.v_fixed = v;

set(handles.v_encoded_output, 'String', mat2str(v));

guidata(hObject, handles);


% --- Executes on button press in Run_decode.
function Run_decode_Callback(hObject, eventdata, handles)
% hObject    handle to Run_decode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


v = str2num(get(handles.message_v_decoding, 'String'));
if isempty(v)
    errordlg('Please enter received message v');
    return;
end

g = str2num(get(handles.generator, 'String'));
k = str2double(get(handles.k_decode, 'String'));
n = str2double(get(handles.n_decode, 'String'));

if k >= n
    errordlg('n must be greater than k');
    return;
end

if isempty(g) || isnan(k) || isnan(n)
    errordlg('Please enter g, n, and k for decoding');
    return;
end

if size(g,1) ~= k || size(g,2) ~= n
    errordlg('G matrix must be k × n');
    return;
end

v = v(:)';
if length(v) ~= n
    errordlg('Length of v must equal n');
    return;
end

x = n - k;
P = g(:, 1:x);
H = [eye(x) P'];

syndrome = mod(v * H', 2);

v_fixed = v;

if sum(syndrome) ~= 0
    for i = 1:n
        if isequal(H(:,i)', syndrome)
            v_fixed(i) = mod(v_fixed(i)+1, 2);
            break;
        end
    end
end

handles.v_fixed = v_fixed;
handles.x = x;
handles.k_dec = k;
handles.n_dec = n;
handles.g = g;

if sum(syndrome) == 0
    set(handles.check_for_errors, 'String', 'No errors in message');
else
    set(handles.check_for_errors, 'String', 'Errors detected');
end

set(handles.correct_v_decoded, 'String', mat2str(v_fixed));

u_decoded = v_fixed(x+1:end);
set(handles.original_u, 'String', mat2str(u_decoded));

guidata(hObject, handles);
