
��
:
Add
x"T
y"T
z"T"
Ttype:
2	
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	*1.7.02unknown�
J
aPlaceholder*
dtype0*
_output_shapes
:*
shape:
J
bPlaceholder*
dtype0*
_output_shapes
:*
shape:
5
AddAddab*
T0*
_output_shapes
:
J
yPlaceholder*
dtype0*
_output_shapes
:*
shape:
7
subSubyAdd*
_output_shapes
:*
T0
J
div/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
?
divRealDivsubdiv/y*
_output_shapes
:*
T0
Y
gradients/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
X
gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  �?
s
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
:*
T0*

index_type0
b
gradients/div_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
]
gradients/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
�
(gradients/div_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/div_grad/Shapegradients/div_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
a
gradients/div_grad/RealDivRealDivgradients/Filldiv/y*
T0*
_output_shapes
:
�
gradients/div_grad/SumSumgradients/div_grad/RealDiv(gradients/div_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
gradients/div_grad/ReshapeReshapegradients/div_grad/Sumgradients/div_grad/Shape*
_output_shapes
:*
T0*
Tshape0
G
gradients/div_grad/NegNegsub*
T0*
_output_shapes
:
k
gradients/div_grad/RealDiv_1RealDivgradients/div_grad/Negdiv/y*
T0*
_output_shapes
:
q
gradients/div_grad/RealDiv_2RealDivgradients/div_grad/RealDiv_1div/y*
T0*
_output_shapes
:
p
gradients/div_grad/mulMulgradients/Fillgradients/div_grad/RealDiv_2*
T0*
_output_shapes
:
�
gradients/div_grad/Sum_1Sumgradients/div_grad/mul*gradients/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
gradients/div_grad/Reshape_1Reshapegradients/div_grad/Sum_1gradients/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
^
gradients/sub_grad/NegNeggradients/div_grad/Reshape*
_output_shapes
:*
T0
Q
IdentityIdentitygradients/sub_grad/Neg*
T0*
_output_shapes
:
S

Identity_1Identitygradients/sub_grad/Neg*
_output_shapes
:*
T0
W

Identity_2Identitygradients/div_grad/Reshape*
T0*
_output_shapes
: "