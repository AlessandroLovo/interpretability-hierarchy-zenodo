��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
@
Softplus
features"T
activations"T"
Ttype:
2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02unknown8��
�
Adam/dense_layer_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/dense_layer_2/bias/v
�
-Adam/dense_layer_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer_2/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_layer_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*,
shared_nameAdam/dense_layer_2/kernel/v
�
/Adam/dense_layer_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer_2/kernel/v*
_output_shapes

:@*
dtype0
�
Adam/dense_layer_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/dense_layer_1/bias/v
�
-Adam/dense_layer_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer_1/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_layer_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*,
shared_nameAdam/dense_layer_1/kernel/v
�
/Adam/dense_layer_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer_1/kernel/v*
_output_shapes
:	�@*
dtype0
�
Adam/dense_layer_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_nameAdam/dense_layer_0/bias/v
�
-Adam/dense_layer_0/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer_0/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_layer_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�U�*,
shared_nameAdam/dense_layer_0/kernel/v
�
/Adam/dense_layer_0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer_0/kernel/v* 
_output_shapes
:
�U�*
dtype0
�
Adam/conv_layer_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameAdam/conv_layer_3/bias/v
�
,Adam/conv_layer_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer_3/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv_layer_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*+
shared_nameAdam/conv_layer_3/kernel/v
�
.Adam/conv_layer_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer_3/kernel/v*(
_output_shapes
:��*
dtype0
�
Adam/conv_layer_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameAdam/conv_layer_2/bias/v
�
,Adam/conv_layer_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer_2/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv_layer_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*+
shared_nameAdam/conv_layer_2/kernel/v
�
.Adam/conv_layer_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer_2/kernel/v*'
_output_shapes
:@�*
dtype0
�
Adam/conv_layer_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/conv_layer_1/bias/v
�
,Adam/conv_layer_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer_1/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv_layer_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameAdam/conv_layer_1/kernel/v
�
.Adam/conv_layer_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer_1/kernel/v*&
_output_shapes
: @*
dtype0
�
Adam/conv_layer_0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv_layer_0/bias/v
�
,Adam/conv_layer_0/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer_0/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv_layer_0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameAdam/conv_layer_0/kernel/v
�
.Adam/conv_layer_0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer_0/kernel/v*&
_output_shapes
: *
dtype0
�
Adam/dense_layer_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/dense_layer_2/bias/m
�
-Adam/dense_layer_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer_2/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_layer_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*,
shared_nameAdam/dense_layer_2/kernel/m
�
/Adam/dense_layer_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer_2/kernel/m*
_output_shapes

:@*
dtype0
�
Adam/dense_layer_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/dense_layer_1/bias/m
�
-Adam/dense_layer_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer_1/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_layer_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*,
shared_nameAdam/dense_layer_1/kernel/m
�
/Adam/dense_layer_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer_1/kernel/m*
_output_shapes
:	�@*
dtype0
�
Adam/dense_layer_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_nameAdam/dense_layer_0/bias/m
�
-Adam/dense_layer_0/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer_0/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_layer_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�U�*,
shared_nameAdam/dense_layer_0/kernel/m
�
/Adam/dense_layer_0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer_0/kernel/m* 
_output_shapes
:
�U�*
dtype0
�
Adam/conv_layer_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameAdam/conv_layer_3/bias/m
�
,Adam/conv_layer_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer_3/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv_layer_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*+
shared_nameAdam/conv_layer_3/kernel/m
�
.Adam/conv_layer_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer_3/kernel/m*(
_output_shapes
:��*
dtype0
�
Adam/conv_layer_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*)
shared_nameAdam/conv_layer_2/bias/m
�
,Adam/conv_layer_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer_2/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv_layer_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*+
shared_nameAdam/conv_layer_2/kernel/m
�
.Adam/conv_layer_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer_2/kernel/m*'
_output_shapes
:@�*
dtype0
�
Adam/conv_layer_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/conv_layer_1/bias/m
�
,Adam/conv_layer_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer_1/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv_layer_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameAdam/conv_layer_1/kernel/m
�
.Adam/conv_layer_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer_1/kernel/m*&
_output_shapes
: @*
dtype0
�
Adam/conv_layer_0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv_layer_0/bias/m
�
,Adam/conv_layer_0/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer_0/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv_layer_0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameAdam/conv_layer_0/kernel/m
�
.Adam/conv_layer_0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer_0/kernel/m*&
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
|
dense_layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namedense_layer_2/bias
u
&dense_layer_2/bias/Read/ReadVariableOpReadVariableOpdense_layer_2/bias*
_output_shapes
:*
dtype0
�
dense_layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*%
shared_namedense_layer_2/kernel
}
(dense_layer_2/kernel/Read/ReadVariableOpReadVariableOpdense_layer_2/kernel*
_output_shapes

:@*
dtype0
|
dense_layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namedense_layer_1/bias
u
&dense_layer_1/bias/Read/ReadVariableOpReadVariableOpdense_layer_1/bias*
_output_shapes
:@*
dtype0
�
dense_layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*%
shared_namedense_layer_1/kernel
~
(dense_layer_1/kernel/Read/ReadVariableOpReadVariableOpdense_layer_1/kernel*
_output_shapes
:	�@*
dtype0
}
dense_layer_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_namedense_layer_0/bias
v
&dense_layer_0/bias/Read/ReadVariableOpReadVariableOpdense_layer_0/bias*
_output_shapes	
:�*
dtype0
�
dense_layer_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�U�*%
shared_namedense_layer_0/kernel

(dense_layer_0/kernel/Read/ReadVariableOpReadVariableOpdense_layer_0/kernel* 
_output_shapes
:
�U�*
dtype0
{
conv_layer_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameconv_layer_3/bias
t
%conv_layer_3/bias/Read/ReadVariableOpReadVariableOpconv_layer_3/bias*
_output_shapes	
:�*
dtype0
�
conv_layer_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*$
shared_nameconv_layer_3/kernel
�
'conv_layer_3/kernel/Read/ReadVariableOpReadVariableOpconv_layer_3/kernel*(
_output_shapes
:��*
dtype0
{
conv_layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameconv_layer_2/bias
t
%conv_layer_2/bias/Read/ReadVariableOpReadVariableOpconv_layer_2/bias*
_output_shapes	
:�*
dtype0
�
conv_layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*$
shared_nameconv_layer_2/kernel
�
'conv_layer_2/kernel/Read/ReadVariableOpReadVariableOpconv_layer_2/kernel*'
_output_shapes
:@�*
dtype0
z
conv_layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameconv_layer_1/bias
s
%conv_layer_1/bias/Read/ReadVariableOpReadVariableOpconv_layer_1/bias*
_output_shapes
:@*
dtype0
�
conv_layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*$
shared_nameconv_layer_1/kernel
�
'conv_layer_1/kernel/Read/ReadVariableOpReadVariableOpconv_layer_1/kernel*&
_output_shapes
: @*
dtype0
z
conv_layer_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv_layer_0/bias
s
%conv_layer_0/bias/Read/ReadVariableOpReadVariableOpconv_layer_0/bias*
_output_shapes
: *
dtype0
�
conv_layer_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameconv_layer_0/kernel
�
'conv_layer_0/kernel/Read/ReadVariableOpReadVariableOpconv_layer_0/kernel*&
_output_shapes
: *
dtype0
�
serving_default_model_inputPlaceholder*0
_output_shapes
:���������_�*
dtype0*%
shape:���������_�
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_model_inputconv_layer_0/kernelconv_layer_0/biasconv_layer_1/kernelconv_layer_1/biasconv_layer_2/kernelconv_layer_2/biasconv_layer_3/kernelconv_layer_3/biasdense_layer_0/kerneldense_layer_0/biasdense_layer_1/kerneldense_layer_1/biasdense_layer_2/kerneldense_layer_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *,
f'R%
#__inference_signature_wrapper_29611

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer_with_weights-0
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
layer-8
layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses*
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses* 
j
(0
)1
*2
+3
,4
-5
.6
/7
08
19
210
311
412
513*
j
(0
)1
*2
+3
,4
-5
.6
/7
08
19
210
311
412
513*
* 
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
;trace_0
<trace_1
=trace_2
>trace_3* 
6
?trace_0
@trace_1
Atrace_2
Btrace_3* 
* 
�

Cbeta_1

Dbeta_2
	Edecay
Flearning_rate
Giter(m�)m�*m�+m�,m�-m�.m�/m�0m�1m�2m�3m�4m�5m�(v�)v�*v�+v�,v�-v�.v�/v�0v�1v�2v�3v�4v�5v�*

Hserving_default* 
* 
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

(kernel
)bias
 O_jit_compiled_convolution_op*
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses* 
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

*kernel
+bias
 \_jit_compiled_convolution_op*
�
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses* 
�
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

,kernel
-bias
 i_jit_compiled_convolution_op*
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses* 
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

.kernel
/bias
 v_jit_compiled_convolution_op*
�
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses* 
�
}	variables
~trainable_variables
regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

0kernel
1bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

2kernel
3bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

4kernel
5bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
j
(0
)1
*2
+3
,4
-5
.6
/7
08
19
210
311
412
513*
j
(0
)1
*2
+3
,4
-5
.6
/7
08
19
210
311
412
513*
:
�0
�1
�2
�3
�4
�5
�6* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
SM
VARIABLE_VALUEconv_layer_0/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv_layer_0/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEconv_layer_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv_layer_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEconv_layer_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv_layer_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEconv_layer_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv_layer_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEdense_layer_0/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEdense_layer_0/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEdense_layer_1/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEdense_layer_1/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEdense_layer_2/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEdense_layer_2/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*
$
�0
�1
�2
�3*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
KE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
* 

(0
)1*

(0
)1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

*0
+1*

*0
+1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

,0
-1*

,0
-1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

.0
/1*

.0
/1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
}	variables
~trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

00
11*

00
11*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

20
31*

20
31*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

40
51*

40
51*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
z
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
* 
* 
* 


�0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
vp
VARIABLE_VALUEAdam/conv_layer_0/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv_layer_0/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/conv_layer_1/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv_layer_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/conv_layer_2/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv_layer_2/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/conv_layer_3/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv_layer_3/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/dense_layer_0/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/dense_layer_0/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/dense_layer_1/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/dense_layer_1/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/dense_layer_2/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/dense_layer_2/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/conv_layer_0/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv_layer_0/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/conv_layer_1/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv_layer_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/conv_layer_2/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv_layer_2/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/conv_layer_3/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/conv_layer_3/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/dense_layer_0/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/dense_layer_0/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/dense_layer_1/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/dense_layer_1/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/dense_layer_2/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/dense_layer_2/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'conv_layer_0/kernel/Read/ReadVariableOp%conv_layer_0/bias/Read/ReadVariableOp'conv_layer_1/kernel/Read/ReadVariableOp%conv_layer_1/bias/Read/ReadVariableOp'conv_layer_2/kernel/Read/ReadVariableOp%conv_layer_2/bias/Read/ReadVariableOp'conv_layer_3/kernel/Read/ReadVariableOp%conv_layer_3/bias/Read/ReadVariableOp(dense_layer_0/kernel/Read/ReadVariableOp&dense_layer_0/bias/Read/ReadVariableOp(dense_layer_1/kernel/Read/ReadVariableOp&dense_layer_1/bias/Read/ReadVariableOp(dense_layer_2/kernel/Read/ReadVariableOp&dense_layer_2/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp.Adam/conv_layer_0/kernel/m/Read/ReadVariableOp,Adam/conv_layer_0/bias/m/Read/ReadVariableOp.Adam/conv_layer_1/kernel/m/Read/ReadVariableOp,Adam/conv_layer_1/bias/m/Read/ReadVariableOp.Adam/conv_layer_2/kernel/m/Read/ReadVariableOp,Adam/conv_layer_2/bias/m/Read/ReadVariableOp.Adam/conv_layer_3/kernel/m/Read/ReadVariableOp,Adam/conv_layer_3/bias/m/Read/ReadVariableOp/Adam/dense_layer_0/kernel/m/Read/ReadVariableOp-Adam/dense_layer_0/bias/m/Read/ReadVariableOp/Adam/dense_layer_1/kernel/m/Read/ReadVariableOp-Adam/dense_layer_1/bias/m/Read/ReadVariableOp/Adam/dense_layer_2/kernel/m/Read/ReadVariableOp-Adam/dense_layer_2/bias/m/Read/ReadVariableOp.Adam/conv_layer_0/kernel/v/Read/ReadVariableOp,Adam/conv_layer_0/bias/v/Read/ReadVariableOp.Adam/conv_layer_1/kernel/v/Read/ReadVariableOp,Adam/conv_layer_1/bias/v/Read/ReadVariableOp.Adam/conv_layer_2/kernel/v/Read/ReadVariableOp,Adam/conv_layer_2/bias/v/Read/ReadVariableOp.Adam/conv_layer_3/kernel/v/Read/ReadVariableOp,Adam/conv_layer_3/bias/v/Read/ReadVariableOp/Adam/dense_layer_0/kernel/v/Read/ReadVariableOp-Adam/dense_layer_0/bias/v/Read/ReadVariableOp/Adam/dense_layer_1/kernel/v/Read/ReadVariableOp-Adam/dense_layer_1/bias/v/Read/ReadVariableOp/Adam/dense_layer_2/kernel/v/Read/ReadVariableOp-Adam/dense_layer_2/bias/v/Read/ReadVariableOpConst*D
Tin=
;29	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *'
f"R 
__inference__traced_save_30661
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv_layer_0/kernelconv_layer_0/biasconv_layer_1/kernelconv_layer_1/biasconv_layer_2/kernelconv_layer_2/biasconv_layer_3/kernelconv_layer_3/biasdense_layer_0/kerneldense_layer_0/biasdense_layer_1/kerneldense_layer_1/biasdense_layer_2/kerneldense_layer_2/biasbeta_1beta_2decaylearning_rate	Adam/itertotal_3count_3total_2count_2total_1count_1totalcountAdam/conv_layer_0/kernel/mAdam/conv_layer_0/bias/mAdam/conv_layer_1/kernel/mAdam/conv_layer_1/bias/mAdam/conv_layer_2/kernel/mAdam/conv_layer_2/bias/mAdam/conv_layer_3/kernel/mAdam/conv_layer_3/bias/mAdam/dense_layer_0/kernel/mAdam/dense_layer_0/bias/mAdam/dense_layer_1/kernel/mAdam/dense_layer_1/bias/mAdam/dense_layer_2/kernel/mAdam/dense_layer_2/bias/mAdam/conv_layer_0/kernel/vAdam/conv_layer_0/bias/vAdam/conv_layer_1/kernel/vAdam/conv_layer_1/bias/vAdam/conv_layer_2/kernel/vAdam/conv_layer_2/bias/vAdam/conv_layer_3/kernel/vAdam/conv_layer_3/bias/vAdam/dense_layer_0/kernel/vAdam/dense_layer_0/bias/vAdam/dense_layer_1/kernel/vAdam/dense_layer_1/bias/vAdam/dense_layer_2/kernel/vAdam/dense_layer_2/bias/v*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� **
f%R#
!__inference__traced_restore_30836��
�
M
1__inference_conv_activation_3_layer_call_fn_30296

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_3_layer_call_and_return_conditional_losses_28546i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
h
L__inference_conv_activation_0_layer_call_and_return_conditional_losses_28465

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������/� c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������/� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������/� :X T
0
_output_shapes
:���������/� 
 
_user_specified_nameinputs
�l
�

@__inference_model_layer_call_and_return_conditional_losses_28665

inputs,
conv_layer_0_28455:  
conv_layer_0_28457: ,
conv_layer_1_28482: @ 
conv_layer_1_28484:@-
conv_layer_2_28509:@�!
conv_layer_2_28511:	�.
conv_layer_3_28536:��!
conv_layer_3_28538:	�'
dense_layer_0_28571:
�U�"
dense_layer_0_28573:	�&
dense_layer_1_28598:	�@!
dense_layer_1_28600:@%
dense_layer_2_28625:@!
dense_layer_2_28627:
identity��$conv_layer_0/StatefulPartitionedCall�5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�$conv_layer_1/StatefulPartitionedCall�5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�$conv_layer_2/StatefulPartitionedCall�5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�$conv_layer_3/StatefulPartitionedCall�5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp�%dense_layer_0/StatefulPartitionedCall�6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�%dense_layer_1/StatefulPartitionedCall�6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�%dense_layer_2/StatefulPartitionedCall�6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�
$conv_layer_0/StatefulPartitionedCallStatefulPartitionedCallinputsconv_layer_0_28455conv_layer_0_28457*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������/� *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_0_layer_call_and_return_conditional_losses_28454�
!conv_activation_0/PartitionedCallPartitionedCall-conv_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������/� * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_0_layer_call_and_return_conditional_losses_28465�
$conv_layer_1/StatefulPartitionedCallStatefulPartitionedCall*conv_activation_0/PartitionedCall:output:0conv_layer_1_28482conv_layer_1_28484*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������G@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_28481�
!conv_activation_1/PartitionedCallPartitionedCall-conv_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������G@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_1_layer_call_and_return_conditional_losses_28492�
$conv_layer_2/StatefulPartitionedCallStatefulPartitionedCall*conv_activation_1/PartitionedCall:output:0conv_layer_2_28509conv_layer_2_28511*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������#�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_2_layer_call_and_return_conditional_losses_28508�
!conv_activation_2/PartitionedCallPartitionedCall-conv_layer_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������#�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_2_layer_call_and_return_conditional_losses_28519�
$conv_layer_3/StatefulPartitionedCallStatefulPartitionedCall*conv_activation_2/PartitionedCall:output:0conv_layer_3_28536conv_layer_3_28538*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_3_layer_call_and_return_conditional_losses_28535�
!conv_activation_3/PartitionedCallPartitionedCall-conv_layer_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_3_layer_call_and_return_conditional_losses_28546�
flatten/PartitionedCallPartitionedCall*conv_activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������U* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_28554�
%dense_layer_0/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_layer_0_28571dense_layer_0_28573*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_dense_layer_0_layer_call_and_return_conditional_losses_28570�
"dense_activation_0/PartitionedCallPartitionedCall.dense_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *V
fQRO
M__inference_dense_activation_0_layer_call_and_return_conditional_losses_28581�
%dense_layer_1/StatefulPartitionedCallStatefulPartitionedCall+dense_activation_0/PartitionedCall:output:0dense_layer_1_28598dense_layer_1_28600*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_dense_layer_1_layer_call_and_return_conditional_losses_28597�
"dense_activation_1/PartitionedCallPartitionedCall.dense_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *V
fQRO
M__inference_dense_activation_1_layer_call_and_return_conditional_losses_28608�
%dense_layer_2/StatefulPartitionedCallStatefulPartitionedCall+dense_activation_1/PartitionedCall:output:0dense_layer_2_28625dense_layer_2_28627*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_dense_layer_2_layer_call_and_return_conditional_losses_28624�
"dense_activation_2/PartitionedCallPartitionedCall.dense_layer_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *V
fQRO
M__inference_dense_activation_2_layer_call_and_return_conditional_losses_28634�
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_0_28455*&
_output_shapes
: *
dtype0�
&conv_layer_0/kernel/Regularizer/L2LossL2Loss=conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_0/kernel/Regularizer/mulMul.conv_layer_0/kernel/Regularizer/mul/x:output:0/conv_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_1_28482*&
_output_shapes
: @*
dtype0�
&conv_layer_1/kernel/Regularizer/L2LossL2Loss=conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_1/kernel/Regularizer/mulMul.conv_layer_1/kernel/Regularizer/mul/x:output:0/conv_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_2_28509*'
_output_shapes
:@�*
dtype0�
&conv_layer_2/kernel/Regularizer/L2LossL2Loss=conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_2/kernel/Regularizer/mulMul.conv_layer_2/kernel/Regularizer/mul/x:output:0/conv_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_3_28536*(
_output_shapes
:��*
dtype0�
&conv_layer_3/kernel/Regularizer/L2LossL2Loss=conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_3/kernel/Regularizer/mulMul.conv_layer_3/kernel/Regularizer/mul/x:output:0/conv_layer_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layer_0_28571* 
_output_shapes
:
�U�*
dtype0�
'dense_layer_0/kernel/Regularizer/L2LossL2Loss>dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_0/kernel/Regularizer/mulMul/dense_layer_0/kernel/Regularizer/mul/x:output:00dense_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layer_1_28598*
_output_shapes
:	�@*
dtype0�
'dense_layer_1/kernel/Regularizer/L2LossL2Loss>dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_1/kernel/Regularizer/mulMul/dense_layer_1/kernel/Regularizer/mul/x:output:00dense_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layer_2_28625*
_output_shapes

:@*
dtype0�
'dense_layer_2/kernel/Regularizer/L2LossL2Loss>dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_2/kernel/Regularizer/mulMul/dense_layer_2/kernel/Regularizer/mul/x:output:00dense_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: z
IdentityIdentity+dense_activation_2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^conv_layer_0/StatefulPartitionedCall6^conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp%^conv_layer_1/StatefulPartitionedCall6^conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp%^conv_layer_2/StatefulPartitionedCall6^conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp%^conv_layer_3/StatefulPartitionedCall6^conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp&^dense_layer_0/StatefulPartitionedCall7^dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp&^dense_layer_1/StatefulPartitionedCall7^dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp&^dense_layer_2/StatefulPartitionedCall7^dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 2L
$conv_layer_0/StatefulPartitionedCall$conv_layer_0/StatefulPartitionedCall2n
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2L
$conv_layer_1/StatefulPartitionedCall$conv_layer_1/StatefulPartitionedCall2n
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2L
$conv_layer_2/StatefulPartitionedCall$conv_layer_2/StatefulPartitionedCall2n
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2L
$conv_layer_3/StatefulPartitionedCall$conv_layer_3/StatefulPartitionedCall2n
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp2N
%dense_layer_0/StatefulPartitionedCall%dense_layer_0/StatefulPartitionedCall2p
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2N
%dense_layer_1/StatefulPartitionedCall%dense_layer_1/StatefulPartitionedCall2p
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2N
%dense_layer_2/StatefulPartitionedCall%dense_layer_2/StatefulPartitionedCall2p
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:���������_�
 
_user_specified_nameinputs
�
i
M__inference_dense_activation_1_layer_call_and_return_conditional_losses_28608

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:���������@Z
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
h
L__inference_conv_activation_2_layer_call_and_return_conditional_losses_30268

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������#�c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������#�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������#�:X T
0
_output_shapes
:���������#�
 
_user_specified_nameinputs
�
�
,__inference_conv_layer_0_layer_call_fn_30178

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������/� *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_0_layer_call_and_return_conditional_losses_28454x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������/� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������_�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������_�
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_6_30473Q
?dense_layer_2_kernel_regularizer_l2loss_readvariableop_resource:@
identity��6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp?dense_layer_2_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes

:@*
dtype0�
'dense_layer_2/kernel/Regularizer/L2LossL2Loss>dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_2/kernel/Regularizer/mulMul/dense_layer_2/kernel/Regularizer/mul/x:output:00dense_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: f
IdentityIdentity(dense_layer_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp7^dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp
�	
�
__inference_loss_fn_2_30437Y
>conv_layer_2_kernel_regularizer_l2loss_readvariableop_resource:@�
identity��5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp>conv_layer_2_kernel_regularizer_l2loss_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
&conv_layer_2/kernel/Regularizer/L2LossL2Loss=conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_2/kernel/Regularizer/mulMul.conv_layer_2/kernel/Regularizer/mul/x:output:0/conv_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: e
IdentityIdentity'conv_layer_2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ~
NoOpNoOp6^conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2n
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp
�
M
1__inference_conv_activation_0_layer_call_fn_30197

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������/� * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_0_layer_call_and_return_conditional_losses_28465i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������/� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������/� :X T
0
_output_shapes
:���������/� 
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_30312

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����*  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������UY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������U"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
%__inference_model_layer_call_fn_29952

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�U�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_28665o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������_�
 
_user_specified_nameinputs
�
i
M__inference_dense_activation_0_layer_call_and_return_conditional_losses_30345

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:����������[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�;
�
E__inference_sequential_layer_call_and_return_conditional_losses_29480
model_input%
model_29421: 
model_29423: %
model_29425: @
model_29427:@&
model_29429:@�
model_29431:	�'
model_29433:��
model_29435:	�
model_29437:
�U�
model_29439:	�
model_29441:	�@
model_29443:@
model_29445:@
model_29447:
identity��5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�model/StatefulPartitionedCall�
model/StatefulPartitionedCallStatefulPartitionedCallmodel_inputmodel_29421model_29423model_29425model_29427model_29429model_29431model_29433model_29435model_29437model_29439model_29441model_29443model_29445model_29447*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_28665�
 Sigma_Activation/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_Sigma_Activation_layer_call_and_return_conditional_losses_29189�
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29421*&
_output_shapes
: *
dtype0�
&conv_layer_0/kernel/Regularizer/L2LossL2Loss=conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_0/kernel/Regularizer/mulMul.conv_layer_0/kernel/Regularizer/mul/x:output:0/conv_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29425*&
_output_shapes
: @*
dtype0�
&conv_layer_1/kernel/Regularizer/L2LossL2Loss=conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_1/kernel/Regularizer/mulMul.conv_layer_1/kernel/Regularizer/mul/x:output:0/conv_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29429*'
_output_shapes
:@�*
dtype0�
&conv_layer_2/kernel/Regularizer/L2LossL2Loss=conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_2/kernel/Regularizer/mulMul.conv_layer_2/kernel/Regularizer/mul/x:output:0/conv_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29433*(
_output_shapes
:��*
dtype0�
&conv_layer_3/kernel/Regularizer/L2LossL2Loss=conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_3/kernel/Regularizer/mulMul.conv_layer_3/kernel/Regularizer/mul/x:output:0/conv_layer_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29437* 
_output_shapes
:
�U�*
dtype0�
'dense_layer_0/kernel/Regularizer/L2LossL2Loss>dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_0/kernel/Regularizer/mulMul/dense_layer_0/kernel/Regularizer/mul/x:output:00dense_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29441*
_output_shapes
:	�@*
dtype0�
'dense_layer_1/kernel/Regularizer/L2LossL2Loss>dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_1/kernel/Regularizer/mulMul/dense_layer_1/kernel/Regularizer/mul/x:output:00dense_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29445*
_output_shapes

:@*
dtype0�
'dense_layer_2/kernel/Regularizer/L2LossL2Loss>dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_2/kernel/Regularizer/mulMul/dense_layer_2/kernel/Regularizer/mul/x:output:00dense_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)Sigma_Activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp6^conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 2n
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:] Y
0
_output_shapes
:���������_�
%
_user_specified_namemodel_input
�	
�
__inference_loss_fn_4_30455S
?dense_layer_0_kernel_regularizer_l2loss_readvariableop_resource:
�U�
identity��6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp?dense_layer_0_kernel_regularizer_l2loss_readvariableop_resource* 
_output_shapes
:
�U�*
dtype0�
'dense_layer_0/kernel/Regularizer/L2LossL2Loss>dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_0/kernel/Regularizer/mulMul/dense_layer_0/kernel/Regularizer/mul/x:output:00dense_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: f
IdentityIdentity(dense_layer_0/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp7^dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp
�k
�
 __inference__wrapped_model_28433
model_inputV
<sequential_model_conv_layer_0_conv2d_readvariableop_resource: K
=sequential_model_conv_layer_0_biasadd_readvariableop_resource: V
<sequential_model_conv_layer_1_conv2d_readvariableop_resource: @K
=sequential_model_conv_layer_1_biasadd_readvariableop_resource:@W
<sequential_model_conv_layer_2_conv2d_readvariableop_resource:@�L
=sequential_model_conv_layer_2_biasadd_readvariableop_resource:	�X
<sequential_model_conv_layer_3_conv2d_readvariableop_resource:��L
=sequential_model_conv_layer_3_biasadd_readvariableop_resource:	�Q
=sequential_model_dense_layer_0_matmul_readvariableop_resource:
�U�M
>sequential_model_dense_layer_0_biasadd_readvariableop_resource:	�P
=sequential_model_dense_layer_1_matmul_readvariableop_resource:	�@L
>sequential_model_dense_layer_1_biasadd_readvariableop_resource:@O
=sequential_model_dense_layer_2_matmul_readvariableop_resource:@L
>sequential_model_dense_layer_2_biasadd_readvariableop_resource:
identity��4sequential/model/conv_layer_0/BiasAdd/ReadVariableOp�3sequential/model/conv_layer_0/Conv2D/ReadVariableOp�4sequential/model/conv_layer_1/BiasAdd/ReadVariableOp�3sequential/model/conv_layer_1/Conv2D/ReadVariableOp�4sequential/model/conv_layer_2/BiasAdd/ReadVariableOp�3sequential/model/conv_layer_2/Conv2D/ReadVariableOp�4sequential/model/conv_layer_3/BiasAdd/ReadVariableOp�3sequential/model/conv_layer_3/Conv2D/ReadVariableOp�5sequential/model/dense_layer_0/BiasAdd/ReadVariableOp�4sequential/model/dense_layer_0/MatMul/ReadVariableOp�5sequential/model/dense_layer_1/BiasAdd/ReadVariableOp�4sequential/model/dense_layer_1/MatMul/ReadVariableOp�5sequential/model/dense_layer_2/BiasAdd/ReadVariableOp�4sequential/model/dense_layer_2/MatMul/ReadVariableOp�
3sequential/model/conv_layer_0/Conv2D/ReadVariableOpReadVariableOp<sequential_model_conv_layer_0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
$sequential/model/conv_layer_0/Conv2DConv2Dmodel_input;sequential/model/conv_layer_0/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������/� *
paddingVALID*
strides
�
4sequential/model/conv_layer_0/BiasAdd/ReadVariableOpReadVariableOp=sequential_model_conv_layer_0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
%sequential/model/conv_layer_0/BiasAddBiasAdd-sequential/model/conv_layer_0/Conv2D:output:0<sequential/model/conv_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������/� �
'sequential/model/conv_activation_0/ReluRelu.sequential/model/conv_layer_0/BiasAdd:output:0*
T0*0
_output_shapes
:���������/� �
3sequential/model/conv_layer_1/Conv2D/ReadVariableOpReadVariableOp<sequential_model_conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
$sequential/model/conv_layer_1/Conv2DConv2D5sequential/model/conv_activation_0/Relu:activations:0;sequential/model/conv_layer_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������G@*
paddingVALID*
strides
�
4sequential/model/conv_layer_1/BiasAdd/ReadVariableOpReadVariableOp=sequential_model_conv_layer_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
%sequential/model/conv_layer_1/BiasAddBiasAdd-sequential/model/conv_layer_1/Conv2D:output:0<sequential/model/conv_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������G@�
'sequential/model/conv_activation_1/ReluRelu.sequential/model/conv_layer_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������G@�
3sequential/model/conv_layer_2/Conv2D/ReadVariableOpReadVariableOp<sequential_model_conv_layer_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
$sequential/model/conv_layer_2/Conv2DConv2D5sequential/model/conv_activation_1/Relu:activations:0;sequential/model/conv_layer_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������#�*
paddingVALID*
strides
�
4sequential/model/conv_layer_2/BiasAdd/ReadVariableOpReadVariableOp=sequential_model_conv_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%sequential/model/conv_layer_2/BiasAddBiasAdd-sequential/model/conv_layer_2/Conv2D:output:0<sequential/model/conv_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������#��
'sequential/model/conv_activation_2/ReluRelu.sequential/model/conv_layer_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������#��
3sequential/model/conv_layer_3/Conv2D/ReadVariableOpReadVariableOp<sequential_model_conv_layer_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
$sequential/model/conv_layer_3/Conv2DConv2D5sequential/model/conv_activation_2/Relu:activations:0;sequential/model/conv_layer_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
4sequential/model/conv_layer_3/BiasAdd/ReadVariableOpReadVariableOp=sequential_model_conv_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%sequential/model/conv_layer_3/BiasAddBiasAdd-sequential/model/conv_layer_3/Conv2D:output:0<sequential/model/conv_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
'sequential/model/conv_activation_3/ReluRelu.sequential/model/conv_layer_3/BiasAdd:output:0*
T0*0
_output_shapes
:����������o
sequential/model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����*  �
 sequential/model/flatten/ReshapeReshape5sequential/model/conv_activation_3/Relu:activations:0'sequential/model/flatten/Const:output:0*
T0*(
_output_shapes
:����������U�
4sequential/model/dense_layer_0/MatMul/ReadVariableOpReadVariableOp=sequential_model_dense_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
�U�*
dtype0�
%sequential/model/dense_layer_0/MatMulMatMul)sequential/model/flatten/Reshape:output:0<sequential/model/dense_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
5sequential/model/dense_layer_0/BiasAdd/ReadVariableOpReadVariableOp>sequential_model_dense_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&sequential/model/dense_layer_0/BiasAddBiasAdd/sequential/model/dense_layer_0/MatMul:product:0=sequential/model/dense_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(sequential/model/dense_activation_0/ReluRelu/sequential/model/dense_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
4sequential/model/dense_layer_1/MatMul/ReadVariableOpReadVariableOp=sequential_model_dense_layer_1_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
%sequential/model/dense_layer_1/MatMulMatMul6sequential/model/dense_activation_0/Relu:activations:0<sequential/model/dense_layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
5sequential/model/dense_layer_1/BiasAdd/ReadVariableOpReadVariableOp>sequential_model_dense_layer_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
&sequential/model/dense_layer_1/BiasAddBiasAdd/sequential/model/dense_layer_1/MatMul:product:0=sequential/model/dense_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
(sequential/model/dense_activation_1/ReluRelu/sequential/model/dense_layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
4sequential/model/dense_layer_2/MatMul/ReadVariableOpReadVariableOp=sequential_model_dense_layer_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
%sequential/model/dense_layer_2/MatMulMatMul6sequential/model/dense_activation_1/Relu:activations:0<sequential/model/dense_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
5sequential/model/dense_layer_2/BiasAdd/ReadVariableOpReadVariableOp>sequential_model_dense_layer_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&sequential/model/dense_layer_2/BiasAddBiasAdd/sequential/model/dense_layer_2/MatMul:product:0=sequential/model/dense_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
/sequential/Sigma_Activation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    �����
1sequential/Sigma_Activation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
1sequential/Sigma_Activation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
)sequential/Sigma_Activation/strided_sliceStridedSlice/sequential/model/dense_layer_2/BiasAdd:output:08sequential/Sigma_Activation/strided_slice/stack:output:0:sequential/Sigma_Activation/strided_slice/stack_1:output:0:sequential/Sigma_Activation/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
ellipsis_mask*
end_mask�
$sequential/Sigma_Activation/SoftplusSoftplus2sequential/Sigma_Activation/strided_slice:output:0*
T0*'
_output_shapes
:����������
1sequential/Sigma_Activation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
3sequential/Sigma_Activation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    �����
3sequential/Sigma_Activation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
+sequential/Sigma_Activation/strided_slice_1StridedSlice/sequential/model/dense_layer_2/BiasAdd:output:0:sequential/Sigma_Activation/strided_slice_1/stack:output:0<sequential/Sigma_Activation/strided_slice_1/stack_1:output:0<sequential/Sigma_Activation/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
ellipsis_maskr
'sequential/Sigma_Activation/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
"sequential/Sigma_Activation/concatConcatV24sequential/Sigma_Activation/strided_slice_1:output:02sequential/Sigma_Activation/Softplus:activations:00sequential/Sigma_Activation/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������z
IdentityIdentity+sequential/Sigma_Activation/concat:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp5^sequential/model/conv_layer_0/BiasAdd/ReadVariableOp4^sequential/model/conv_layer_0/Conv2D/ReadVariableOp5^sequential/model/conv_layer_1/BiasAdd/ReadVariableOp4^sequential/model/conv_layer_1/Conv2D/ReadVariableOp5^sequential/model/conv_layer_2/BiasAdd/ReadVariableOp4^sequential/model/conv_layer_2/Conv2D/ReadVariableOp5^sequential/model/conv_layer_3/BiasAdd/ReadVariableOp4^sequential/model/conv_layer_3/Conv2D/ReadVariableOp6^sequential/model/dense_layer_0/BiasAdd/ReadVariableOp5^sequential/model/dense_layer_0/MatMul/ReadVariableOp6^sequential/model/dense_layer_1/BiasAdd/ReadVariableOp5^sequential/model/dense_layer_1/MatMul/ReadVariableOp6^sequential/model/dense_layer_2/BiasAdd/ReadVariableOp5^sequential/model/dense_layer_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 2l
4sequential/model/conv_layer_0/BiasAdd/ReadVariableOp4sequential/model/conv_layer_0/BiasAdd/ReadVariableOp2j
3sequential/model/conv_layer_0/Conv2D/ReadVariableOp3sequential/model/conv_layer_0/Conv2D/ReadVariableOp2l
4sequential/model/conv_layer_1/BiasAdd/ReadVariableOp4sequential/model/conv_layer_1/BiasAdd/ReadVariableOp2j
3sequential/model/conv_layer_1/Conv2D/ReadVariableOp3sequential/model/conv_layer_1/Conv2D/ReadVariableOp2l
4sequential/model/conv_layer_2/BiasAdd/ReadVariableOp4sequential/model/conv_layer_2/BiasAdd/ReadVariableOp2j
3sequential/model/conv_layer_2/Conv2D/ReadVariableOp3sequential/model/conv_layer_2/Conv2D/ReadVariableOp2l
4sequential/model/conv_layer_3/BiasAdd/ReadVariableOp4sequential/model/conv_layer_3/BiasAdd/ReadVariableOp2j
3sequential/model/conv_layer_3/Conv2D/ReadVariableOp3sequential/model/conv_layer_3/Conv2D/ReadVariableOp2n
5sequential/model/dense_layer_0/BiasAdd/ReadVariableOp5sequential/model/dense_layer_0/BiasAdd/ReadVariableOp2l
4sequential/model/dense_layer_0/MatMul/ReadVariableOp4sequential/model/dense_layer_0/MatMul/ReadVariableOp2n
5sequential/model/dense_layer_1/BiasAdd/ReadVariableOp5sequential/model/dense_layer_1/BiasAdd/ReadVariableOp2l
4sequential/model/dense_layer_1/MatMul/ReadVariableOp4sequential/model/dense_layer_1/MatMul/ReadVariableOp2n
5sequential/model/dense_layer_2/BiasAdd/ReadVariableOp5sequential/model/dense_layer_2/BiasAdd/ReadVariableOp2l
4sequential/model/dense_layer_2/MatMul/ReadVariableOp4sequential/model/dense_layer_2/MatMul/ReadVariableOp:] Y
0
_output_shapes
:���������_�
%
_user_specified_namemodel_input
�
i
M__inference_dense_activation_2_layer_call_and_return_conditional_losses_28634

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
N
2__inference_dense_activation_1_layer_call_fn_30373

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *V
fQRO
M__inference_dense_activation_1_layer_call_and_return_conditional_losses_28608`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_29672

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�U�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_29220o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������_�
 
_user_specified_nameinputs
�
�
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_28481

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������G@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������G@�
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
&conv_layer_1/kernel/Regularizer/L2LossL2Loss=conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_1/kernel/Regularizer/mulMul.conv_layer_1/kernel/Regularizer/mul/x:output:0/conv_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������G@�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp6^conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������/� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2n
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:���������/� 
 
_user_specified_nameinputs
�
�
G__inference_conv_layer_3_layer_call_and_return_conditional_losses_28535

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&conv_layer_3/kernel/Regularizer/L2LossL2Loss=conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_3/kernel/Regularizer/mulMul.conv_layer_3/kernel/Regularizer/mul/x:output:0/conv_layer_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp6^conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������#�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2n
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:���������#�
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_3_30446Z
>conv_layer_3_kernel_regularizer_l2loss_readvariableop_resource:��
identity��5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp�
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp>conv_layer_3_kernel_regularizer_l2loss_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&conv_layer_3/kernel/Regularizer/L2LossL2Loss=conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_3/kernel/Regularizer/mulMul.conv_layer_3/kernel/Regularizer/mul/x:output:0/conv_layer_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: e
IdentityIdentity'conv_layer_3/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ~
NoOpNoOp6^conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2n
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp
�;
�
E__inference_sequential_layer_call_and_return_conditional_losses_29542
model_input%
model_29483: 
model_29485: %
model_29487: @
model_29489:@&
model_29491:@�
model_29493:	�'
model_29495:��
model_29497:	�
model_29499:
�U�
model_29501:	�
model_29503:	�@
model_29505:@
model_29507:@
model_29509:
identity��5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�model/StatefulPartitionedCall�
model/StatefulPartitionedCallStatefulPartitionedCallmodel_inputmodel_29483model_29485model_29487model_29489model_29491model_29493model_29495model_29497model_29499model_29501model_29503model_29505model_29507model_29509*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_28924�
 Sigma_Activation/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_Sigma_Activation_layer_call_and_return_conditional_losses_29189�
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29483*&
_output_shapes
: *
dtype0�
&conv_layer_0/kernel/Regularizer/L2LossL2Loss=conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_0/kernel/Regularizer/mulMul.conv_layer_0/kernel/Regularizer/mul/x:output:0/conv_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29487*&
_output_shapes
: @*
dtype0�
&conv_layer_1/kernel/Regularizer/L2LossL2Loss=conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_1/kernel/Regularizer/mulMul.conv_layer_1/kernel/Regularizer/mul/x:output:0/conv_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29491*'
_output_shapes
:@�*
dtype0�
&conv_layer_2/kernel/Regularizer/L2LossL2Loss=conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_2/kernel/Regularizer/mulMul.conv_layer_2/kernel/Regularizer/mul/x:output:0/conv_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29495*(
_output_shapes
:��*
dtype0�
&conv_layer_3/kernel/Regularizer/L2LossL2Loss=conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_3/kernel/Regularizer/mulMul.conv_layer_3/kernel/Regularizer/mul/x:output:0/conv_layer_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29499* 
_output_shapes
:
�U�*
dtype0�
'dense_layer_0/kernel/Regularizer/L2LossL2Loss>dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_0/kernel/Regularizer/mulMul/dense_layer_0/kernel/Regularizer/mul/x:output:00dense_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29503*
_output_shapes
:	�@*
dtype0�
'dense_layer_1/kernel/Regularizer/L2LossL2Loss>dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_1/kernel/Regularizer/mulMul/dense_layer_1/kernel/Regularizer/mul/x:output:00dense_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29507*
_output_shapes

:@*
dtype0�
'dense_layer_2/kernel/Regularizer/L2LossL2Loss>dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_2/kernel/Regularizer/mulMul/dense_layer_2/kernel/Regularizer/mul/x:output:00dense_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)Sigma_Activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp6^conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 2n
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:] Y
0
_output_shapes
:���������_�
%
_user_specified_namemodel_input
�i
�
__inference__traced_save_30661
file_prefix2
.savev2_conv_layer_0_kernel_read_readvariableop0
,savev2_conv_layer_0_bias_read_readvariableop2
.savev2_conv_layer_1_kernel_read_readvariableop0
,savev2_conv_layer_1_bias_read_readvariableop2
.savev2_conv_layer_2_kernel_read_readvariableop0
,savev2_conv_layer_2_bias_read_readvariableop2
.savev2_conv_layer_3_kernel_read_readvariableop0
,savev2_conv_layer_3_bias_read_readvariableop3
/savev2_dense_layer_0_kernel_read_readvariableop1
-savev2_dense_layer_0_bias_read_readvariableop3
/savev2_dense_layer_1_kernel_read_readvariableop1
-savev2_dense_layer_1_bias_read_readvariableop3
/savev2_dense_layer_2_kernel_read_readvariableop1
-savev2_dense_layer_2_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop9
5savev2_adam_conv_layer_0_kernel_m_read_readvariableop7
3savev2_adam_conv_layer_0_bias_m_read_readvariableop9
5savev2_adam_conv_layer_1_kernel_m_read_readvariableop7
3savev2_adam_conv_layer_1_bias_m_read_readvariableop9
5savev2_adam_conv_layer_2_kernel_m_read_readvariableop7
3savev2_adam_conv_layer_2_bias_m_read_readvariableop9
5savev2_adam_conv_layer_3_kernel_m_read_readvariableop7
3savev2_adam_conv_layer_3_bias_m_read_readvariableop:
6savev2_adam_dense_layer_0_kernel_m_read_readvariableop8
4savev2_adam_dense_layer_0_bias_m_read_readvariableop:
6savev2_adam_dense_layer_1_kernel_m_read_readvariableop8
4savev2_adam_dense_layer_1_bias_m_read_readvariableop:
6savev2_adam_dense_layer_2_kernel_m_read_readvariableop8
4savev2_adam_dense_layer_2_bias_m_read_readvariableop9
5savev2_adam_conv_layer_0_kernel_v_read_readvariableop7
3savev2_adam_conv_layer_0_bias_v_read_readvariableop9
5savev2_adam_conv_layer_1_kernel_v_read_readvariableop7
3savev2_adam_conv_layer_1_bias_v_read_readvariableop9
5savev2_adam_conv_layer_2_kernel_v_read_readvariableop7
3savev2_adam_conv_layer_2_bias_v_read_readvariableop9
5savev2_adam_conv_layer_3_kernel_v_read_readvariableop7
3savev2_adam_conv_layer_3_bias_v_read_readvariableop:
6savev2_adam_dense_layer_0_kernel_v_read_readvariableop8
4savev2_adam_dense_layer_0_bias_v_read_readvariableop:
6savev2_adam_dense_layer_1_kernel_v_read_readvariableop8
4savev2_adam_dense_layer_1_bias_v_read_readvariableop:
6savev2_adam_dense_layer_2_kernel_v_read_readvariableop8
4savev2_adam_dense_layer_2_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*�
value�B�8B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*�
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_conv_layer_0_kernel_read_readvariableop,savev2_conv_layer_0_bias_read_readvariableop.savev2_conv_layer_1_kernel_read_readvariableop,savev2_conv_layer_1_bias_read_readvariableop.savev2_conv_layer_2_kernel_read_readvariableop,savev2_conv_layer_2_bias_read_readvariableop.savev2_conv_layer_3_kernel_read_readvariableop,savev2_conv_layer_3_bias_read_readvariableop/savev2_dense_layer_0_kernel_read_readvariableop-savev2_dense_layer_0_bias_read_readvariableop/savev2_dense_layer_1_kernel_read_readvariableop-savev2_dense_layer_1_bias_read_readvariableop/savev2_dense_layer_2_kernel_read_readvariableop-savev2_dense_layer_2_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop5savev2_adam_conv_layer_0_kernel_m_read_readvariableop3savev2_adam_conv_layer_0_bias_m_read_readvariableop5savev2_adam_conv_layer_1_kernel_m_read_readvariableop3savev2_adam_conv_layer_1_bias_m_read_readvariableop5savev2_adam_conv_layer_2_kernel_m_read_readvariableop3savev2_adam_conv_layer_2_bias_m_read_readvariableop5savev2_adam_conv_layer_3_kernel_m_read_readvariableop3savev2_adam_conv_layer_3_bias_m_read_readvariableop6savev2_adam_dense_layer_0_kernel_m_read_readvariableop4savev2_adam_dense_layer_0_bias_m_read_readvariableop6savev2_adam_dense_layer_1_kernel_m_read_readvariableop4savev2_adam_dense_layer_1_bias_m_read_readvariableop6savev2_adam_dense_layer_2_kernel_m_read_readvariableop4savev2_adam_dense_layer_2_bias_m_read_readvariableop5savev2_adam_conv_layer_0_kernel_v_read_readvariableop3savev2_adam_conv_layer_0_bias_v_read_readvariableop5savev2_adam_conv_layer_1_kernel_v_read_readvariableop3savev2_adam_conv_layer_1_bias_v_read_readvariableop5savev2_adam_conv_layer_2_kernel_v_read_readvariableop3savev2_adam_conv_layer_2_bias_v_read_readvariableop5savev2_adam_conv_layer_3_kernel_v_read_readvariableop3savev2_adam_conv_layer_3_bias_v_read_readvariableop6savev2_adam_dense_layer_0_kernel_v_read_readvariableop4savev2_adam_dense_layer_0_bias_v_read_readvariableop6savev2_adam_dense_layer_1_kernel_v_read_readvariableop4savev2_adam_dense_layer_1_bias_v_read_readvariableop6savev2_adam_dense_layer_2_kernel_v_read_readvariableop4savev2_adam_dense_layer_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *F
dtypes<
:28	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: : : : @:@:@�:�:��:�:
�U�:�:	�@:@:@:: : : : : : : : : : : : : : : : @:@:@�:�:��:�:
�U�:�:	�@:@:@:: : : @:@:@�:�:��:�:
�U�:�:	�@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@�:!

_output_shapes	
:�:.*
(
_output_shapes
:��:!

_output_shapes	
:�:&	"
 
_output_shapes
:
�U�:!


_output_shapes	
:�:%!

_output_shapes
:	�@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:- )
'
_output_shapes
:@�:!!

_output_shapes	
:�:."*
(
_output_shapes
:��:!#

_output_shapes	
:�:&$"
 
_output_shapes
:
�U�:!%

_output_shapes	
:�:%&!

_output_shapes
:	�@: '

_output_shapes
:@:$( 

_output_shapes

:@: )

_output_shapes
::,*(
&
_output_shapes
: : +

_output_shapes
: :,,(
&
_output_shapes
: @: -

_output_shapes
:@:-.)
'
_output_shapes
:@�:!/

_output_shapes	
:�:.0*
(
_output_shapes
:��:!1

_output_shapes	
:�:&2"
 
_output_shapes
:
�U�:!3

_output_shapes	
:�:%4!

_output_shapes
:	�@: 5

_output_shapes
:@:$6 

_output_shapes

:@: 7

_output_shapes
::8

_output_shapes
: 
�
�
*__inference_sequential_layer_call_fn_29251
model_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�U�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmodel_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_29220o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:���������_�
%
_user_specified_namemodel_input
�
�
*__inference_sequential_layer_call_fn_29705

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�U�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_29354o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������_�
 
_user_specified_nameinputs
�
^
B__inference_flatten_layer_call_and_return_conditional_losses_28554

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����*  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������UY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������U"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
G
0__inference_Sigma_Activation_layer_call_fn_30154
x
identity�
PartitionedCallPartitionedCallx*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_Sigma_Activation_layer_call_and_return_conditional_losses_29189`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:J F
'
_output_shapes
:���������

_user_specified_namex
�
�
G__inference_conv_layer_2_layer_call_and_return_conditional_losses_28508

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������#�*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������#��
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
&conv_layer_2/kernel/Regularizer/L2LossL2Loss=conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_2/kernel/Regularizer/mulMul.conv_layer_2/kernel/Regularizer/mul/x:output:0/conv_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������#��
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp6^conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������G@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2n
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������G@
 
_user_specified_nameinputs
�t
�
@__inference_model_layer_call_and_return_conditional_losses_30149

inputsE
+conv_layer_0_conv2d_readvariableop_resource: :
,conv_layer_0_biasadd_readvariableop_resource: E
+conv_layer_1_conv2d_readvariableop_resource: @:
,conv_layer_1_biasadd_readvariableop_resource:@F
+conv_layer_2_conv2d_readvariableop_resource:@�;
,conv_layer_2_biasadd_readvariableop_resource:	�G
+conv_layer_3_conv2d_readvariableop_resource:��;
,conv_layer_3_biasadd_readvariableop_resource:	�@
,dense_layer_0_matmul_readvariableop_resource:
�U�<
-dense_layer_0_biasadd_readvariableop_resource:	�?
,dense_layer_1_matmul_readvariableop_resource:	�@;
-dense_layer_1_biasadd_readvariableop_resource:@>
,dense_layer_2_matmul_readvariableop_resource:@;
-dense_layer_2_biasadd_readvariableop_resource:
identity��#conv_layer_0/BiasAdd/ReadVariableOp�"conv_layer_0/Conv2D/ReadVariableOp�5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�#conv_layer_1/BiasAdd/ReadVariableOp�"conv_layer_1/Conv2D/ReadVariableOp�5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�#conv_layer_2/BiasAdd/ReadVariableOp�"conv_layer_2/Conv2D/ReadVariableOp�5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�#conv_layer_3/BiasAdd/ReadVariableOp�"conv_layer_3/Conv2D/ReadVariableOp�5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp�$dense_layer_0/BiasAdd/ReadVariableOp�#dense_layer_0/MatMul/ReadVariableOp�6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�$dense_layer_1/BiasAdd/ReadVariableOp�#dense_layer_1/MatMul/ReadVariableOp�6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�$dense_layer_2/BiasAdd/ReadVariableOp�#dense_layer_2/MatMul/ReadVariableOp�6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�
"conv_layer_0/Conv2D/ReadVariableOpReadVariableOp+conv_layer_0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv_layer_0/Conv2DConv2Dinputs*conv_layer_0/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������/� *
paddingVALID*
strides
�
#conv_layer_0/BiasAdd/ReadVariableOpReadVariableOp,conv_layer_0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv_layer_0/BiasAddBiasAddconv_layer_0/Conv2D:output:0+conv_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������/� x
conv_activation_0/ReluReluconv_layer_0/BiasAdd:output:0*
T0*0
_output_shapes
:���������/� �
"conv_layer_1/Conv2D/ReadVariableOpReadVariableOp+conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv_layer_1/Conv2DConv2D$conv_activation_0/Relu:activations:0*conv_layer_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������G@*
paddingVALID*
strides
�
#conv_layer_1/BiasAdd/ReadVariableOpReadVariableOp,conv_layer_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv_layer_1/BiasAddBiasAddconv_layer_1/Conv2D:output:0+conv_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������G@w
conv_activation_1/ReluReluconv_layer_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������G@�
"conv_layer_2/Conv2D/ReadVariableOpReadVariableOp+conv_layer_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv_layer_2/Conv2DConv2D$conv_activation_1/Relu:activations:0*conv_layer_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������#�*
paddingVALID*
strides
�
#conv_layer_2/BiasAdd/ReadVariableOpReadVariableOp,conv_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv_layer_2/BiasAddBiasAddconv_layer_2/Conv2D:output:0+conv_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������#�x
conv_activation_2/ReluReluconv_layer_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������#��
"conv_layer_3/Conv2D/ReadVariableOpReadVariableOp+conv_layer_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv_layer_3/Conv2DConv2D$conv_activation_2/Relu:activations:0*conv_layer_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
#conv_layer_3/BiasAdd/ReadVariableOpReadVariableOp,conv_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv_layer_3/BiasAddBiasAddconv_layer_3/Conv2D:output:0+conv_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������x
conv_activation_3/ReluReluconv_layer_3/BiasAdd:output:0*
T0*0
_output_shapes
:����������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����*  �
flatten/ReshapeReshape$conv_activation_3/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:����������U�
#dense_layer_0/MatMul/ReadVariableOpReadVariableOp,dense_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
�U�*
dtype0�
dense_layer_0/MatMulMatMulflatten/Reshape:output:0+dense_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$dense_layer_0/BiasAdd/ReadVariableOpReadVariableOp-dense_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_layer_0/BiasAddBiasAdddense_layer_0/MatMul:product:0,dense_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������r
dense_activation_0/ReluReludense_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
#dense_layer_1/MatMul/ReadVariableOpReadVariableOp,dense_layer_1_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_layer_1/MatMulMatMul%dense_activation_0/Relu:activations:0+dense_layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
$dense_layer_1/BiasAdd/ReadVariableOpReadVariableOp-dense_layer_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_layer_1/BiasAddBiasAdddense_layer_1/MatMul:product:0,dense_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@q
dense_activation_1/ReluReludense_layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
#dense_layer_2/MatMul/ReadVariableOpReadVariableOp,dense_layer_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_layer_2/MatMulMatMul%dense_activation_1/Relu:activations:0+dense_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$dense_layer_2/BiasAdd/ReadVariableOpReadVariableOp-dense_layer_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_layer_2/BiasAddBiasAdddense_layer_2/MatMul:product:0,dense_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp+conv_layer_0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
&conv_layer_0/kernel/Regularizer/L2LossL2Loss=conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_0/kernel/Regularizer/mulMul.conv_layer_0/kernel/Regularizer/mul/x:output:0/conv_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp+conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
&conv_layer_1/kernel/Regularizer/L2LossL2Loss=conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_1/kernel/Regularizer/mulMul.conv_layer_1/kernel/Regularizer/mul/x:output:0/conv_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp+conv_layer_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
&conv_layer_2/kernel/Regularizer/L2LossL2Loss=conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_2/kernel/Regularizer/mulMul.conv_layer_2/kernel/Regularizer/mul/x:output:0/conv_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp+conv_layer_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&conv_layer_3/kernel/Regularizer/L2LossL2Loss=conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_3/kernel/Regularizer/mulMul.conv_layer_3/kernel/Regularizer/mul/x:output:0/conv_layer_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp,dense_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
�U�*
dtype0�
'dense_layer_0/kernel/Regularizer/L2LossL2Loss>dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_0/kernel/Regularizer/mulMul/dense_layer_0/kernel/Regularizer/mul/x:output:00dense_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp,dense_layer_1_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
'dense_layer_1/kernel/Regularizer/L2LossL2Loss>dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_1/kernel/Regularizer/mulMul/dense_layer_1/kernel/Regularizer/mul/x:output:00dense_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp,dense_layer_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
'dense_layer_2/kernel/Regularizer/L2LossL2Loss>dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_2/kernel/Regularizer/mulMul/dense_layer_2/kernel/Regularizer/mul/x:output:00dense_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: m
IdentityIdentitydense_layer_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^conv_layer_0/BiasAdd/ReadVariableOp#^conv_layer_0/Conv2D/ReadVariableOp6^conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp$^conv_layer_1/BiasAdd/ReadVariableOp#^conv_layer_1/Conv2D/ReadVariableOp6^conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp$^conv_layer_2/BiasAdd/ReadVariableOp#^conv_layer_2/Conv2D/ReadVariableOp6^conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp$^conv_layer_3/BiasAdd/ReadVariableOp#^conv_layer_3/Conv2D/ReadVariableOp6^conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp%^dense_layer_0/BiasAdd/ReadVariableOp$^dense_layer_0/MatMul/ReadVariableOp7^dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp%^dense_layer_1/BiasAdd/ReadVariableOp$^dense_layer_1/MatMul/ReadVariableOp7^dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp%^dense_layer_2/BiasAdd/ReadVariableOp$^dense_layer_2/MatMul/ReadVariableOp7^dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 2J
#conv_layer_0/BiasAdd/ReadVariableOp#conv_layer_0/BiasAdd/ReadVariableOp2H
"conv_layer_0/Conv2D/ReadVariableOp"conv_layer_0/Conv2D/ReadVariableOp2n
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2J
#conv_layer_1/BiasAdd/ReadVariableOp#conv_layer_1/BiasAdd/ReadVariableOp2H
"conv_layer_1/Conv2D/ReadVariableOp"conv_layer_1/Conv2D/ReadVariableOp2n
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2J
#conv_layer_2/BiasAdd/ReadVariableOp#conv_layer_2/BiasAdd/ReadVariableOp2H
"conv_layer_2/Conv2D/ReadVariableOp"conv_layer_2/Conv2D/ReadVariableOp2n
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2J
#conv_layer_3/BiasAdd/ReadVariableOp#conv_layer_3/BiasAdd/ReadVariableOp2H
"conv_layer_3/Conv2D/ReadVariableOp"conv_layer_3/Conv2D/ReadVariableOp2n
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp2L
$dense_layer_0/BiasAdd/ReadVariableOp$dense_layer_0/BiasAdd/ReadVariableOp2J
#dense_layer_0/MatMul/ReadVariableOp#dense_layer_0/MatMul/ReadVariableOp2p
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2L
$dense_layer_1/BiasAdd/ReadVariableOp$dense_layer_1/BiasAdd/ReadVariableOp2J
#dense_layer_1/MatMul/ReadVariableOp#dense_layer_1/MatMul/ReadVariableOp2p
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2L
$dense_layer_2/BiasAdd/ReadVariableOp$dense_layer_2/BiasAdd/ReadVariableOp2J
#dense_layer_2/MatMul/ReadVariableOp#dense_layer_2/MatMul/ReadVariableOp2p
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:���������_�
 
_user_specified_nameinputs
�
�
G__inference_conv_layer_3_layer_call_and_return_conditional_losses_30291

inputs:
conv2d_readvariableop_resource:��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&conv_layer_3/kernel/Regularizer/L2LossL2Loss=conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_3/kernel/Regularizer/mulMul.conv_layer_3/kernel/Regularizer/mul/x:output:0/conv_layer_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp6^conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������#�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2n
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:���������#�
 
_user_specified_nameinputs
�
�
,__inference_conv_layer_2_layer_call_fn_30244

inputs"
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������#�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_2_layer_call_and_return_conditional_losses_28508x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������#�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������G@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������G@
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_29611
model_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�U�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmodel_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *)
f$R"
 __inference__wrapped_model_28433o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:���������_�
%
_user_specified_namemodel_input
�;
�
E__inference_sequential_layer_call_and_return_conditional_losses_29220

inputs%
model_29145: 
model_29147: %
model_29149: @
model_29151:@&
model_29153:@�
model_29155:	�'
model_29157:��
model_29159:	�
model_29161:
�U�
model_29163:	�
model_29165:	�@
model_29167:@
model_29169:@
model_29171:
identity��5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�model/StatefulPartitionedCall�
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_29145model_29147model_29149model_29151model_29153model_29155model_29157model_29159model_29161model_29163model_29165model_29167model_29169model_29171*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_28665�
 Sigma_Activation/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_Sigma_Activation_layer_call_and_return_conditional_losses_29189�
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29145*&
_output_shapes
: *
dtype0�
&conv_layer_0/kernel/Regularizer/L2LossL2Loss=conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_0/kernel/Regularizer/mulMul.conv_layer_0/kernel/Regularizer/mul/x:output:0/conv_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29149*&
_output_shapes
: @*
dtype0�
&conv_layer_1/kernel/Regularizer/L2LossL2Loss=conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_1/kernel/Regularizer/mulMul.conv_layer_1/kernel/Regularizer/mul/x:output:0/conv_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29153*'
_output_shapes
:@�*
dtype0�
&conv_layer_2/kernel/Regularizer/L2LossL2Loss=conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_2/kernel/Regularizer/mulMul.conv_layer_2/kernel/Regularizer/mul/x:output:0/conv_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29157*(
_output_shapes
:��*
dtype0�
&conv_layer_3/kernel/Regularizer/L2LossL2Loss=conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_3/kernel/Regularizer/mulMul.conv_layer_3/kernel/Regularizer/mul/x:output:0/conv_layer_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29161* 
_output_shapes
:
�U�*
dtype0�
'dense_layer_0/kernel/Regularizer/L2LossL2Loss>dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_0/kernel/Regularizer/mulMul/dense_layer_0/kernel/Regularizer/mul/x:output:00dense_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29165*
_output_shapes
:	�@*
dtype0�
'dense_layer_1/kernel/Regularizer/L2LossL2Loss>dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_1/kernel/Regularizer/mulMul/dense_layer_1/kernel/Regularizer/mul/x:output:00dense_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29169*
_output_shapes

:@*
dtype0�
'dense_layer_2/kernel/Regularizer/L2LossL2Loss>dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_2/kernel/Regularizer/mulMul/dense_layer_2/kernel/Regularizer/mul/x:output:00dense_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)Sigma_Activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp6^conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 2n
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:X T
0
_output_shapes
:���������_�
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_0_30419X
>conv_layer_0_kernel_regularizer_l2loss_readvariableop_resource: 
identity��5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp>conv_layer_0_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
: *
dtype0�
&conv_layer_0/kernel/Regularizer/L2LossL2Loss=conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_0/kernel/Regularizer/mulMul.conv_layer_0/kernel/Regularizer/mul/x:output:0/conv_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: e
IdentityIdentity'conv_layer_0/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ~
NoOpNoOp6^conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2n
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp
�k
�

@__inference_model_layer_call_and_return_conditional_losses_29138	
input,
conv_layer_0_29066:  
conv_layer_0_29068: ,
conv_layer_1_29072: @ 
conv_layer_1_29074:@-
conv_layer_2_29078:@�!
conv_layer_2_29080:	�.
conv_layer_3_29084:��!
conv_layer_3_29086:	�'
dense_layer_0_29091:
�U�"
dense_layer_0_29093:	�&
dense_layer_1_29097:	�@!
dense_layer_1_29099:@%
dense_layer_2_29103:@!
dense_layer_2_29105:
identity��$conv_layer_0/StatefulPartitionedCall�5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�$conv_layer_1/StatefulPartitionedCall�5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�$conv_layer_2/StatefulPartitionedCall�5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�$conv_layer_3/StatefulPartitionedCall�5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp�%dense_layer_0/StatefulPartitionedCall�6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�%dense_layer_1/StatefulPartitionedCall�6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�%dense_layer_2/StatefulPartitionedCall�6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�
$conv_layer_0/StatefulPartitionedCallStatefulPartitionedCallinputconv_layer_0_29066conv_layer_0_29068*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������/� *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_0_layer_call_and_return_conditional_losses_28454�
!conv_activation_0/PartitionedCallPartitionedCall-conv_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������/� * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_0_layer_call_and_return_conditional_losses_28465�
$conv_layer_1/StatefulPartitionedCallStatefulPartitionedCall*conv_activation_0/PartitionedCall:output:0conv_layer_1_29072conv_layer_1_29074*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������G@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_28481�
!conv_activation_1/PartitionedCallPartitionedCall-conv_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������G@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_1_layer_call_and_return_conditional_losses_28492�
$conv_layer_2/StatefulPartitionedCallStatefulPartitionedCall*conv_activation_1/PartitionedCall:output:0conv_layer_2_29078conv_layer_2_29080*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������#�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_2_layer_call_and_return_conditional_losses_28508�
!conv_activation_2/PartitionedCallPartitionedCall-conv_layer_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������#�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_2_layer_call_and_return_conditional_losses_28519�
$conv_layer_3/StatefulPartitionedCallStatefulPartitionedCall*conv_activation_2/PartitionedCall:output:0conv_layer_3_29084conv_layer_3_29086*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_3_layer_call_and_return_conditional_losses_28535�
!conv_activation_3/PartitionedCallPartitionedCall-conv_layer_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_3_layer_call_and_return_conditional_losses_28546�
flatten/PartitionedCallPartitionedCall*conv_activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������U* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_28554�
%dense_layer_0/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_layer_0_29091dense_layer_0_29093*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_dense_layer_0_layer_call_and_return_conditional_losses_28570�
"dense_activation_0/PartitionedCallPartitionedCall.dense_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *V
fQRO
M__inference_dense_activation_0_layer_call_and_return_conditional_losses_28581�
%dense_layer_1/StatefulPartitionedCallStatefulPartitionedCall+dense_activation_0/PartitionedCall:output:0dense_layer_1_29097dense_layer_1_29099*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_dense_layer_1_layer_call_and_return_conditional_losses_28597�
"dense_activation_1/PartitionedCallPartitionedCall.dense_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *V
fQRO
M__inference_dense_activation_1_layer_call_and_return_conditional_losses_28608�
%dense_layer_2/StatefulPartitionedCallStatefulPartitionedCall+dense_activation_1/PartitionedCall:output:0dense_layer_2_29103dense_layer_2_29105*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_dense_layer_2_layer_call_and_return_conditional_losses_28624�
"dense_activation_2/PartitionedCallPartitionedCall.dense_layer_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *V
fQRO
M__inference_dense_activation_2_layer_call_and_return_conditional_losses_28634�
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_0_29066*&
_output_shapes
: *
dtype0�
&conv_layer_0/kernel/Regularizer/L2LossL2Loss=conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_0/kernel/Regularizer/mulMul.conv_layer_0/kernel/Regularizer/mul/x:output:0/conv_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_1_29072*&
_output_shapes
: @*
dtype0�
&conv_layer_1/kernel/Regularizer/L2LossL2Loss=conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_1/kernel/Regularizer/mulMul.conv_layer_1/kernel/Regularizer/mul/x:output:0/conv_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_2_29078*'
_output_shapes
:@�*
dtype0�
&conv_layer_2/kernel/Regularizer/L2LossL2Loss=conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_2/kernel/Regularizer/mulMul.conv_layer_2/kernel/Regularizer/mul/x:output:0/conv_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_3_29084*(
_output_shapes
:��*
dtype0�
&conv_layer_3/kernel/Regularizer/L2LossL2Loss=conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_3/kernel/Regularizer/mulMul.conv_layer_3/kernel/Regularizer/mul/x:output:0/conv_layer_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layer_0_29091* 
_output_shapes
:
�U�*
dtype0�
'dense_layer_0/kernel/Regularizer/L2LossL2Loss>dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_0/kernel/Regularizer/mulMul/dense_layer_0/kernel/Regularizer/mul/x:output:00dense_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layer_1_29097*
_output_shapes
:	�@*
dtype0�
'dense_layer_1/kernel/Regularizer/L2LossL2Loss>dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_1/kernel/Regularizer/mulMul/dense_layer_1/kernel/Regularizer/mul/x:output:00dense_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layer_2_29103*
_output_shapes

:@*
dtype0�
'dense_layer_2/kernel/Regularizer/L2LossL2Loss>dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_2/kernel/Regularizer/mulMul/dense_layer_2/kernel/Regularizer/mul/x:output:00dense_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: z
IdentityIdentity+dense_activation_2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^conv_layer_0/StatefulPartitionedCall6^conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp%^conv_layer_1/StatefulPartitionedCall6^conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp%^conv_layer_2/StatefulPartitionedCall6^conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp%^conv_layer_3/StatefulPartitionedCall6^conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp&^dense_layer_0/StatefulPartitionedCall7^dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp&^dense_layer_1/StatefulPartitionedCall7^dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp&^dense_layer_2/StatefulPartitionedCall7^dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 2L
$conv_layer_0/StatefulPartitionedCall$conv_layer_0/StatefulPartitionedCall2n
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2L
$conv_layer_1/StatefulPartitionedCall$conv_layer_1/StatefulPartitionedCall2n
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2L
$conv_layer_2/StatefulPartitionedCall$conv_layer_2/StatefulPartitionedCall2n
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2L
$conv_layer_3/StatefulPartitionedCall$conv_layer_3/StatefulPartitionedCall2n
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp2N
%dense_layer_0/StatefulPartitionedCall%dense_layer_0/StatefulPartitionedCall2p
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2N
%dense_layer_1/StatefulPartitionedCall%dense_layer_1/StatefulPartitionedCall2p
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2N
%dense_layer_2/StatefulPartitionedCall%dense_layer_2/StatefulPartitionedCall2p
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:W S
0
_output_shapes
:���������_�

_user_specified_nameinput
��
�
E__inference_sequential_layer_call_and_return_conditional_losses_29798

inputsK
1model_conv_layer_0_conv2d_readvariableop_resource: @
2model_conv_layer_0_biasadd_readvariableop_resource: K
1model_conv_layer_1_conv2d_readvariableop_resource: @@
2model_conv_layer_1_biasadd_readvariableop_resource:@L
1model_conv_layer_2_conv2d_readvariableop_resource:@�A
2model_conv_layer_2_biasadd_readvariableop_resource:	�M
1model_conv_layer_3_conv2d_readvariableop_resource:��A
2model_conv_layer_3_biasadd_readvariableop_resource:	�F
2model_dense_layer_0_matmul_readvariableop_resource:
�U�B
3model_dense_layer_0_biasadd_readvariableop_resource:	�E
2model_dense_layer_1_matmul_readvariableop_resource:	�@A
3model_dense_layer_1_biasadd_readvariableop_resource:@D
2model_dense_layer_2_matmul_readvariableop_resource:@A
3model_dense_layer_2_biasadd_readvariableop_resource:
identity��5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�)model/conv_layer_0/BiasAdd/ReadVariableOp�(model/conv_layer_0/Conv2D/ReadVariableOp�)model/conv_layer_1/BiasAdd/ReadVariableOp�(model/conv_layer_1/Conv2D/ReadVariableOp�)model/conv_layer_2/BiasAdd/ReadVariableOp�(model/conv_layer_2/Conv2D/ReadVariableOp�)model/conv_layer_3/BiasAdd/ReadVariableOp�(model/conv_layer_3/Conv2D/ReadVariableOp�*model/dense_layer_0/BiasAdd/ReadVariableOp�)model/dense_layer_0/MatMul/ReadVariableOp�*model/dense_layer_1/BiasAdd/ReadVariableOp�)model/dense_layer_1/MatMul/ReadVariableOp�*model/dense_layer_2/BiasAdd/ReadVariableOp�)model/dense_layer_2/MatMul/ReadVariableOp�
(model/conv_layer_0/Conv2D/ReadVariableOpReadVariableOp1model_conv_layer_0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
model/conv_layer_0/Conv2DConv2Dinputs0model/conv_layer_0/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������/� *
paddingVALID*
strides
�
)model/conv_layer_0/BiasAdd/ReadVariableOpReadVariableOp2model_conv_layer_0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model/conv_layer_0/BiasAddBiasAdd"model/conv_layer_0/Conv2D:output:01model/conv_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������/� �
model/conv_activation_0/ReluRelu#model/conv_layer_0/BiasAdd:output:0*
T0*0
_output_shapes
:���������/� �
(model/conv_layer_1/Conv2D/ReadVariableOpReadVariableOp1model_conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
model/conv_layer_1/Conv2DConv2D*model/conv_activation_0/Relu:activations:00model/conv_layer_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������G@*
paddingVALID*
strides
�
)model/conv_layer_1/BiasAdd/ReadVariableOpReadVariableOp2model_conv_layer_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/conv_layer_1/BiasAddBiasAdd"model/conv_layer_1/Conv2D:output:01model/conv_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������G@�
model/conv_activation_1/ReluRelu#model/conv_layer_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������G@�
(model/conv_layer_2/Conv2D/ReadVariableOpReadVariableOp1model_conv_layer_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
model/conv_layer_2/Conv2DConv2D*model/conv_activation_1/Relu:activations:00model/conv_layer_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������#�*
paddingVALID*
strides
�
)model/conv_layer_2/BiasAdd/ReadVariableOpReadVariableOp2model_conv_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv_layer_2/BiasAddBiasAdd"model/conv_layer_2/Conv2D:output:01model/conv_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������#��
model/conv_activation_2/ReluRelu#model/conv_layer_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������#��
(model/conv_layer_3/Conv2D/ReadVariableOpReadVariableOp1model_conv_layer_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model/conv_layer_3/Conv2DConv2D*model/conv_activation_2/Relu:activations:00model/conv_layer_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
)model/conv_layer_3/BiasAdd/ReadVariableOpReadVariableOp2model_conv_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv_layer_3/BiasAddBiasAdd"model/conv_layer_3/Conv2D:output:01model/conv_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
model/conv_activation_3/ReluRelu#model/conv_layer_3/BiasAdd:output:0*
T0*0
_output_shapes
:����������d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����*  �
model/flatten/ReshapeReshape*model/conv_activation_3/Relu:activations:0model/flatten/Const:output:0*
T0*(
_output_shapes
:����������U�
)model/dense_layer_0/MatMul/ReadVariableOpReadVariableOp2model_dense_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
�U�*
dtype0�
model/dense_layer_0/MatMulMatMulmodel/flatten/Reshape:output:01model/dense_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*model/dense_layer_0/BiasAdd/ReadVariableOpReadVariableOp3model_dense_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/dense_layer_0/BiasAddBiasAdd$model/dense_layer_0/MatMul:product:02model/dense_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������~
model/dense_activation_0/ReluRelu$model/dense_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
)model/dense_layer_1/MatMul/ReadVariableOpReadVariableOp2model_dense_layer_1_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
model/dense_layer_1/MatMulMatMul+model/dense_activation_0/Relu:activations:01model/dense_layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*model/dense_layer_1/BiasAdd/ReadVariableOpReadVariableOp3model_dense_layer_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/dense_layer_1/BiasAddBiasAdd$model/dense_layer_1/MatMul:product:02model/dense_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
model/dense_activation_1/ReluRelu$model/dense_layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
)model/dense_layer_2/MatMul/ReadVariableOpReadVariableOp2model_dense_layer_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model/dense_layer_2/MatMulMatMul+model/dense_activation_1/Relu:activations:01model/dense_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*model/dense_layer_2/BiasAdd/ReadVariableOpReadVariableOp3model_dense_layer_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_layer_2/BiasAddBiasAdd$model/dense_layer_2/MatMul:product:02model/dense_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������u
$Sigma_Activation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    ����w
&Sigma_Activation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&Sigma_Activation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Sigma_Activation/strided_sliceStridedSlice$model/dense_layer_2/BiasAdd:output:0-Sigma_Activation/strided_slice/stack:output:0/Sigma_Activation/strided_slice/stack_1:output:0/Sigma_Activation/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
ellipsis_mask*
end_mask�
Sigma_Activation/SoftplusSoftplus'Sigma_Activation/strided_slice:output:0*
T0*'
_output_shapes
:���������w
&Sigma_Activation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(Sigma_Activation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ����y
(Sigma_Activation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
 Sigma_Activation/strided_slice_1StridedSlice$model/dense_layer_2/BiasAdd:output:0/Sigma_Activation/strided_slice_1/stack:output:01Sigma_Activation/strided_slice_1/stack_1:output:01Sigma_Activation/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
ellipsis_maskg
Sigma_Activation/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
Sigma_Activation/concatConcatV2)Sigma_Activation/strided_slice_1:output:0'Sigma_Activation/Softplus:activations:0%Sigma_Activation/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp1model_conv_layer_0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
&conv_layer_0/kernel/Regularizer/L2LossL2Loss=conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_0/kernel/Regularizer/mulMul.conv_layer_0/kernel/Regularizer/mul/x:output:0/conv_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp1model_conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
&conv_layer_1/kernel/Regularizer/L2LossL2Loss=conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_1/kernel/Regularizer/mulMul.conv_layer_1/kernel/Regularizer/mul/x:output:0/conv_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp1model_conv_layer_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
&conv_layer_2/kernel/Regularizer/L2LossL2Loss=conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_2/kernel/Regularizer/mulMul.conv_layer_2/kernel/Regularizer/mul/x:output:0/conv_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp1model_conv_layer_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&conv_layer_3/kernel/Regularizer/L2LossL2Loss=conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_3/kernel/Regularizer/mulMul.conv_layer_3/kernel/Regularizer/mul/x:output:0/conv_layer_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp2model_dense_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
�U�*
dtype0�
'dense_layer_0/kernel/Regularizer/L2LossL2Loss>dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_0/kernel/Regularizer/mulMul/dense_layer_0/kernel/Regularizer/mul/x:output:00dense_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp2model_dense_layer_1_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
'dense_layer_1/kernel/Regularizer/L2LossL2Loss>dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_1/kernel/Regularizer/mulMul/dense_layer_1/kernel/Regularizer/mul/x:output:00dense_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp2model_dense_layer_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
'dense_layer_2/kernel/Regularizer/L2LossL2Loss>dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_2/kernel/Regularizer/mulMul/dense_layer_2/kernel/Regularizer/mul/x:output:00dense_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: o
IdentityIdentity Sigma_Activation/concat:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp6^conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp*^model/conv_layer_0/BiasAdd/ReadVariableOp)^model/conv_layer_0/Conv2D/ReadVariableOp*^model/conv_layer_1/BiasAdd/ReadVariableOp)^model/conv_layer_1/Conv2D/ReadVariableOp*^model/conv_layer_2/BiasAdd/ReadVariableOp)^model/conv_layer_2/Conv2D/ReadVariableOp*^model/conv_layer_3/BiasAdd/ReadVariableOp)^model/conv_layer_3/Conv2D/ReadVariableOp+^model/dense_layer_0/BiasAdd/ReadVariableOp*^model/dense_layer_0/MatMul/ReadVariableOp+^model/dense_layer_1/BiasAdd/ReadVariableOp*^model/dense_layer_1/MatMul/ReadVariableOp+^model/dense_layer_2/BiasAdd/ReadVariableOp*^model/dense_layer_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 2n
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2V
)model/conv_layer_0/BiasAdd/ReadVariableOp)model/conv_layer_0/BiasAdd/ReadVariableOp2T
(model/conv_layer_0/Conv2D/ReadVariableOp(model/conv_layer_0/Conv2D/ReadVariableOp2V
)model/conv_layer_1/BiasAdd/ReadVariableOp)model/conv_layer_1/BiasAdd/ReadVariableOp2T
(model/conv_layer_1/Conv2D/ReadVariableOp(model/conv_layer_1/Conv2D/ReadVariableOp2V
)model/conv_layer_2/BiasAdd/ReadVariableOp)model/conv_layer_2/BiasAdd/ReadVariableOp2T
(model/conv_layer_2/Conv2D/ReadVariableOp(model/conv_layer_2/Conv2D/ReadVariableOp2V
)model/conv_layer_3/BiasAdd/ReadVariableOp)model/conv_layer_3/BiasAdd/ReadVariableOp2T
(model/conv_layer_3/Conv2D/ReadVariableOp(model/conv_layer_3/Conv2D/ReadVariableOp2X
*model/dense_layer_0/BiasAdd/ReadVariableOp*model/dense_layer_0/BiasAdd/ReadVariableOp2V
)model/dense_layer_0/MatMul/ReadVariableOp)model/dense_layer_0/MatMul/ReadVariableOp2X
*model/dense_layer_1/BiasAdd/ReadVariableOp*model/dense_layer_1/BiasAdd/ReadVariableOp2V
)model/dense_layer_1/MatMul/ReadVariableOp)model/dense_layer_1/MatMul/ReadVariableOp2X
*model/dense_layer_2/BiasAdd/ReadVariableOp*model/dense_layer_2/BiasAdd/ReadVariableOp2V
)model/dense_layer_2/MatMul/ReadVariableOp)model/dense_layer_2/MatMul/ReadVariableOp:X T
0
_output_shapes
:���������_�
 
_user_specified_nameinputs
�
C
'__inference_flatten_layer_call_fn_30306

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������U* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_28554a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������U"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
i
M__inference_dense_activation_2_layer_call_and_return_conditional_losses_30410

inputs
identityN
IdentityIdentityinputs*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
%__inference_model_layer_call_fn_28696	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�U�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_28665o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
0
_output_shapes
:���������_�

_user_specified_nameinput
�
�
-__inference_dense_layer_2_layer_call_fn_30387

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_dense_layer_2_layer_call_and_return_conditional_losses_28624o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
G__inference_conv_layer_2_layer_call_and_return_conditional_losses_30258

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������#�*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������#��
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
&conv_layer_2/kernel/Regularizer/L2LossL2Loss=conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_2/kernel/Regularizer/mulMul.conv_layer_2/kernel/Regularizer/mul/x:output:0/conv_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������#��
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp6^conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������G@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2n
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:W S
/
_output_shapes
:���������G@
 
_user_specified_nameinputs
�
�
,__inference_conv_layer_1_layer_call_fn_30211

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������G@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_28481w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������G@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������/� : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������/� 
 
_user_specified_nameinputs
�
i
M__inference_dense_activation_0_layer_call_and_return_conditional_losses_28581

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:����������[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_dense_layer_2_layer_call_and_return_conditional_losses_30401

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
'dense_layer_2/kernel/Regularizer/L2LossL2Loss>dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_2/kernel/Regularizer/mulMul/dense_layer_2/kernel/Regularizer/mul/x:output:00dense_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
H__inference_dense_layer_2_layer_call_and_return_conditional_losses_28624

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
'dense_layer_2/kernel/Regularizer/L2LossL2Loss>dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_2/kernel/Regularizer/mulMul/dense_layer_2/kernel/Regularizer/mul/x:output:00dense_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
M
1__inference_conv_activation_2_layer_call_fn_30263

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������#�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_2_layer_call_and_return_conditional_losses_28519i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������#�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������#�:X T
0
_output_shapes
:���������#�
 
_user_specified_nameinputs
�
�
,__inference_conv_layer_3_layer_call_fn_30277

inputs#
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_3_layer_call_and_return_conditional_losses_28535x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������#�: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������#�
 
_user_specified_nameinputs
�
h
L__inference_conv_activation_3_layer_call_and_return_conditional_losses_28546

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
h
L__inference_conv_activation_3_layer_call_and_return_conditional_losses_30301

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_dense_layer_0_layer_call_and_return_conditional_losses_28570

inputs2
matmul_readvariableop_resource:
�U�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�U�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�U�*
dtype0�
'dense_layer_0/kernel/Regularizer/L2LossL2Loss>dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_0/kernel/Regularizer/mulMul/dense_layer_0/kernel/Regularizer/mul/x:output:00dense_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������U: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������U
 
_user_specified_nameinputs
�
�
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_30225

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������G@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������G@�
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
&conv_layer_1/kernel/Regularizer/L2LossL2Loss=conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_1/kernel/Regularizer/mulMul.conv_layer_1/kernel/Regularizer/mul/x:output:0/conv_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������G@�
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp6^conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������/� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2n
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:���������/� 
 
_user_specified_nameinputs
�t
�
@__inference_model_layer_call_and_return_conditional_losses_30067

inputsE
+conv_layer_0_conv2d_readvariableop_resource: :
,conv_layer_0_biasadd_readvariableop_resource: E
+conv_layer_1_conv2d_readvariableop_resource: @:
,conv_layer_1_biasadd_readvariableop_resource:@F
+conv_layer_2_conv2d_readvariableop_resource:@�;
,conv_layer_2_biasadd_readvariableop_resource:	�G
+conv_layer_3_conv2d_readvariableop_resource:��;
,conv_layer_3_biasadd_readvariableop_resource:	�@
,dense_layer_0_matmul_readvariableop_resource:
�U�<
-dense_layer_0_biasadd_readvariableop_resource:	�?
,dense_layer_1_matmul_readvariableop_resource:	�@;
-dense_layer_1_biasadd_readvariableop_resource:@>
,dense_layer_2_matmul_readvariableop_resource:@;
-dense_layer_2_biasadd_readvariableop_resource:
identity��#conv_layer_0/BiasAdd/ReadVariableOp�"conv_layer_0/Conv2D/ReadVariableOp�5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�#conv_layer_1/BiasAdd/ReadVariableOp�"conv_layer_1/Conv2D/ReadVariableOp�5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�#conv_layer_2/BiasAdd/ReadVariableOp�"conv_layer_2/Conv2D/ReadVariableOp�5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�#conv_layer_3/BiasAdd/ReadVariableOp�"conv_layer_3/Conv2D/ReadVariableOp�5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp�$dense_layer_0/BiasAdd/ReadVariableOp�#dense_layer_0/MatMul/ReadVariableOp�6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�$dense_layer_1/BiasAdd/ReadVariableOp�#dense_layer_1/MatMul/ReadVariableOp�6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�$dense_layer_2/BiasAdd/ReadVariableOp�#dense_layer_2/MatMul/ReadVariableOp�6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�
"conv_layer_0/Conv2D/ReadVariableOpReadVariableOp+conv_layer_0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv_layer_0/Conv2DConv2Dinputs*conv_layer_0/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������/� *
paddingVALID*
strides
�
#conv_layer_0/BiasAdd/ReadVariableOpReadVariableOp,conv_layer_0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv_layer_0/BiasAddBiasAddconv_layer_0/Conv2D:output:0+conv_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������/� x
conv_activation_0/ReluReluconv_layer_0/BiasAdd:output:0*
T0*0
_output_shapes
:���������/� �
"conv_layer_1/Conv2D/ReadVariableOpReadVariableOp+conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv_layer_1/Conv2DConv2D$conv_activation_0/Relu:activations:0*conv_layer_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������G@*
paddingVALID*
strides
�
#conv_layer_1/BiasAdd/ReadVariableOpReadVariableOp,conv_layer_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv_layer_1/BiasAddBiasAddconv_layer_1/Conv2D:output:0+conv_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������G@w
conv_activation_1/ReluReluconv_layer_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������G@�
"conv_layer_2/Conv2D/ReadVariableOpReadVariableOp+conv_layer_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
conv_layer_2/Conv2DConv2D$conv_activation_1/Relu:activations:0*conv_layer_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������#�*
paddingVALID*
strides
�
#conv_layer_2/BiasAdd/ReadVariableOpReadVariableOp,conv_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv_layer_2/BiasAddBiasAddconv_layer_2/Conv2D:output:0+conv_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������#�x
conv_activation_2/ReluReluconv_layer_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������#��
"conv_layer_3/Conv2D/ReadVariableOpReadVariableOp+conv_layer_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
conv_layer_3/Conv2DConv2D$conv_activation_2/Relu:activations:0*conv_layer_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
#conv_layer_3/BiasAdd/ReadVariableOpReadVariableOp,conv_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv_layer_3/BiasAddBiasAddconv_layer_3/Conv2D:output:0+conv_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������x
conv_activation_3/ReluReluconv_layer_3/BiasAdd:output:0*
T0*0
_output_shapes
:����������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����*  �
flatten/ReshapeReshape$conv_activation_3/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:����������U�
#dense_layer_0/MatMul/ReadVariableOpReadVariableOp,dense_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
�U�*
dtype0�
dense_layer_0/MatMulMatMulflatten/Reshape:output:0+dense_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$dense_layer_0/BiasAdd/ReadVariableOpReadVariableOp-dense_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_layer_0/BiasAddBiasAdddense_layer_0/MatMul:product:0,dense_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������r
dense_activation_0/ReluReludense_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
#dense_layer_1/MatMul/ReadVariableOpReadVariableOp,dense_layer_1_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_layer_1/MatMulMatMul%dense_activation_0/Relu:activations:0+dense_layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
$dense_layer_1/BiasAdd/ReadVariableOpReadVariableOp-dense_layer_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_layer_1/BiasAddBiasAdddense_layer_1/MatMul:product:0,dense_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@q
dense_activation_1/ReluReludense_layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
#dense_layer_2/MatMul/ReadVariableOpReadVariableOp,dense_layer_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_layer_2/MatMulMatMul%dense_activation_1/Relu:activations:0+dense_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$dense_layer_2/BiasAdd/ReadVariableOpReadVariableOp-dense_layer_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_layer_2/BiasAddBiasAdddense_layer_2/MatMul:product:0,dense_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp+conv_layer_0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
&conv_layer_0/kernel/Regularizer/L2LossL2Loss=conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_0/kernel/Regularizer/mulMul.conv_layer_0/kernel/Regularizer/mul/x:output:0/conv_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp+conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
&conv_layer_1/kernel/Regularizer/L2LossL2Loss=conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_1/kernel/Regularizer/mulMul.conv_layer_1/kernel/Regularizer/mul/x:output:0/conv_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp+conv_layer_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
&conv_layer_2/kernel/Regularizer/L2LossL2Loss=conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_2/kernel/Regularizer/mulMul.conv_layer_2/kernel/Regularizer/mul/x:output:0/conv_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp+conv_layer_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&conv_layer_3/kernel/Regularizer/L2LossL2Loss=conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_3/kernel/Regularizer/mulMul.conv_layer_3/kernel/Regularizer/mul/x:output:0/conv_layer_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp,dense_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
�U�*
dtype0�
'dense_layer_0/kernel/Regularizer/L2LossL2Loss>dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_0/kernel/Regularizer/mulMul/dense_layer_0/kernel/Regularizer/mul/x:output:00dense_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp,dense_layer_1_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
'dense_layer_1/kernel/Regularizer/L2LossL2Loss>dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_1/kernel/Regularizer/mulMul/dense_layer_1/kernel/Regularizer/mul/x:output:00dense_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp,dense_layer_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
'dense_layer_2/kernel/Regularizer/L2LossL2Loss>dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_2/kernel/Regularizer/mulMul/dense_layer_2/kernel/Regularizer/mul/x:output:00dense_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: m
IdentityIdentitydense_layer_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp$^conv_layer_0/BiasAdd/ReadVariableOp#^conv_layer_0/Conv2D/ReadVariableOp6^conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp$^conv_layer_1/BiasAdd/ReadVariableOp#^conv_layer_1/Conv2D/ReadVariableOp6^conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp$^conv_layer_2/BiasAdd/ReadVariableOp#^conv_layer_2/Conv2D/ReadVariableOp6^conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp$^conv_layer_3/BiasAdd/ReadVariableOp#^conv_layer_3/Conv2D/ReadVariableOp6^conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp%^dense_layer_0/BiasAdd/ReadVariableOp$^dense_layer_0/MatMul/ReadVariableOp7^dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp%^dense_layer_1/BiasAdd/ReadVariableOp$^dense_layer_1/MatMul/ReadVariableOp7^dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp%^dense_layer_2/BiasAdd/ReadVariableOp$^dense_layer_2/MatMul/ReadVariableOp7^dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 2J
#conv_layer_0/BiasAdd/ReadVariableOp#conv_layer_0/BiasAdd/ReadVariableOp2H
"conv_layer_0/Conv2D/ReadVariableOp"conv_layer_0/Conv2D/ReadVariableOp2n
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2J
#conv_layer_1/BiasAdd/ReadVariableOp#conv_layer_1/BiasAdd/ReadVariableOp2H
"conv_layer_1/Conv2D/ReadVariableOp"conv_layer_1/Conv2D/ReadVariableOp2n
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2J
#conv_layer_2/BiasAdd/ReadVariableOp#conv_layer_2/BiasAdd/ReadVariableOp2H
"conv_layer_2/Conv2D/ReadVariableOp"conv_layer_2/Conv2D/ReadVariableOp2n
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2J
#conv_layer_3/BiasAdd/ReadVariableOp#conv_layer_3/BiasAdd/ReadVariableOp2H
"conv_layer_3/Conv2D/ReadVariableOp"conv_layer_3/Conv2D/ReadVariableOp2n
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp2L
$dense_layer_0/BiasAdd/ReadVariableOp$dense_layer_0/BiasAdd/ReadVariableOp2J
#dense_layer_0/MatMul/ReadVariableOp#dense_layer_0/MatMul/ReadVariableOp2p
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2L
$dense_layer_1/BiasAdd/ReadVariableOp$dense_layer_1/BiasAdd/ReadVariableOp2J
#dense_layer_1/MatMul/ReadVariableOp#dense_layer_1/MatMul/ReadVariableOp2p
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2L
$dense_layer_2/BiasAdd/ReadVariableOp$dense_layer_2/BiasAdd/ReadVariableOp2J
#dense_layer_2/MatMul/ReadVariableOp#dense_layer_2/MatMul/ReadVariableOp2p
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:���������_�
 
_user_specified_nameinputs
�
�
%__inference_model_layer_call_fn_29985

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�U�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_28924o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������_�
 
_user_specified_nameinputs
�
N
2__inference_dense_activation_2_layer_call_fn_30406

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *V
fQRO
M__inference_dense_activation_2_layer_call_and_return_conditional_losses_28634`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
h
L__inference_conv_activation_1_layer_call_and_return_conditional_losses_30235

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������G@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������G@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������G@:W S
/
_output_shapes
:���������G@
 
_user_specified_nameinputs
�
�
%__inference_model_layer_call_fn_28988	
input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�U�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_28924o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
0
_output_shapes
:���������_�

_user_specified_nameinput
�	
�
__inference_loss_fn_5_30464R
?dense_layer_1_kernel_regularizer_l2loss_readvariableop_resource:	�@
identity��6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp?dense_layer_1_kernel_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
'dense_layer_1/kernel/Regularizer/L2LossL2Loss>dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_1/kernel/Regularizer/mulMul/dense_layer_1/kernel/Regularizer/mul/x:output:00dense_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: f
IdentityIdentity(dense_layer_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp7^dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp
�l
�

@__inference_model_layer_call_and_return_conditional_losses_28924

inputs,
conv_layer_0_28852:  
conv_layer_0_28854: ,
conv_layer_1_28858: @ 
conv_layer_1_28860:@-
conv_layer_2_28864:@�!
conv_layer_2_28866:	�.
conv_layer_3_28870:��!
conv_layer_3_28872:	�'
dense_layer_0_28877:
�U�"
dense_layer_0_28879:	�&
dense_layer_1_28883:	�@!
dense_layer_1_28885:@%
dense_layer_2_28889:@!
dense_layer_2_28891:
identity��$conv_layer_0/StatefulPartitionedCall�5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�$conv_layer_1/StatefulPartitionedCall�5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�$conv_layer_2/StatefulPartitionedCall�5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�$conv_layer_3/StatefulPartitionedCall�5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp�%dense_layer_0/StatefulPartitionedCall�6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�%dense_layer_1/StatefulPartitionedCall�6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�%dense_layer_2/StatefulPartitionedCall�6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�
$conv_layer_0/StatefulPartitionedCallStatefulPartitionedCallinputsconv_layer_0_28852conv_layer_0_28854*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������/� *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_0_layer_call_and_return_conditional_losses_28454�
!conv_activation_0/PartitionedCallPartitionedCall-conv_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������/� * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_0_layer_call_and_return_conditional_losses_28465�
$conv_layer_1/StatefulPartitionedCallStatefulPartitionedCall*conv_activation_0/PartitionedCall:output:0conv_layer_1_28858conv_layer_1_28860*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������G@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_28481�
!conv_activation_1/PartitionedCallPartitionedCall-conv_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������G@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_1_layer_call_and_return_conditional_losses_28492�
$conv_layer_2/StatefulPartitionedCallStatefulPartitionedCall*conv_activation_1/PartitionedCall:output:0conv_layer_2_28864conv_layer_2_28866*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������#�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_2_layer_call_and_return_conditional_losses_28508�
!conv_activation_2/PartitionedCallPartitionedCall-conv_layer_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������#�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_2_layer_call_and_return_conditional_losses_28519�
$conv_layer_3/StatefulPartitionedCallStatefulPartitionedCall*conv_activation_2/PartitionedCall:output:0conv_layer_3_28870conv_layer_3_28872*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_3_layer_call_and_return_conditional_losses_28535�
!conv_activation_3/PartitionedCallPartitionedCall-conv_layer_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_3_layer_call_and_return_conditional_losses_28546�
flatten/PartitionedCallPartitionedCall*conv_activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������U* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_28554�
%dense_layer_0/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_layer_0_28877dense_layer_0_28879*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_dense_layer_0_layer_call_and_return_conditional_losses_28570�
"dense_activation_0/PartitionedCallPartitionedCall.dense_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *V
fQRO
M__inference_dense_activation_0_layer_call_and_return_conditional_losses_28581�
%dense_layer_1/StatefulPartitionedCallStatefulPartitionedCall+dense_activation_0/PartitionedCall:output:0dense_layer_1_28883dense_layer_1_28885*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_dense_layer_1_layer_call_and_return_conditional_losses_28597�
"dense_activation_1/PartitionedCallPartitionedCall.dense_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *V
fQRO
M__inference_dense_activation_1_layer_call_and_return_conditional_losses_28608�
%dense_layer_2/StatefulPartitionedCallStatefulPartitionedCall+dense_activation_1/PartitionedCall:output:0dense_layer_2_28889dense_layer_2_28891*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_dense_layer_2_layer_call_and_return_conditional_losses_28624�
"dense_activation_2/PartitionedCallPartitionedCall.dense_layer_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *V
fQRO
M__inference_dense_activation_2_layer_call_and_return_conditional_losses_28634�
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_0_28852*&
_output_shapes
: *
dtype0�
&conv_layer_0/kernel/Regularizer/L2LossL2Loss=conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_0/kernel/Regularizer/mulMul.conv_layer_0/kernel/Regularizer/mul/x:output:0/conv_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_1_28858*&
_output_shapes
: @*
dtype0�
&conv_layer_1/kernel/Regularizer/L2LossL2Loss=conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_1/kernel/Regularizer/mulMul.conv_layer_1/kernel/Regularizer/mul/x:output:0/conv_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_2_28864*'
_output_shapes
:@�*
dtype0�
&conv_layer_2/kernel/Regularizer/L2LossL2Loss=conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_2/kernel/Regularizer/mulMul.conv_layer_2/kernel/Regularizer/mul/x:output:0/conv_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_3_28870*(
_output_shapes
:��*
dtype0�
&conv_layer_3/kernel/Regularizer/L2LossL2Loss=conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_3/kernel/Regularizer/mulMul.conv_layer_3/kernel/Regularizer/mul/x:output:0/conv_layer_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layer_0_28877* 
_output_shapes
:
�U�*
dtype0�
'dense_layer_0/kernel/Regularizer/L2LossL2Loss>dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_0/kernel/Regularizer/mulMul/dense_layer_0/kernel/Regularizer/mul/x:output:00dense_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layer_1_28883*
_output_shapes
:	�@*
dtype0�
'dense_layer_1/kernel/Regularizer/L2LossL2Loss>dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_1/kernel/Regularizer/mulMul/dense_layer_1/kernel/Regularizer/mul/x:output:00dense_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layer_2_28889*
_output_shapes

:@*
dtype0�
'dense_layer_2/kernel/Regularizer/L2LossL2Loss>dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_2/kernel/Regularizer/mulMul/dense_layer_2/kernel/Regularizer/mul/x:output:00dense_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: z
IdentityIdentity+dense_activation_2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^conv_layer_0/StatefulPartitionedCall6^conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp%^conv_layer_1/StatefulPartitionedCall6^conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp%^conv_layer_2/StatefulPartitionedCall6^conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp%^conv_layer_3/StatefulPartitionedCall6^conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp&^dense_layer_0/StatefulPartitionedCall7^dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp&^dense_layer_1/StatefulPartitionedCall7^dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp&^dense_layer_2/StatefulPartitionedCall7^dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 2L
$conv_layer_0/StatefulPartitionedCall$conv_layer_0/StatefulPartitionedCall2n
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2L
$conv_layer_1/StatefulPartitionedCall$conv_layer_1/StatefulPartitionedCall2n
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2L
$conv_layer_2/StatefulPartitionedCall$conv_layer_2/StatefulPartitionedCall2n
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2L
$conv_layer_3/StatefulPartitionedCall$conv_layer_3/StatefulPartitionedCall2n
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp2N
%dense_layer_0/StatefulPartitionedCall%dense_layer_0/StatefulPartitionedCall2p
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2N
%dense_layer_1/StatefulPartitionedCall%dense_layer_1/StatefulPartitionedCall2p
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2N
%dense_layer_2/StatefulPartitionedCall%dense_layer_2/StatefulPartitionedCall2p
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:���������_�
 
_user_specified_nameinputs
��
�
E__inference_sequential_layer_call_and_return_conditional_losses_29891

inputsK
1model_conv_layer_0_conv2d_readvariableop_resource: @
2model_conv_layer_0_biasadd_readvariableop_resource: K
1model_conv_layer_1_conv2d_readvariableop_resource: @@
2model_conv_layer_1_biasadd_readvariableop_resource:@L
1model_conv_layer_2_conv2d_readvariableop_resource:@�A
2model_conv_layer_2_biasadd_readvariableop_resource:	�M
1model_conv_layer_3_conv2d_readvariableop_resource:��A
2model_conv_layer_3_biasadd_readvariableop_resource:	�F
2model_dense_layer_0_matmul_readvariableop_resource:
�U�B
3model_dense_layer_0_biasadd_readvariableop_resource:	�E
2model_dense_layer_1_matmul_readvariableop_resource:	�@A
3model_dense_layer_1_biasadd_readvariableop_resource:@D
2model_dense_layer_2_matmul_readvariableop_resource:@A
3model_dense_layer_2_biasadd_readvariableop_resource:
identity��5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�)model/conv_layer_0/BiasAdd/ReadVariableOp�(model/conv_layer_0/Conv2D/ReadVariableOp�)model/conv_layer_1/BiasAdd/ReadVariableOp�(model/conv_layer_1/Conv2D/ReadVariableOp�)model/conv_layer_2/BiasAdd/ReadVariableOp�(model/conv_layer_2/Conv2D/ReadVariableOp�)model/conv_layer_3/BiasAdd/ReadVariableOp�(model/conv_layer_3/Conv2D/ReadVariableOp�*model/dense_layer_0/BiasAdd/ReadVariableOp�)model/dense_layer_0/MatMul/ReadVariableOp�*model/dense_layer_1/BiasAdd/ReadVariableOp�)model/dense_layer_1/MatMul/ReadVariableOp�*model/dense_layer_2/BiasAdd/ReadVariableOp�)model/dense_layer_2/MatMul/ReadVariableOp�
(model/conv_layer_0/Conv2D/ReadVariableOpReadVariableOp1model_conv_layer_0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
model/conv_layer_0/Conv2DConv2Dinputs0model/conv_layer_0/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������/� *
paddingVALID*
strides
�
)model/conv_layer_0/BiasAdd/ReadVariableOpReadVariableOp2model_conv_layer_0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model/conv_layer_0/BiasAddBiasAdd"model/conv_layer_0/Conv2D:output:01model/conv_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������/� �
model/conv_activation_0/ReluRelu#model/conv_layer_0/BiasAdd:output:0*
T0*0
_output_shapes
:���������/� �
(model/conv_layer_1/Conv2D/ReadVariableOpReadVariableOp1model_conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
model/conv_layer_1/Conv2DConv2D*model/conv_activation_0/Relu:activations:00model/conv_layer_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������G@*
paddingVALID*
strides
�
)model/conv_layer_1/BiasAdd/ReadVariableOpReadVariableOp2model_conv_layer_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/conv_layer_1/BiasAddBiasAdd"model/conv_layer_1/Conv2D:output:01model/conv_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������G@�
model/conv_activation_1/ReluRelu#model/conv_layer_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������G@�
(model/conv_layer_2/Conv2D/ReadVariableOpReadVariableOp1model_conv_layer_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
model/conv_layer_2/Conv2DConv2D*model/conv_activation_1/Relu:activations:00model/conv_layer_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������#�*
paddingVALID*
strides
�
)model/conv_layer_2/BiasAdd/ReadVariableOpReadVariableOp2model_conv_layer_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv_layer_2/BiasAddBiasAdd"model/conv_layer_2/Conv2D:output:01model/conv_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������#��
model/conv_activation_2/ReluRelu#model/conv_layer_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������#��
(model/conv_layer_3/Conv2D/ReadVariableOpReadVariableOp1model_conv_layer_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model/conv_layer_3/Conv2DConv2D*model/conv_activation_2/Relu:activations:00model/conv_layer_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
)model/conv_layer_3/BiasAdd/ReadVariableOpReadVariableOp2model_conv_layer_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/conv_layer_3/BiasAddBiasAdd"model/conv_layer_3/Conv2D:output:01model/conv_layer_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
model/conv_activation_3/ReluRelu#model/conv_layer_3/BiasAdd:output:0*
T0*0
_output_shapes
:����������d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����*  �
model/flatten/ReshapeReshape*model/conv_activation_3/Relu:activations:0model/flatten/Const:output:0*
T0*(
_output_shapes
:����������U�
)model/dense_layer_0/MatMul/ReadVariableOpReadVariableOp2model_dense_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
�U�*
dtype0�
model/dense_layer_0/MatMulMatMulmodel/flatten/Reshape:output:01model/dense_layer_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*model/dense_layer_0/BiasAdd/ReadVariableOpReadVariableOp3model_dense_layer_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/dense_layer_0/BiasAddBiasAdd$model/dense_layer_0/MatMul:product:02model/dense_layer_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������~
model/dense_activation_0/ReluRelu$model/dense_layer_0/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
)model/dense_layer_1/MatMul/ReadVariableOpReadVariableOp2model_dense_layer_1_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
model/dense_layer_1/MatMulMatMul+model/dense_activation_0/Relu:activations:01model/dense_layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*model/dense_layer_1/BiasAdd/ReadVariableOpReadVariableOp3model_dense_layer_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/dense_layer_1/BiasAddBiasAdd$model/dense_layer_1/MatMul:product:02model/dense_layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@}
model/dense_activation_1/ReluRelu$model/dense_layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
)model/dense_layer_2/MatMul/ReadVariableOpReadVariableOp2model_dense_layer_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model/dense_layer_2/MatMulMatMul+model/dense_activation_1/Relu:activations:01model/dense_layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*model/dense_layer_2/BiasAdd/ReadVariableOpReadVariableOp3model_dense_layer_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_layer_2/BiasAddBiasAdd$model/dense_layer_2/MatMul:product:02model/dense_layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������u
$Sigma_Activation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    ����w
&Sigma_Activation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        w
&Sigma_Activation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Sigma_Activation/strided_sliceStridedSlice$model/dense_layer_2/BiasAdd:output:0-Sigma_Activation/strided_slice/stack:output:0/Sigma_Activation/strided_slice/stack_1:output:0/Sigma_Activation/strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
ellipsis_mask*
end_mask�
Sigma_Activation/SoftplusSoftplus'Sigma_Activation/strided_slice:output:0*
T0*'
_output_shapes
:���������w
&Sigma_Activation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(Sigma_Activation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ����y
(Sigma_Activation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
 Sigma_Activation/strided_slice_1StridedSlice$model/dense_layer_2/BiasAdd:output:0/Sigma_Activation/strided_slice_1/stack:output:01Sigma_Activation/strided_slice_1/stack_1:output:01Sigma_Activation/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
ellipsis_maskg
Sigma_Activation/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
Sigma_Activation/concatConcatV2)Sigma_Activation/strided_slice_1:output:0'Sigma_Activation/Softplus:activations:0%Sigma_Activation/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp1model_conv_layer_0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
&conv_layer_0/kernel/Regularizer/L2LossL2Loss=conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_0/kernel/Regularizer/mulMul.conv_layer_0/kernel/Regularizer/mul/x:output:0/conv_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp1model_conv_layer_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
&conv_layer_1/kernel/Regularizer/L2LossL2Loss=conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_1/kernel/Regularizer/mulMul.conv_layer_1/kernel/Regularizer/mul/x:output:0/conv_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp1model_conv_layer_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
&conv_layer_2/kernel/Regularizer/L2LossL2Loss=conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_2/kernel/Regularizer/mulMul.conv_layer_2/kernel/Regularizer/mul/x:output:0/conv_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp1model_conv_layer_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&conv_layer_3/kernel/Regularizer/L2LossL2Loss=conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_3/kernel/Regularizer/mulMul.conv_layer_3/kernel/Regularizer/mul/x:output:0/conv_layer_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp2model_dense_layer_0_matmul_readvariableop_resource* 
_output_shapes
:
�U�*
dtype0�
'dense_layer_0/kernel/Regularizer/L2LossL2Loss>dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_0/kernel/Regularizer/mulMul/dense_layer_0/kernel/Regularizer/mul/x:output:00dense_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp2model_dense_layer_1_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
'dense_layer_1/kernel/Regularizer/L2LossL2Loss>dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_1/kernel/Regularizer/mulMul/dense_layer_1/kernel/Regularizer/mul/x:output:00dense_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp2model_dense_layer_2_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
'dense_layer_2/kernel/Regularizer/L2LossL2Loss>dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_2/kernel/Regularizer/mulMul/dense_layer_2/kernel/Regularizer/mul/x:output:00dense_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: o
IdentityIdentity Sigma_Activation/concat:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp6^conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp*^model/conv_layer_0/BiasAdd/ReadVariableOp)^model/conv_layer_0/Conv2D/ReadVariableOp*^model/conv_layer_1/BiasAdd/ReadVariableOp)^model/conv_layer_1/Conv2D/ReadVariableOp*^model/conv_layer_2/BiasAdd/ReadVariableOp)^model/conv_layer_2/Conv2D/ReadVariableOp*^model/conv_layer_3/BiasAdd/ReadVariableOp)^model/conv_layer_3/Conv2D/ReadVariableOp+^model/dense_layer_0/BiasAdd/ReadVariableOp*^model/dense_layer_0/MatMul/ReadVariableOp+^model/dense_layer_1/BiasAdd/ReadVariableOp*^model/dense_layer_1/MatMul/ReadVariableOp+^model/dense_layer_2/BiasAdd/ReadVariableOp*^model/dense_layer_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 2n
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2V
)model/conv_layer_0/BiasAdd/ReadVariableOp)model/conv_layer_0/BiasAdd/ReadVariableOp2T
(model/conv_layer_0/Conv2D/ReadVariableOp(model/conv_layer_0/Conv2D/ReadVariableOp2V
)model/conv_layer_1/BiasAdd/ReadVariableOp)model/conv_layer_1/BiasAdd/ReadVariableOp2T
(model/conv_layer_1/Conv2D/ReadVariableOp(model/conv_layer_1/Conv2D/ReadVariableOp2V
)model/conv_layer_2/BiasAdd/ReadVariableOp)model/conv_layer_2/BiasAdd/ReadVariableOp2T
(model/conv_layer_2/Conv2D/ReadVariableOp(model/conv_layer_2/Conv2D/ReadVariableOp2V
)model/conv_layer_3/BiasAdd/ReadVariableOp)model/conv_layer_3/BiasAdd/ReadVariableOp2T
(model/conv_layer_3/Conv2D/ReadVariableOp(model/conv_layer_3/Conv2D/ReadVariableOp2X
*model/dense_layer_0/BiasAdd/ReadVariableOp*model/dense_layer_0/BiasAdd/ReadVariableOp2V
)model/dense_layer_0/MatMul/ReadVariableOp)model/dense_layer_0/MatMul/ReadVariableOp2X
*model/dense_layer_1/BiasAdd/ReadVariableOp*model/dense_layer_1/BiasAdd/ReadVariableOp2V
)model/dense_layer_1/MatMul/ReadVariableOp)model/dense_layer_1/MatMul/ReadVariableOp2X
*model/dense_layer_2/BiasAdd/ReadVariableOp*model/dense_layer_2/BiasAdd/ReadVariableOp2V
)model/dense_layer_2/MatMul/ReadVariableOp)model/dense_layer_2/MatMul/ReadVariableOp:X T
0
_output_shapes
:���������_�
 
_user_specified_nameinputs
�
i
M__inference_dense_activation_1_layer_call_and_return_conditional_losses_30378

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:���������@Z
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
h
L__inference_conv_activation_1_layer_call_and_return_conditional_losses_28492

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������G@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������G@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������G@:W S
/
_output_shapes
:���������G@
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_29418
model_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
�U�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:@

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmodel_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_29354o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
0
_output_shapes
:���������_�
%
_user_specified_namemodel_input
�k
�

@__inference_model_layer_call_and_return_conditional_losses_29063	
input,
conv_layer_0_28991:  
conv_layer_0_28993: ,
conv_layer_1_28997: @ 
conv_layer_1_28999:@-
conv_layer_2_29003:@�!
conv_layer_2_29005:	�.
conv_layer_3_29009:��!
conv_layer_3_29011:	�'
dense_layer_0_29016:
�U�"
dense_layer_0_29018:	�&
dense_layer_1_29022:	�@!
dense_layer_1_29024:@%
dense_layer_2_29028:@!
dense_layer_2_29030:
identity��$conv_layer_0/StatefulPartitionedCall�5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�$conv_layer_1/StatefulPartitionedCall�5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�$conv_layer_2/StatefulPartitionedCall�5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�$conv_layer_3/StatefulPartitionedCall�5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp�%dense_layer_0/StatefulPartitionedCall�6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�%dense_layer_1/StatefulPartitionedCall�6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�%dense_layer_2/StatefulPartitionedCall�6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�
$conv_layer_0/StatefulPartitionedCallStatefulPartitionedCallinputconv_layer_0_28991conv_layer_0_28993*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������/� *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_0_layer_call_and_return_conditional_losses_28454�
!conv_activation_0/PartitionedCallPartitionedCall-conv_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������/� * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_0_layer_call_and_return_conditional_losses_28465�
$conv_layer_1/StatefulPartitionedCallStatefulPartitionedCall*conv_activation_0/PartitionedCall:output:0conv_layer_1_28997conv_layer_1_28999*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������G@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_28481�
!conv_activation_1/PartitionedCallPartitionedCall-conv_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������G@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_1_layer_call_and_return_conditional_losses_28492�
$conv_layer_2/StatefulPartitionedCallStatefulPartitionedCall*conv_activation_1/PartitionedCall:output:0conv_layer_2_29003conv_layer_2_29005*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������#�*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_2_layer_call_and_return_conditional_losses_28508�
!conv_activation_2/PartitionedCallPartitionedCall-conv_layer_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������#�* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_2_layer_call_and_return_conditional_losses_28519�
$conv_layer_3/StatefulPartitionedCallStatefulPartitionedCall*conv_activation_2/PartitionedCall:output:0conv_layer_3_29009conv_layer_3_29011*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *P
fKRI
G__inference_conv_layer_3_layer_call_and_return_conditional_losses_28535�
!conv_activation_3/PartitionedCallPartitionedCall-conv_layer_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_3_layer_call_and_return_conditional_losses_28546�
flatten/PartitionedCallPartitionedCall*conv_activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������U* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_28554�
%dense_layer_0/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_layer_0_29016dense_layer_0_29018*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_dense_layer_0_layer_call_and_return_conditional_losses_28570�
"dense_activation_0/PartitionedCallPartitionedCall.dense_layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *V
fQRO
M__inference_dense_activation_0_layer_call_and_return_conditional_losses_28581�
%dense_layer_1/StatefulPartitionedCallStatefulPartitionedCall+dense_activation_0/PartitionedCall:output:0dense_layer_1_29022dense_layer_1_29024*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_dense_layer_1_layer_call_and_return_conditional_losses_28597�
"dense_activation_1/PartitionedCallPartitionedCall.dense_layer_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *V
fQRO
M__inference_dense_activation_1_layer_call_and_return_conditional_losses_28608�
%dense_layer_2/StatefulPartitionedCallStatefulPartitionedCall+dense_activation_1/PartitionedCall:output:0dense_layer_2_29028dense_layer_2_29030*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_dense_layer_2_layer_call_and_return_conditional_losses_28624�
"dense_activation_2/PartitionedCallPartitionedCall.dense_layer_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *V
fQRO
M__inference_dense_activation_2_layer_call_and_return_conditional_losses_28634�
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_0_28991*&
_output_shapes
: *
dtype0�
&conv_layer_0/kernel/Regularizer/L2LossL2Loss=conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_0/kernel/Regularizer/mulMul.conv_layer_0/kernel/Regularizer/mul/x:output:0/conv_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_1_28997*&
_output_shapes
: @*
dtype0�
&conv_layer_1/kernel/Regularizer/L2LossL2Loss=conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_1/kernel/Regularizer/mulMul.conv_layer_1/kernel/Regularizer/mul/x:output:0/conv_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_2_29003*'
_output_shapes
:@�*
dtype0�
&conv_layer_2/kernel/Regularizer/L2LossL2Loss=conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_2/kernel/Regularizer/mulMul.conv_layer_2/kernel/Regularizer/mul/x:output:0/conv_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv_layer_3_29009*(
_output_shapes
:��*
dtype0�
&conv_layer_3/kernel/Regularizer/L2LossL2Loss=conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_3/kernel/Regularizer/mulMul.conv_layer_3/kernel/Regularizer/mul/x:output:0/conv_layer_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layer_0_29016* 
_output_shapes
:
�U�*
dtype0�
'dense_layer_0/kernel/Regularizer/L2LossL2Loss>dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_0/kernel/Regularizer/mulMul/dense_layer_0/kernel/Regularizer/mul/x:output:00dense_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layer_1_29022*
_output_shapes
:	�@*
dtype0�
'dense_layer_1/kernel/Regularizer/L2LossL2Loss>dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_1/kernel/Regularizer/mulMul/dense_layer_1/kernel/Regularizer/mul/x:output:00dense_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layer_2_29028*
_output_shapes

:@*
dtype0�
'dense_layer_2/kernel/Regularizer/L2LossL2Loss>dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_2/kernel/Regularizer/mulMul/dense_layer_2/kernel/Regularizer/mul/x:output:00dense_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: z
IdentityIdentity+dense_activation_2/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^conv_layer_0/StatefulPartitionedCall6^conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp%^conv_layer_1/StatefulPartitionedCall6^conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp%^conv_layer_2/StatefulPartitionedCall6^conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp%^conv_layer_3/StatefulPartitionedCall6^conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp&^dense_layer_0/StatefulPartitionedCall7^dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp&^dense_layer_1/StatefulPartitionedCall7^dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp&^dense_layer_2/StatefulPartitionedCall7^dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 2L
$conv_layer_0/StatefulPartitionedCall$conv_layer_0/StatefulPartitionedCall2n
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2L
$conv_layer_1/StatefulPartitionedCall$conv_layer_1/StatefulPartitionedCall2n
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2L
$conv_layer_2/StatefulPartitionedCall$conv_layer_2/StatefulPartitionedCall2n
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2L
$conv_layer_3/StatefulPartitionedCall$conv_layer_3/StatefulPartitionedCall2n
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp2N
%dense_layer_0/StatefulPartitionedCall%dense_layer_0/StatefulPartitionedCall2p
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2N
%dense_layer_1/StatefulPartitionedCall%dense_layer_1/StatefulPartitionedCall2p
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2N
%dense_layer_2/StatefulPartitionedCall%dense_layer_2/StatefulPartitionedCall2p
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:W S
0
_output_shapes
:���������_�

_user_specified_nameinput
�
�
-__inference_dense_layer_1_layer_call_fn_30354

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_dense_layer_1_layer_call_and_return_conditional_losses_28597o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
G__inference_conv_layer_0_layer_call_and_return_conditional_losses_30192

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������/� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������/� �
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
&conv_layer_0/kernel/Regularizer/L2LossL2Loss=conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_0/kernel/Regularizer/mulMul.conv_layer_0/kernel/Regularizer/mul/x:output:0/conv_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������/� �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp6^conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������_�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2n
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:���������_�
 
_user_specified_nameinputs
�
b
K__inference_Sigma_Activation_layer_call_and_return_conditional_losses_30169
x
identityd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    ����f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicexstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
ellipsis_mask*
end_mask^
SoftplusSoftplusstrided_slice:output:0*
T0*'
_output_shapes
:���������f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ����h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicexstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
ellipsis_maskV
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
concatConcatV2strided_slice_1:output:0Softplus:activations:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:J F
'
_output_shapes
:���������

_user_specified_namex
�
�
H__inference_dense_layer_0_layer_call_and_return_conditional_losses_30335

inputs2
matmul_readvariableop_resource:
�U�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�U�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�U�*
dtype0�
'dense_layer_0/kernel/Regularizer/L2LossL2Loss>dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_0/kernel/Regularizer/mulMul/dense_layer_0/kernel/Regularizer/mul/x:output:00dense_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: `
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������U: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������U
 
_user_specified_nameinputs
�
�
H__inference_dense_layer_1_layer_call_and_return_conditional_losses_30368

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
'dense_layer_1/kernel/Regularizer/L2LossL2Loss>dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_1/kernel/Regularizer/mulMul/dense_layer_1/kernel/Regularizer/mul/x:output:00dense_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
__inference_loss_fn_1_30428X
>conv_layer_1_kernel_regularizer_l2loss_readvariableop_resource: @
identity��5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp>conv_layer_1_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
: @*
dtype0�
&conv_layer_1/kernel/Regularizer/L2LossL2Loss=conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_1/kernel/Regularizer/mulMul.conv_layer_1/kernel/Regularizer/mul/x:output:0/conv_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: e
IdentityIdentity'conv_layer_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: ~
NoOpNoOp6^conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2n
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp
��
�"
!__inference__traced_restore_30836
file_prefix>
$assignvariableop_conv_layer_0_kernel: 2
$assignvariableop_1_conv_layer_0_bias: @
&assignvariableop_2_conv_layer_1_kernel: @2
$assignvariableop_3_conv_layer_1_bias:@A
&assignvariableop_4_conv_layer_2_kernel:@�3
$assignvariableop_5_conv_layer_2_bias:	�B
&assignvariableop_6_conv_layer_3_kernel:��3
$assignvariableop_7_conv_layer_3_bias:	�;
'assignvariableop_8_dense_layer_0_kernel:
�U�4
%assignvariableop_9_dense_layer_0_bias:	�;
(assignvariableop_10_dense_layer_1_kernel:	�@4
&assignvariableop_11_dense_layer_1_bias:@:
(assignvariableop_12_dense_layer_2_kernel:@4
&assignvariableop_13_dense_layer_2_bias:$
assignvariableop_14_beta_1: $
assignvariableop_15_beta_2: #
assignvariableop_16_decay: +
!assignvariableop_17_learning_rate: '
assignvariableop_18_adam_iter:	 %
assignvariableop_19_total_3: %
assignvariableop_20_count_3: %
assignvariableop_21_total_2: %
assignvariableop_22_count_2: %
assignvariableop_23_total_1: %
assignvariableop_24_count_1: #
assignvariableop_25_total: #
assignvariableop_26_count: H
.assignvariableop_27_adam_conv_layer_0_kernel_m: :
,assignvariableop_28_adam_conv_layer_0_bias_m: H
.assignvariableop_29_adam_conv_layer_1_kernel_m: @:
,assignvariableop_30_adam_conv_layer_1_bias_m:@I
.assignvariableop_31_adam_conv_layer_2_kernel_m:@�;
,assignvariableop_32_adam_conv_layer_2_bias_m:	�J
.assignvariableop_33_adam_conv_layer_3_kernel_m:��;
,assignvariableop_34_adam_conv_layer_3_bias_m:	�C
/assignvariableop_35_adam_dense_layer_0_kernel_m:
�U�<
-assignvariableop_36_adam_dense_layer_0_bias_m:	�B
/assignvariableop_37_adam_dense_layer_1_kernel_m:	�@;
-assignvariableop_38_adam_dense_layer_1_bias_m:@A
/assignvariableop_39_adam_dense_layer_2_kernel_m:@;
-assignvariableop_40_adam_dense_layer_2_bias_m:H
.assignvariableop_41_adam_conv_layer_0_kernel_v: :
,assignvariableop_42_adam_conv_layer_0_bias_v: H
.assignvariableop_43_adam_conv_layer_1_kernel_v: @:
,assignvariableop_44_adam_conv_layer_1_bias_v:@I
.assignvariableop_45_adam_conv_layer_2_kernel_v:@�;
,assignvariableop_46_adam_conv_layer_2_bias_v:	�J
.assignvariableop_47_adam_conv_layer_3_kernel_v:��;
,assignvariableop_48_adam_conv_layer_3_bias_v:	�C
/assignvariableop_49_adam_dense_layer_0_kernel_v:
�U�<
-assignvariableop_50_adam_dense_layer_0_bias_v:	�B
/assignvariableop_51_adam_dense_layer_1_kernel_v:	�@;
-assignvariableop_52_adam_dense_layer_1_bias_v:@A
/assignvariableop_53_adam_dense_layer_2_kernel_v:@;
-assignvariableop_54_adam_dense_layer_2_bias_v:
identity_56��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*�
value�B�8B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:8*
dtype0*�
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::*F
dtypes<
:28	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp$assignvariableop_conv_layer_0_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp$assignvariableop_1_conv_layer_0_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp&assignvariableop_2_conv_layer_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp$assignvariableop_3_conv_layer_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp&assignvariableop_4_conv_layer_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp$assignvariableop_5_conv_layer_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp&assignvariableop_6_conv_layer_3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp$assignvariableop_7_conv_layer_3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp'assignvariableop_8_dense_layer_0_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp%assignvariableop_9_dense_layer_0_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp(assignvariableop_10_dense_layer_1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp&assignvariableop_11_dense_layer_1_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp(assignvariableop_12_dense_layer_2_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp&assignvariableop_13_dense_layer_2_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_beta_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_beta_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_decayIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp!assignvariableop_17_learning_rateIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_iterIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_3Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_3Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_2Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adam_conv_layer_0_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp,assignvariableop_28_adam_conv_layer_0_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp.assignvariableop_29_adam_conv_layer_1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp,assignvariableop_30_adam_conv_layer_1_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp.assignvariableop_31_adam_conv_layer_2_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp,assignvariableop_32_adam_conv_layer_2_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp.assignvariableop_33_adam_conv_layer_3_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp,assignvariableop_34_adam_conv_layer_3_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp/assignvariableop_35_adam_dense_layer_0_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp-assignvariableop_36_adam_dense_layer_0_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp/assignvariableop_37_adam_dense_layer_1_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp-assignvariableop_38_adam_dense_layer_1_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp/assignvariableop_39_adam_dense_layer_2_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp-assignvariableop_40_adam_dense_layer_2_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp.assignvariableop_41_adam_conv_layer_0_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp,assignvariableop_42_adam_conv_layer_0_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp.assignvariableop_43_adam_conv_layer_1_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp,assignvariableop_44_adam_conv_layer_1_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp.assignvariableop_45_adam_conv_layer_2_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp,assignvariableop_46_adam_conv_layer_2_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp.assignvariableop_47_adam_conv_layer_3_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp,assignvariableop_48_adam_conv_layer_3_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp/assignvariableop_49_adam_dense_layer_0_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp-assignvariableop_50_adam_dense_layer_0_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp/assignvariableop_51_adam_dense_layer_1_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp-assignvariableop_52_adam_dense_layer_1_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp/assignvariableop_53_adam_dense_layer_2_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp-assignvariableop_54_adam_dense_layer_2_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_55Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_56IdentityIdentity_55:output:0^NoOp_1*
T0*
_output_shapes
: �	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_56Identity_56:output:0*�
_input_shapesr
p: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�;
�
E__inference_sequential_layer_call_and_return_conditional_losses_29354

inputs%
model_29295: 
model_29297: %
model_29299: @
model_29301:@&
model_29303:@�
model_29305:	�'
model_29307:��
model_29309:	�
model_29311:
�U�
model_29313:	�
model_29315:	�@
model_29317:@
model_29319:@
model_29321:
identity��5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp�6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp�model/StatefulPartitionedCall�
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_29295model_29297model_29299model_29301model_29303model_29305model_29307model_29309model_29311model_29313model_29315model_29317model_29319model_29321*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_28924�
 Sigma_Activation/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *T
fORM
K__inference_Sigma_Activation_layer_call_and_return_conditional_losses_29189�
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29295*&
_output_shapes
: *
dtype0�
&conv_layer_0/kernel/Regularizer/L2LossL2Loss=conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_0/kernel/Regularizer/mulMul.conv_layer_0/kernel/Regularizer/mul/x:output:0/conv_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29299*&
_output_shapes
: @*
dtype0�
&conv_layer_1/kernel/Regularizer/L2LossL2Loss=conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_1/kernel/Regularizer/mulMul.conv_layer_1/kernel/Regularizer/mul/x:output:0/conv_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29303*'
_output_shapes
:@�*
dtype0�
&conv_layer_2/kernel/Regularizer/L2LossL2Loss=conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_2/kernel/Regularizer/mulMul.conv_layer_2/kernel/Regularizer/mul/x:output:0/conv_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29307*(
_output_shapes
:��*
dtype0�
&conv_layer_3/kernel/Regularizer/L2LossL2Loss=conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_3/kernel/Regularizer/mulMul.conv_layer_3/kernel/Regularizer/mul/x:output:0/conv_layer_3/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29311* 
_output_shapes
:
�U�*
dtype0�
'dense_layer_0/kernel/Regularizer/L2LossL2Loss>dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_0/kernel/Regularizer/mulMul/dense_layer_0/kernel/Regularizer/mul/x:output:00dense_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29315*
_output_shapes
:	�@*
dtype0�
'dense_layer_1/kernel/Regularizer/L2LossL2Loss>dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_1/kernel/Regularizer/mulMul/dense_layer_1/kernel/Regularizer/mul/x:output:00dense_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmodel_29319*
_output_shapes

:@*
dtype0�
'dense_layer_2/kernel/Regularizer/L2LossL2Loss>dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_2/kernel/Regularizer/mulMul/dense_layer_2/kernel/Regularizer/mul/x:output:00dense_layer_2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: x
IdentityIdentity)Sigma_Activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp6^conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6^conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp7^dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������_�: : : : : : : : : : : : : : 2n
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2n
5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_3/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp2p
6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_2/kernel/Regularizer/L2Loss/ReadVariableOp2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:X T
0
_output_shapes
:���������_�
 
_user_specified_nameinputs
�
M
1__inference_conv_activation_1_layer_call_fn_30230

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������G@* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *U
fPRN
L__inference_conv_activation_1_layer_call_and_return_conditional_losses_28492h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������G@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������G@:W S
/
_output_shapes
:���������G@
 
_user_specified_nameinputs
�
�
G__inference_conv_layer_0_layer_call_and_return_conditional_losses_28454

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������/� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������/� �
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
&conv_layer_0/kernel/Regularizer/L2LossL2Loss=conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%conv_layer_0/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *���8�
#conv_layer_0/kernel/Regularizer/mulMul.conv_layer_0/kernel/Regularizer/mul/x:output:0/conv_layer_0/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:���������/� �
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp6^conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������_�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2n
5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp5conv_layer_0/kernel/Regularizer/L2Loss/ReadVariableOp:X T
0
_output_shapes
:���������_�
 
_user_specified_nameinputs
�
N
2__inference_dense_activation_0_layer_call_fn_30340

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8� *V
fQRO
M__inference_dense_activation_0_layer_call_and_return_conditional_losses_28581a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
h
L__inference_conv_activation_2_layer_call_and_return_conditional_losses_28519

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������#�c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������#�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������#�:X T
0
_output_shapes
:���������#�
 
_user_specified_nameinputs
�
�
-__inference_dense_layer_0_layer_call_fn_30321

inputs
unknown:
�U�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8� *Q
fLRJ
H__inference_dense_layer_0_layer_call_and_return_conditional_losses_28570p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������U: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������U
 
_user_specified_nameinputs
�
b
K__inference_Sigma_Activation_layer_call_and_return_conditional_losses_29189
x
identityd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"    ����f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicexstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
ellipsis_mask*
end_mask^
SoftplusSoftplusstrided_slice:output:0*
T0*'
_output_shapes
:���������f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ����h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicexstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
ellipsis_maskV
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
����������
concatConcatV2strided_slice_1:output:0Softplus:activations:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:J F
'
_output_shapes
:���������

_user_specified_namex
�
h
L__inference_conv_activation_0_layer_call_and_return_conditional_losses_30202

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:���������/� c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:���������/� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������/� :X T
0
_output_shapes
:���������/� 
 
_user_specified_nameinputs
�
�
H__inference_dense_layer_1_layer_call_and_return_conditional_losses_28597

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
'dense_layer_1/kernel/Regularizer/L2LossL2Loss>dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: k
&dense_layer_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *R�j<�
$dense_layer_1/kernel/Regularizer/mulMul/dense_layer_1/kernel/Regularizer/mul/x:output:00dense_layer_1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp6dense_layer_1/kernel/Regularizer/L2Loss/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
L
model_input=
serving_default_model_input:0���������_�D
Sigma_Activation0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
layer-8
layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_network
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
�
(0
)1
*2
+3
,4
-5
.6
/7
08
19
210
311
412
513"
trackable_list_wrapper
�
(0
)1
*2
+3
,4
-5
.6
/7
08
19
210
311
412
513"
trackable_list_wrapper
 "
trackable_list_wrapper
�
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
;trace_0
<trace_1
=trace_2
>trace_32�
*__inference_sequential_layer_call_fn_29251
*__inference_sequential_layer_call_fn_29672
*__inference_sequential_layer_call_fn_29705
*__inference_sequential_layer_call_fn_29418�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z;trace_0z<trace_1z=trace_2z>trace_3
�
?trace_0
@trace_1
Atrace_2
Btrace_32�
E__inference_sequential_layer_call_and_return_conditional_losses_29798
E__inference_sequential_layer_call_and_return_conditional_losses_29891
E__inference_sequential_layer_call_and_return_conditional_losses_29480
E__inference_sequential_layer_call_and_return_conditional_losses_29542�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z?trace_0z@trace_1zAtrace_2zBtrace_3
�B�
 __inference__wrapped_model_28433model_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�

Cbeta_1

Dbeta_2
	Edecay
Flearning_rate
Giter(m�)m�*m�+m�,m�-m�.m�/m�0m�1m�2m�3m�4m�5m�(v�)v�*v�+v�,v�-v�.v�/v�0v�1v�2v�3v�4v�5v�"
	optimizer
,
Hserving_default"
signature_map
"
_tf_keras_input_layer
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

(kernel
)bias
 O_jit_compiled_convolution_op"
_tf_keras_layer
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

*kernel
+bias
 \_jit_compiled_convolution_op"
_tf_keras_layer
�
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_layer
�
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

,kernel
-bias
 i_jit_compiled_convolution_op"
_tf_keras_layer
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses"
_tf_keras_layer
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

.kernel
/bias
 v_jit_compiled_convolution_op"
_tf_keras_layer
�
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
�
}	variables
~trainable_variables
regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

0kernel
1bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

4kernel
5bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
(0
)1
*2
+3
,4
-5
.6
/7
08
19
210
311
412
513"
trackable_list_wrapper
�
(0
)1
*2
+3
,4
-5
.6
/7
08
19
210
311
412
513"
trackable_list_wrapper
X
�0
�1
�2
�3
�4
�5
�6"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
%__inference_model_layer_call_fn_28696
%__inference_model_layer_call_fn_29952
%__inference_model_layer_call_fn_29985
%__inference_model_layer_call_fn_28988�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
@__inference_model_layer_call_and_return_conditional_losses_30067
@__inference_model_layer_call_and_return_conditional_losses_30149
@__inference_model_layer_call_and_return_conditional_losses_29063
@__inference_model_layer_call_and_return_conditional_losses_29138�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_Sigma_Activation_layer_call_fn_30154�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_Sigma_Activation_layer_call_and_return_conditional_losses_30169�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
-:+ 2conv_layer_0/kernel
: 2conv_layer_0/bias
-:+ @2conv_layer_1/kernel
:@2conv_layer_1/bias
.:,@�2conv_layer_2/kernel
 :�2conv_layer_2/bias
/:-��2conv_layer_3/kernel
 :�2conv_layer_3/bias
(:&
�U�2dense_layer_0/kernel
!:�2dense_layer_0/bias
':%	�@2dense_layer_1/kernel
 :@2dense_layer_1/bias
&:$@2dense_layer_2/kernel
 :2dense_layer_2/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_sequential_layer_call_fn_29251model_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_29672inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_29705inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_29418model_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_29798inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_29891inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_29480model_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_29542model_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
�B�
#__inference_signature_wrapper_29611model_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv_layer_0_layer_call_fn_30178�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_conv_layer_0_layer_call_and_return_conditional_losses_30192�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_conv_activation_0_layer_call_fn_30197�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_conv_activation_0_layer_call_and_return_conditional_losses_30202�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv_layer_1_layer_call_fn_30211�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_30225�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_conv_activation_1_layer_call_fn_30230�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_conv_activation_1_layer_call_and_return_conditional_losses_30235�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv_layer_2_layer_call_fn_30244�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_conv_layer_2_layer_call_and_return_conditional_losses_30258�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_conv_activation_2_layer_call_fn_30263�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_conv_activation_2_layer_call_and_return_conditional_losses_30268�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_conv_layer_3_layer_call_fn_30277�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_conv_layer_3_layer_call_and_return_conditional_losses_30291�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_conv_activation_3_layer_call_fn_30296�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_conv_activation_3_layer_call_and_return_conditional_losses_30301�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
}	variables
~trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_flatten_layer_call_fn_30306�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_flatten_layer_call_and_return_conditional_losses_30312�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_dense_layer_0_layer_call_fn_30321�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_dense_layer_0_layer_call_and_return_conditional_losses_30335�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_dense_activation_0_layer_call_fn_30340�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_dense_activation_0_layer_call_and_return_conditional_losses_30345�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_dense_layer_1_layer_call_fn_30354�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_dense_layer_1_layer_call_and_return_conditional_losses_30368�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_dense_activation_1_layer_call_fn_30373�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_dense_activation_1_layer_call_and_return_conditional_losses_30378�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_dense_layer_2_layer_call_fn_30387�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_dense_layer_2_layer_call_and_return_conditional_losses_30401�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_dense_activation_2_layer_call_fn_30406�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_dense_activation_2_layer_call_and_return_conditional_losses_30410�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
__inference_loss_fn_0_30419�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_1_30428�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_2_30437�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_3_30446�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_4_30455�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_5_30464�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_6_30473�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_model_layer_call_fn_28696input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_model_layer_call_fn_29952inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_model_layer_call_fn_29985inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_model_layer_call_fn_28988input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_30067inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_30149inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_29063input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_29138input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_Sigma_Activation_layer_call_fn_30154x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_Sigma_Activation_layer_call_and_return_conditional_losses_30169x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_conv_layer_0_layer_call_fn_30178inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_conv_layer_0_layer_call_and_return_conditional_losses_30192inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_conv_activation_0_layer_call_fn_30197inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_conv_activation_0_layer_call_and_return_conditional_losses_30202inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_conv_layer_1_layer_call_fn_30211inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_30225inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_conv_activation_1_layer_call_fn_30230inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_conv_activation_1_layer_call_and_return_conditional_losses_30235inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_conv_layer_2_layer_call_fn_30244inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_conv_layer_2_layer_call_and_return_conditional_losses_30258inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_conv_activation_2_layer_call_fn_30263inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_conv_activation_2_layer_call_and_return_conditional_losses_30268inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_conv_layer_3_layer_call_fn_30277inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_conv_layer_3_layer_call_and_return_conditional_losses_30291inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_conv_activation_3_layer_call_fn_30296inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_conv_activation_3_layer_call_and_return_conditional_losses_30301inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_flatten_layer_call_fn_30306inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_flatten_layer_call_and_return_conditional_losses_30312inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_dense_layer_0_layer_call_fn_30321inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_dense_layer_0_layer_call_and_return_conditional_losses_30335inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_dense_activation_0_layer_call_fn_30340inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_dense_activation_0_layer_call_and_return_conditional_losses_30345inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_dense_layer_1_layer_call_fn_30354inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_dense_layer_1_layer_call_and_return_conditional_losses_30368inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_dense_activation_1_layer_call_fn_30373inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_dense_activation_1_layer_call_and_return_conditional_losses_30378inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_dense_layer_2_layer_call_fn_30387inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_dense_layer_2_layer_call_and_return_conditional_losses_30401inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_dense_activation_2_layer_call_fn_30406inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_dense_activation_2_layer_call_and_return_conditional_losses_30410inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_30419"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_30428"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_2_30437"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_3_30446"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_4_30455"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_5_30464"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_6_30473"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
2:0 2Adam/conv_layer_0/kernel/m
$:" 2Adam/conv_layer_0/bias/m
2:0 @2Adam/conv_layer_1/kernel/m
$:"@2Adam/conv_layer_1/bias/m
3:1@�2Adam/conv_layer_2/kernel/m
%:#�2Adam/conv_layer_2/bias/m
4:2��2Adam/conv_layer_3/kernel/m
%:#�2Adam/conv_layer_3/bias/m
-:+
�U�2Adam/dense_layer_0/kernel/m
&:$�2Adam/dense_layer_0/bias/m
,:*	�@2Adam/dense_layer_1/kernel/m
%:#@2Adam/dense_layer_1/bias/m
+:)@2Adam/dense_layer_2/kernel/m
%:#2Adam/dense_layer_2/bias/m
2:0 2Adam/conv_layer_0/kernel/v
$:" 2Adam/conv_layer_0/bias/v
2:0 @2Adam/conv_layer_1/kernel/v
$:"@2Adam/conv_layer_1/bias/v
3:1@�2Adam/conv_layer_2/kernel/v
%:#�2Adam/conv_layer_2/bias/v
4:2��2Adam/conv_layer_3/kernel/v
%:#�2Adam/conv_layer_3/bias/v
-:+
�U�2Adam/dense_layer_0/kernel/v
&:$�2Adam/dense_layer_0/bias/v
,:*	�@2Adam/dense_layer_1/kernel/v
%:#@2Adam/dense_layer_1/bias/v
+:)@2Adam/dense_layer_2/kernel/v
%:#2Adam/dense_layer_2/bias/v�
K__inference_Sigma_Activation_layer_call_and_return_conditional_losses_30169S*�'
 �
�
x���������
� "%�"
�
0���������
� z
0__inference_Sigma_Activation_layer_call_fn_30154F*�'
 �
�
x���������
� "�����������
 __inference__wrapped_model_28433�()*+,-./012345=�:
3�0
.�+
model_input���������_�
� "C�@
>
Sigma_Activation*�'
Sigma_Activation����������
L__inference_conv_activation_0_layer_call_and_return_conditional_losses_30202j8�5
.�+
)�&
inputs���������/� 
� ".�+
$�!
0���������/� 
� �
1__inference_conv_activation_0_layer_call_fn_30197]8�5
.�+
)�&
inputs���������/� 
� "!����������/� �
L__inference_conv_activation_1_layer_call_and_return_conditional_losses_30235h7�4
-�*
(�%
inputs���������G@
� "-�*
#� 
0���������G@
� �
1__inference_conv_activation_1_layer_call_fn_30230[7�4
-�*
(�%
inputs���������G@
� " ����������G@�
L__inference_conv_activation_2_layer_call_and_return_conditional_losses_30268j8�5
.�+
)�&
inputs���������#�
� ".�+
$�!
0���������#�
� �
1__inference_conv_activation_2_layer_call_fn_30263]8�5
.�+
)�&
inputs���������#�
� "!����������#��
L__inference_conv_activation_3_layer_call_and_return_conditional_losses_30301j8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
1__inference_conv_activation_3_layer_call_fn_30296]8�5
.�+
)�&
inputs����������
� "!������������
G__inference_conv_layer_0_layer_call_and_return_conditional_losses_30192n()8�5
.�+
)�&
inputs���������_�
� ".�+
$�!
0���������/� 
� �
,__inference_conv_layer_0_layer_call_fn_30178a()8�5
.�+
)�&
inputs���������_�
� "!����������/� �
G__inference_conv_layer_1_layer_call_and_return_conditional_losses_30225m*+8�5
.�+
)�&
inputs���������/� 
� "-�*
#� 
0���������G@
� �
,__inference_conv_layer_1_layer_call_fn_30211`*+8�5
.�+
)�&
inputs���������/� 
� " ����������G@�
G__inference_conv_layer_2_layer_call_and_return_conditional_losses_30258m,-7�4
-�*
(�%
inputs���������G@
� ".�+
$�!
0���������#�
� �
,__inference_conv_layer_2_layer_call_fn_30244`,-7�4
-�*
(�%
inputs���������G@
� "!����������#��
G__inference_conv_layer_3_layer_call_and_return_conditional_losses_30291n./8�5
.�+
)�&
inputs���������#�
� ".�+
$�!
0����������
� �
,__inference_conv_layer_3_layer_call_fn_30277a./8�5
.�+
)�&
inputs���������#�
� "!������������
M__inference_dense_activation_0_layer_call_and_return_conditional_losses_30345Z0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
2__inference_dense_activation_0_layer_call_fn_30340M0�-
&�#
!�
inputs����������
� "������������
M__inference_dense_activation_1_layer_call_and_return_conditional_losses_30378X/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� �
2__inference_dense_activation_1_layer_call_fn_30373K/�,
%�"
 �
inputs���������@
� "����������@�
M__inference_dense_activation_2_layer_call_and_return_conditional_losses_30410X/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� �
2__inference_dense_activation_2_layer_call_fn_30406K/�,
%�"
 �
inputs���������
� "�����������
H__inference_dense_layer_0_layer_call_and_return_conditional_losses_30335^010�-
&�#
!�
inputs����������U
� "&�#
�
0����������
� �
-__inference_dense_layer_0_layer_call_fn_30321Q010�-
&�#
!�
inputs����������U
� "������������
H__inference_dense_layer_1_layer_call_and_return_conditional_losses_30368]230�-
&�#
!�
inputs����������
� "%�"
�
0���������@
� �
-__inference_dense_layer_1_layer_call_fn_30354P230�-
&�#
!�
inputs����������
� "����������@�
H__inference_dense_layer_2_layer_call_and_return_conditional_losses_30401\45/�,
%�"
 �
inputs���������@
� "%�"
�
0���������
� �
-__inference_dense_layer_2_layer_call_fn_30387O45/�,
%�"
 �
inputs���������@
� "�����������
B__inference_flatten_layer_call_and_return_conditional_losses_30312b8�5
.�+
)�&
inputs����������
� "&�#
�
0����������U
� �
'__inference_flatten_layer_call_fn_30306U8�5
.�+
)�&
inputs����������
� "�����������U:
__inference_loss_fn_0_30419(�

� 
� "� :
__inference_loss_fn_1_30428*�

� 
� "� :
__inference_loss_fn_2_30437,�

� 
� "� :
__inference_loss_fn_3_30446.�

� 
� "� :
__inference_loss_fn_4_304550�

� 
� "� :
__inference_loss_fn_5_304642�

� 
� "� :
__inference_loss_fn_6_304734�

� 
� "� �
@__inference_model_layer_call_and_return_conditional_losses_29063x()*+,-./012345?�<
5�2
(�%
input���������_�
p 

 
� "%�"
�
0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_29138x()*+,-./012345?�<
5�2
(�%
input���������_�
p

 
� "%�"
�
0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_30067y()*+,-./012345@�=
6�3
)�&
inputs���������_�
p 

 
� "%�"
�
0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_30149y()*+,-./012345@�=
6�3
)�&
inputs���������_�
p

 
� "%�"
�
0���������
� �
%__inference_model_layer_call_fn_28696k()*+,-./012345?�<
5�2
(�%
input���������_�
p 

 
� "�����������
%__inference_model_layer_call_fn_28988k()*+,-./012345?�<
5�2
(�%
input���������_�
p

 
� "�����������
%__inference_model_layer_call_fn_29952l()*+,-./012345@�=
6�3
)�&
inputs���������_�
p 

 
� "�����������
%__inference_model_layer_call_fn_29985l()*+,-./012345@�=
6�3
)�&
inputs���������_�
p

 
� "�����������
E__inference_sequential_layer_call_and_return_conditional_losses_29480~()*+,-./012345E�B
;�8
.�+
model_input���������_�
p 

 
� "%�"
�
0���������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_29542~()*+,-./012345E�B
;�8
.�+
model_input���������_�
p

 
� "%�"
�
0���������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_29798y()*+,-./012345@�=
6�3
)�&
inputs���������_�
p 

 
� "%�"
�
0���������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_29891y()*+,-./012345@�=
6�3
)�&
inputs���������_�
p

 
� "%�"
�
0���������
� �
*__inference_sequential_layer_call_fn_29251q()*+,-./012345E�B
;�8
.�+
model_input���������_�
p 

 
� "�����������
*__inference_sequential_layer_call_fn_29418q()*+,-./012345E�B
;�8
.�+
model_input���������_�
p

 
� "�����������
*__inference_sequential_layer_call_fn_29672l()*+,-./012345@�=
6�3
)�&
inputs���������_�
p 

 
� "�����������
*__inference_sequential_layer_call_fn_29705l()*+,-./012345@�=
6�3
)�&
inputs���������_�
p

 
� "�����������
#__inference_signature_wrapper_29611�()*+,-./012345L�I
� 
B�?
=
model_input.�+
model_input���������_�"C�@
>
Sigma_Activation*�'
Sigma_Activation���������