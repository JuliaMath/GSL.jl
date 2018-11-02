#
# This code is auto generated from the GSL headers, do not edit!
#

const size_t = Csize_t


#### gsl_block_double.h #######################################################


@doc md"""
```
mutable struct gsl_block_struct
    size::Csize_t
    data::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_block`

>     typedef struct
>     {
>       size_t size;
>       double * data;
>     } gsl_block;

Vectors and matrices are made by *slicing* an underlying block. A slice
is a set of elements formed from an initial offset and a combination of
indices and step-sizes. In the case of a matrix the step-size for the
column index represents the row-length. The step-size for a vector is
known as the *stride*.

The functions for allocating and deallocating blocks are defined in
gsl\_block.h.

"""
mutable struct gsl_block_struct
    size::Csize_t
    data::Ptr{Cdouble}
end
const gsl_block = gsl_block_struct


#### gsl_block_complex_double.h ###############################################


@doc md"""
```
mutable struct gsl_block_complex_struct
    size::Csize_t
    data::Ptr{Cdouble}
end
```

"""
mutable struct gsl_block_complex_struct
    size::Csize_t
    data::Ptr{Cdouble}
end
const gsl_block_complex = gsl_block_complex_struct


#### gsl_vector_double.h ######################################################


@doc md"""
```
mutable struct gsl_vector
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block}
    owner::Cint
end
```
GSL documentation:

### `gsl_vector`

>     typedef struct
>     {
>       size_t size;
>       size_t stride;
>       double * data;
>       gsl_block * block;
>       int owner;
>     } gsl_vector;

The size is simply the number of vector elements. The range of valid
indices runs from 0 to `size-1`{.sourceCode}. The stride is the
step-size from one element to the next in physical memory, measured in
units of the appropriate datatype. The pointer data gives the location
of the first element of the vector in memory. The pointer block stores
the location of the memory block in which the vector elements are
located (if any). If the vector owns this block then the owner field is
set to one and the block will be deallocated when the vector is freed.
If the vector points to a block owned by another object then the owner
field is zero and any underlying block will not be deallocated with the
vector.

The functions for allocating and accessing vectors are defined in
gsl\_vector.h.

"""
mutable struct gsl_vector
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_vector_view
    vector::gsl_vector
end
```
GSL documentation:

### `gsl_vector_view`

> gsl\_vector\_const\_view

> A vector view is a temporary object, stored on the stack, which can be
> used to operate on a subset of vector elements. Vector views can be
> defined for both constant and non-constant vectors, using separate
> types that preserve constness. A vector view has the type
> gsl\_vector\_view and a constant vector view has the type
> gsl\_vector\_const\_view. In both cases the elements of the view can
> be accessed as a gsl\_vector using the `vector`{.sourceCode} component
> of the view object. A pointer to a vector of type
> `gsl_vector *`{.sourceCode} or `const gsl_vector *`{.sourceCode} can
> be obtained by taking the address of this component with the
> `&`{.sourceCode} operator.
>
> When using this pointer it is important to ensure that the view itself
> remains in scope---the simplest way to do so is by always writing the
> pointer as `&view.vector`{.sourceCode}, and never storing this value
> in another variable.

"""
mutable struct _gsl_vector_view
    vector::gsl_vector
end
const gsl_vector_view = _gsl_vector_view

@doc md"""
```
mutable struct _gsl_vector_const_view
    vector::gsl_vector
end
```

"""
mutable struct _gsl_vector_const_view
    vector::gsl_vector
end
const gsl_vector_const_view = _gsl_vector_const_view


#### gsl_vector_complex_double.h ##############################################


@doc md"""
```
mutable struct gsl_vector_complex
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_complex}
    owner::Cint
end
```

"""
mutable struct gsl_vector_complex
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_complex}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_vector_complex_view
    vector::gsl_vector_complex
end
```

"""
mutable struct _gsl_vector_complex_view
    vector::gsl_vector_complex
end
const gsl_vector_complex_view = _gsl_vector_complex_view

@doc md"""
```
mutable struct _gsl_vector_complex_const_view
    vector::gsl_vector_complex
end
```

"""
mutable struct _gsl_vector_complex_const_view
    vector::gsl_vector_complex
end
const gsl_vector_complex_const_view = _gsl_vector_complex_const_view


#### gsl_matrix_double.h ######################################################


@doc md"""
```
mutable struct gsl_matrix
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block}
    owner::Cint
end
```
GSL documentation:

### `gsl_matrix`

> The gsl\_matrix structure contains six components, the two dimensions
> of the matrix, a physical dimension, a pointer to the memory where the
> elements of the matrix are stored, data, a pointer to the block owned
> by the matrix block, if any, and an ownership flag, owner. The
> physical dimension determines the memory layout and can differ from
> the matrix dimension to allow the use of submatrices. The gsl\_matrix
> structure is very simple and looks like this:
>
>     typedef struct
>     {
>       size_t size1;
>       size_t size2;
>       size_t tda;
>       double * data;
>       gsl_block * block;
>       int owner;
>     } gsl_matrix;

Matrices are stored in row-major order, meaning that each row of
elements forms a contiguous block in memory. This is the standard
"C-language ordering" of two-dimensional arrays. Note that Fortran
stores arrays in column-major order. The number of rows is size1. The
range of valid row indices runs from 0 to `size1 - 1`{.sourceCode}.
Similarly size2 is the number of columns. The range of valid column
indices runs from 0 to `size2 - 1`{.sourceCode}. The physical row
dimension tda, or *trailing dimension*, specifies the size of a row of
the matrix as laid out in memory.

For example, in the following matrix size1 is 3, size2 is 4, and tda is
8. The physical memory layout of the matrix begins in the top left
hand-corner and proceeds from left to right along each row in turn.

    00 01 02 03 XX XX XX XX
    10 11 12 13 XX XX XX XX
    20 21 22 23 XX XX XX XX

Each unused memory location is represented by "`XX`{.sourceCode}". The
pointer data gives the location of the first element of the matrix in
memory. The pointer block stores the location of the memory block in
which the elements of the matrix are located (if any). If the matrix
owns this block then the owner field is set to one and the block will be
deallocated when the matrix is freed. If the matrix is only a slice of a
block owned by another object then the owner field is zero and any
underlying block will not be freed.

The functions for allocating and accessing matrices are defined in
gsl\_matrix.h.

"""
mutable struct gsl_matrix
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_matrix_view
    matrix::gsl_matrix
end
```
GSL documentation:

### `gsl_matrix_view`

> gsl\_matrix\_const\_view

> A matrix view is a temporary object, stored on the stack, which can be
> used to operate on a subset of matrix elements. Matrix views can be
> defined for both constant and non-constant matrices using separate
> types that preserve constness. A matrix view has the type
> gsl\_matrix\_view and a constant matrix view has the type
> gsl\_matrix\_const\_view. In both cases the elements of the view can
> by accessed using the `matrix`{.sourceCode} component of the view
> object. A pointer `gsl_matrix *`{.sourceCode} or
> `const gsl_matrix *`{.sourceCode} can be obtained by taking the
> address of the `matrix`{.sourceCode} component with the
> `&`{.sourceCode} operator. In addition to matrix views it is also
> possible to create vector views of a matrix, such as row or column
> views.

"""
mutable struct _gsl_matrix_view
    matrix::gsl_matrix
end
const gsl_matrix_view = _gsl_matrix_view

@doc md"""
```
mutable struct _gsl_matrix_const_view
    matrix::gsl_matrix
end
```

"""
mutable struct _gsl_matrix_const_view
    matrix::gsl_matrix
end
const gsl_matrix_const_view = _gsl_matrix_const_view


#### gsl_eigen.h ##############################################################

const GSL_EIGEN_SORT_VAL_ASC = 0
const GSL_EIGEN_SORT_VAL_DESC = 1
const GSL_EIGEN_SORT_ABS_ASC = 2
const GSL_EIGEN_SORT_ABS_DESC = 3
const gsl_eigen_sort_t = Cint

@doc md"""
```
mutable struct gsl_eigen_symm_workspace
    size::Csize_t
    d::Ptr{Cdouble}
    sd::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_eigen_symm_workspace`

> This workspace contains internal parameters used for solving symmetric
> eigenvalue problems.

"""
mutable struct gsl_eigen_symm_workspace
    size::Csize_t
    d::Ptr{Cdouble}
    sd::Ptr{Cdouble}
end

@doc md"""
```
mutable struct gsl_eigen_symmv_workspace
    size::Csize_t
    d::Ptr{Cdouble}
    sd::Ptr{Cdouble}
    gc::Ptr{Cdouble}
    gs::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_eigen_symmv_workspace`

> This workspace contains internal parameters used for solving symmetric
> eigenvalue and eigenvector problems.

"""
mutable struct gsl_eigen_symmv_workspace
    size::Csize_t
    d::Ptr{Cdouble}
    sd::Ptr{Cdouble}
    gc::Ptr{Cdouble}
    gs::Ptr{Cdouble}
end

@doc md"""
```
mutable struct gsl_eigen_herm_workspace
    size::Csize_t
    d::Ptr{Cdouble}
    sd::Ptr{Cdouble}
    tau::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_eigen_herm_workspace`

> This workspace contains internal parameters used for solving hermitian
> eigenvalue problems.

"""
mutable struct gsl_eigen_herm_workspace
    size::Csize_t
    d::Ptr{Cdouble}
    sd::Ptr{Cdouble}
    tau::Ptr{Cdouble}
end

@doc md"""
```
mutable struct gsl_eigen_hermv_workspace
    size::Csize_t
    d::Ptr{Cdouble}
    sd::Ptr{Cdouble}
    tau::Ptr{Cdouble}
    gc::Ptr{Cdouble}
    gs::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_eigen_hermv_workspace`

> This workspace contains internal parameters used for solving hermitian
> eigenvalue and eigenvector problems.

"""
mutable struct gsl_eigen_hermv_workspace
    size::Csize_t
    d::Ptr{Cdouble}
    sd::Ptr{Cdouble}
    tau::Ptr{Cdouble}
    gc::Ptr{Cdouble}
    gs::Ptr{Cdouble}
end

@doc md"""
```
mutable struct gsl_eigen_francis_workspace
    size::Csize_t
    max_iterations::Csize_t
    n_iter::Csize_t
    n_evals::Csize_t
    compute_t::Cint
    H::Ptr{gsl_matrix}
    Z::Ptr{gsl_matrix}
end
```

"""
mutable struct gsl_eigen_francis_workspace
    size::Csize_t
    max_iterations::Csize_t
    n_iter::Csize_t
    n_evals::Csize_t
    compute_t::Cint
    H::Ptr{gsl_matrix}
    Z::Ptr{gsl_matrix}
end

@doc md"""
```
mutable struct gsl_eigen_nonsymm_workspace
    size::Csize_t
    diag::Ptr{gsl_vector}
    tau::Ptr{gsl_vector}
    Z::Ptr{gsl_matrix}
    do_balance::Cint
    n_evals::Csize_t
    francis_workspace_p::Ptr{gsl_eigen_francis_workspace}
end
```
GSL documentation:

### `gsl_eigen_nonsymm_workspace`

> This workspace contains internal parameters used for solving
> nonsymmetric eigenvalue problems.

"""
mutable struct gsl_eigen_nonsymm_workspace
    size::Csize_t
    diag::Ptr{gsl_vector}
    tau::Ptr{gsl_vector}
    Z::Ptr{gsl_matrix}
    do_balance::Cint
    n_evals::Csize_t
    francis_workspace_p::Ptr{gsl_eigen_francis_workspace}
end

@doc md"""
```
mutable struct gsl_eigen_nonsymmv_workspace
    size::Csize_t
    work::Ptr{gsl_vector}
    work2::Ptr{gsl_vector}
    work3::Ptr{gsl_vector}
    Z::Ptr{gsl_matrix}
    nonsymm_workspace_p::Ptr{gsl_eigen_nonsymm_workspace}
end
```
GSL documentation:

### `gsl_eigen_nonsymmv_workspace`

> This workspace contains internal parameters used for solving
> nonsymmetric eigenvalue and eigenvector problems.

"""
mutable struct gsl_eigen_nonsymmv_workspace
    size::Csize_t
    work::Ptr{gsl_vector}
    work2::Ptr{gsl_vector}
    work3::Ptr{gsl_vector}
    Z::Ptr{gsl_matrix}
    nonsymm_workspace_p::Ptr{gsl_eigen_nonsymm_workspace}
end

@doc md"""
```
mutable struct gsl_eigen_gensymm_workspace
    size::Csize_t
    symm_workspace_p::Ptr{gsl_eigen_symm_workspace}
end
```
GSL documentation:

### `gsl_eigen_gensymm_workspace`

> This workspace contains internal parameters used for solving
> generalized symmetric eigenvalue problems.

"""
mutable struct gsl_eigen_gensymm_workspace
    size::Csize_t
    symm_workspace_p::Ptr{gsl_eigen_symm_workspace}
end

@doc md"""
```
mutable struct gsl_eigen_gensymmv_workspace
    size::Csize_t
    symmv_workspace_p::Ptr{gsl_eigen_symmv_workspace}
end
```
GSL documentation:

### `gsl_eigen_gensymmv_workspace`

> This workspace contains internal parameters used for solving
> generalized symmetric eigenvalue and eigenvector problems.

"""
mutable struct gsl_eigen_gensymmv_workspace
    size::Csize_t
    symmv_workspace_p::Ptr{gsl_eigen_symmv_workspace}
end

@doc md"""
```
mutable struct gsl_eigen_genherm_workspace
    size::Csize_t
    herm_workspace_p::Ptr{gsl_eigen_herm_workspace}
end
```
GSL documentation:

### `gsl_eigen_genherm_workspace`

> This workspace contains internal parameters used for solving
> generalized hermitian eigenvalue problems.

"""
mutable struct gsl_eigen_genherm_workspace
    size::Csize_t
    herm_workspace_p::Ptr{gsl_eigen_herm_workspace}
end

@doc md"""
```
mutable struct gsl_eigen_genhermv_workspace
    size::Csize_t
    hermv_workspace_p::Ptr{gsl_eigen_hermv_workspace}
end
```
GSL documentation:

### `gsl_eigen_genhermv_workspace`

> This workspace contains internal parameters used for solving
> generalized hermitian eigenvalue and eigenvector problems.

"""
mutable struct gsl_eigen_genhermv_workspace
    size::Csize_t
    hermv_workspace_p::Ptr{gsl_eigen_hermv_workspace}
end

@doc md"""
```
mutable struct gsl_eigen_gen_workspace
    size::Csize_t
    work::Ptr{gsl_vector}
    n_evals::Csize_t
    max_iterations::Csize_t
    n_iter::Csize_t
    eshift::Cdouble
    needtop::Cint
    atol::Cdouble
    btol::Cdouble
    ascale::Cdouble
    bscale::Cdouble
    H::Ptr{gsl_matrix}
    R::Ptr{gsl_matrix}
    compute_s::Cint
    compute_t::Cint
    Q::Ptr{gsl_matrix}
    Z::Ptr{gsl_matrix}
end
```
GSL documentation:

### `gsl_eigen_gen_workspace`

> This workspace contains internal parameters used for solving
> generalized eigenvalue problems.

"""
mutable struct gsl_eigen_gen_workspace
    size::Csize_t
    work::Ptr{gsl_vector}
    n_evals::Csize_t
    max_iterations::Csize_t
    n_iter::Csize_t
    eshift::Cdouble
    needtop::Cint
    atol::Cdouble
    btol::Cdouble
    ascale::Cdouble
    bscale::Cdouble
    H::Ptr{gsl_matrix}
    R::Ptr{gsl_matrix}
    compute_s::Cint
    compute_t::Cint
    Q::Ptr{gsl_matrix}
    Z::Ptr{gsl_matrix}
end

@doc md"""
```
mutable struct gsl_eigen_genv_workspace
    size::Csize_t
    work1::Ptr{gsl_vector}
    work2::Ptr{gsl_vector}
    work3::Ptr{gsl_vector}
    work4::Ptr{gsl_vector}
    work5::Ptr{gsl_vector}
    work6::Ptr{gsl_vector}
    Q::Ptr{gsl_matrix}
    Z::Ptr{gsl_matrix}
    gen_workspace_p::Ptr{gsl_eigen_gen_workspace}
end
```
GSL documentation:

### `gsl_eigen_genv_workspace`

> This workspace contains internal parameters used for solving
> generalized eigenvalue and eigenvector problems.

"""
mutable struct gsl_eigen_genv_workspace
    size::Csize_t
    work1::Ptr{gsl_vector}
    work2::Ptr{gsl_vector}
    work3::Ptr{gsl_vector}
    work4::Ptr{gsl_vector}
    work5::Ptr{gsl_vector}
    work6::Ptr{gsl_vector}
    Q::Ptr{gsl_matrix}
    Z::Ptr{gsl_matrix}
    gen_workspace_p::Ptr{gsl_eigen_gen_workspace}
end


#### gsl_matrix_complex_double.h ##############################################


@doc md"""
```
mutable struct gsl_matrix_complex
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_complex}
    owner::Cint
end
```

"""
mutable struct gsl_matrix_complex
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_complex}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_matrix_complex_view
    matrix::gsl_matrix_complex
end
```

"""
mutable struct _gsl_matrix_complex_view
    matrix::gsl_matrix_complex
end
const gsl_matrix_complex_view = _gsl_matrix_complex_view

@doc md"""
```
mutable struct _gsl_matrix_complex_const_view
    matrix::gsl_matrix_complex
end
```

"""
mutable struct _gsl_matrix_complex_const_view
    matrix::gsl_matrix_complex
end
const gsl_matrix_complex_const_view = _gsl_matrix_complex_const_view


#### gsl_complex.h ############################################################

const gsl_complex_packed = Ptr{Cdouble}
const gsl_complex_packed_float = Ptr{Cfloat}
const gsl_complex_packed_long_double = Ptr{Cdouble}
const gsl_const_complex_packed = Ptr{Cdouble}
const gsl_const_complex_packed_float = Ptr{Cfloat}
const gsl_const_complex_packed_long_double = Ptr{Cdouble}
const gsl_complex_packed_array = Ptr{Cdouble}
const gsl_complex_packed_array_float = Ptr{Cfloat}
const gsl_complex_packed_array_long_double = Ptr{Cdouble}
const gsl_const_complex_packed_array = Ptr{Cdouble}
const gsl_const_complex_packed_array_float = Ptr{Cfloat}
const gsl_const_complex_packed_array_long_double = Ptr{Cdouble}
const gsl_complex_packed_ptr = Ptr{Cdouble}
const gsl_complex_packed_float_ptr = Ptr{Cfloat}
const gsl_complex_packed_long_double_ptr = Ptr{Cdouble}
const gsl_const_complex_packed_ptr = Ptr{Cdouble}
const gsl_const_complex_packed_float_ptr = Ptr{Cfloat}
const gsl_const_complex_packed_long_double_ptr = Ptr{Cdouble}

@doc md"""
```
mutable struct gsl_complex_long_double
    dat::NTuple{2, Cdouble}
end
```

"""
mutable struct gsl_complex_long_double
    dat::NTuple{2, Cdouble}
end

@doc md"""
```
mutable struct gsl_complex
    dat::NTuple{2, Cdouble}
end
```

"""
mutable struct gsl_complex
    dat::NTuple{2, Cdouble}
end

@doc md"""
```
mutable struct gsl_complex_float
    dat::NTuple{2, Cfloat}
end
```

"""
mutable struct gsl_complex_float
    dat::NTuple{2, Cfloat}
end


#### gsl_mode.h ###############################################################

const GSL_PREC_DOUBLE = 0
const GSL_PREC_SINGLE = 1
const GSL_PREC_APPROX = 2
const gsl_mode_t = Cuint


#### gsl_math.h ###############################################################

const M_E = 2.71828182845904523536028747135
const M_LOG2E = 1.44269504088896340735992468100
const M_LOG10E = 0.43429448190325182765112891892
const M_SQRT2 = 1.41421356237309504880168872421
const M_SQRT1_2 = 0.70710678118654752440084436210
const M_SQRT3 = 1.73205080756887729352744634151
const M_PI = 3.14159265358979323846264338328
const M_PI_2 = 1.57079632679489661923132169164
const M_PI_4 = 0.78539816339744830961566084582
const M_SQRTPI = 1.77245385090551602729816748334
const M_2_SQRTPI = 1.12837916709551257389615890312
const M_1_PI = 0.31830988618379067153776752675
const M_2_PI = 0.63661977236758134307553505349
const M_LN10 = 2.30258509299404568401799145468
const M_LN2 = 0.69314718055994530941723212146
const M_LNPI = 1.14472988584940017414342735135
const M_EULER = 0.57721566490153286060651209008

@doc md"""
```
mutable struct gsl_function_struct
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_function`

> This data type defines a general function with parameters.
>
> `double (* function) (double x, void * params)`{.sourceCode}
>
> > this function should return the value $f(x,params)$ for argument x
> > and parameters params
>
> `void * params`{.sourceCode}
>
> > a pointer to the parameters of the function

Here is an example for the general quadratic function,

$$f(x) = a x^2 + b x + c$$

with $a = 3$, $b = 2$, $c = 1$. The following code defines a
gsl\_function `F`{.sourceCode} which you could pass to a root finder as
a function pointer:

    struct my_f_params { double a; double b; double c; };

    double
    my_f (double x, void * p)
      {
        struct my_f_params * params = (struct my_f_params *)p;
        double a = (params->a);
        double b = (params->b);
        double c = (params->c);

        return  (a * x + b) * x + c;
      }

    gsl_function F;
    struct my_f_params params = { 3.0, 2.0, 1.0 };

    F.function = &my_f;
    F.params = &params;

The function $f(x)$ can be evaluated using the macro
`GSL_FN_EVAL(&F,x)`{.sourceCode} defined in gsl\_math.h.

"""
mutable struct gsl_function_struct
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end
const gsl_function = gsl_function_struct

@doc md"""
```
mutable struct gsl_function_fdf_struct
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    params::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_function_fdf`

> This data type defines a general function with parameters and its
> first derivative.
>
> `double (* f) (double x, void * params)`{.sourceCode}
>
> > this function should return the value of $f(x,params)$ for argument
> > x and parameters params
>
> `double (* df) (double x, void * params)`{.sourceCode}
>
> > this function should return the value of the derivative of f with
> > respect to x, $f'(x,params)$, for argument x and parameters params
>
> `void (* fdf) (double x, void * params, double * f, double * df)`{.sourceCode}
>
> > this function should set the values of the function f to
> > $f(x,params)$ and its derivative df to $f'(x,params)$ for argument x
> > and parameters params. This function provides an optimization of the
> > separate functions for $f(x)$ and $f'(x)$---it is always faster to
> > compute the function and its derivative at the same time.
>
> `void * params`{.sourceCode}
>
> > a pointer to the parameters of the function

Here is an example where $f(x) = \exp(2x)$:

    double
    my_f (double x, void * params)
    {
       return exp (2 * x);
    }

    double
    my_df (double x, void * params)
    {
       return 2 * exp (2 * x);
    }

    void
    my_fdf (double x, void * params, 
            double * f, double * df)
    {
       double t = exp (2 * x);

       *f = t;
       *df = 2 * t;   /* uses existing value */
    }

    gsl_function_fdf FDF;

    FDF.f = &my_f;
    FDF.df = &my_df;
    FDF.fdf = &my_fdf;
    FDF.params = 0;

The function $f(x)$ can be evaluated using the macro
`GSL_FN_FDF_EVAL_F(&FDF,x)`{.sourceCode} and the derivative $f'(x)$ can
be evaluated using the macro `GSL_FN_FDF_EVAL_DF(&FDF,x)`{.sourceCode}.
Both the function $y = f(x)$ and its derivative $dy = f'(x)$ can be
evaluated at the same time using the macro
`GSL_FN_FDF_EVAL_F_DF(&FDF,x,y,dy)`{.sourceCode}. The macro stores
$f(x)$ in its y argument and $f'(x)$ in its dy argument---both of these
should be pointers to `double`{.sourceCode}.

"""
mutable struct gsl_function_fdf_struct
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    params::Ptr{Cvoid}
end
const gsl_function_fdf = gsl_function_fdf_struct

@doc md"""
```
mutable struct gsl_function_vec_struct
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end
```

"""
mutable struct gsl_function_vec_struct
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end
const gsl_function_vec = gsl_function_vec_struct


#### gsl_movstat.h ############################################################

const GSL_MOVSTAT_END_PADZERO = 0
const GSL_MOVSTAT_END_PADVALUE = 1
const GSL_MOVSTAT_END_TRUNCATE = 2
const gsl_movstat_end_t = Cint

@doc md"""
```
mutable struct gsl_movstat_accum
    size::Ptr{Cvoid}
    init::Ptr{Cvoid}
    insert::Ptr{Cvoid}
    delete::Ptr{Cvoid}
    get::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_movstat_accum`

> Structure specifying accumulator for moving window statistics:
>
>     typedef struct
>     {
>       size_t (* size) (const size_t n);
>       int (* init) (const size_t n, void * vstate);
>       int (* insert) (const double x, void * vstate);
>       int (* delete) (void * vstate);
>       int (* get) (void * params, double * result, const void * vstate);
>     } gsl_movstat_accum;
>
> The structure contains function pointers responsible for performing
> different tasks for the accumulator.

The following accumulators of type gsl\_movstat\_accum are defined by
GSL to perform moving window statistics calculations.

"""
mutable struct gsl_movstat_accum
    size::Ptr{Cvoid}
    init::Ptr{Cvoid}
    insert::Ptr{Cvoid}
    delete::Ptr{Cvoid}
    get::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_movstat_function
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_movstat_function`

> Structure specifying user-defined moving window statistical function:
>
>     typedef struct
>     {
>       double (* function) (const size_t n, double x[], void * params);
>       void * params;
>     } gsl_movstat_function;
>
> This structure contains a pointer to the user-defined function as well
> as possible parameters to pass to the function.

"""
mutable struct gsl_movstat_function
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_movstat_workspace
    H::Csize_t
    J::Csize_t
    K::Csize_t
    work::Ptr{Cdouble}
    state::Ptr{Cvoid}
    state_size::Csize_t
end
```
GSL documentation:

### `gsl_movstat_workspace`

> The moving window statistical routines use a common workspace.

"""
mutable struct gsl_movstat_workspace
    H::Csize_t
    J::Csize_t
    K::Csize_t
    work::Ptr{Cdouble}
    state::Ptr{Cvoid}
    state_size::Csize_t
end


#### gsl_blas.h ###############################################################



#### gsl_blas_types.h #########################################################

const CBLAS_INDEX_t = size_t
const CBLAS_ORDER_t = Cint
const CBLAS_TRANSPOSE_t = Cint
const CBLAS_UPLO_t = Cint
const CBLAS_DIAG_t = Cint
const CBLAS_SIDE_t = Cint


#### gsl_block.h ##############################################################



#### gsl_block_char.h #########################################################


@doc md"""
```
mutable struct gsl_block_char_struct
    size::Csize_t
    data::Ptr{Cchar}
end
```

"""
mutable struct gsl_block_char_struct
    size::Csize_t
    data::Ptr{Cchar}
end
const gsl_block_char = gsl_block_char_struct


#### gsl_block_complex_float.h ################################################


@doc md"""
```
mutable struct gsl_block_complex_float_struct
    size::Csize_t
    data::Ptr{Cfloat}
end
```

"""
mutable struct gsl_block_complex_float_struct
    size::Csize_t
    data::Ptr{Cfloat}
end
const gsl_block_complex_float = gsl_block_complex_float_struct


#### gsl_block_complex_long_double.h ##########################################


@doc md"""
```
mutable struct gsl_block_complex_long_double_struct
    size::Csize_t
    data::Ptr{Cdouble}
end
```

"""
mutable struct gsl_block_complex_long_double_struct
    size::Csize_t
    data::Ptr{Cdouble}
end
const gsl_block_complex_long_double = gsl_block_complex_long_double_struct


#### gsl_block_float.h ########################################################


@doc md"""
```
mutable struct gsl_block_float_struct
    size::Csize_t
    data::Ptr{Cfloat}
end
```

"""
mutable struct gsl_block_float_struct
    size::Csize_t
    data::Ptr{Cfloat}
end
const gsl_block_float = gsl_block_float_struct


#### gsl_block_int.h ##########################################################


@doc md"""
```
mutable struct gsl_block_int_struct
    size::Csize_t
    data::Ptr{Cint}
end
```

"""
mutable struct gsl_block_int_struct
    size::Csize_t
    data::Ptr{Cint}
end
const gsl_block_int = gsl_block_int_struct


#### gsl_block_long.h #########################################################


@doc md"""
```
mutable struct gsl_block_long_struct
    size::Csize_t
    data::Ptr{Clong}
end
```

"""
mutable struct gsl_block_long_struct
    size::Csize_t
    data::Ptr{Clong}
end
const gsl_block_long = gsl_block_long_struct


#### gsl_block_long_double.h ##################################################


@doc md"""
```
mutable struct gsl_block_long_double_struct
    size::Csize_t
    data::Ptr{Cdouble}
end
```

"""
mutable struct gsl_block_long_double_struct
    size::Csize_t
    data::Ptr{Cdouble}
end
const gsl_block_long_double = gsl_block_long_double_struct


#### gsl_block_short.h ########################################################


@doc md"""
```
mutable struct gsl_block_short_struct
    size::Csize_t
    data::Ptr{Cshort}
end
```

"""
mutable struct gsl_block_short_struct
    size::Csize_t
    data::Ptr{Cshort}
end
const gsl_block_short = gsl_block_short_struct


#### gsl_block_uchar.h ########################################################


@doc md"""
```
mutable struct gsl_block_uchar_struct
    size::Csize_t
    data::Ptr{Cuchar}
end
```

"""
mutable struct gsl_block_uchar_struct
    size::Csize_t
    data::Ptr{Cuchar}
end
const gsl_block_uchar = gsl_block_uchar_struct


#### gsl_block_uint.h #########################################################


@doc md"""
```
mutable struct gsl_block_uint_struct
    size::Csize_t
    data::Ptr{Cuint}
end
```

"""
mutable struct gsl_block_uint_struct
    size::Csize_t
    data::Ptr{Cuint}
end
const gsl_block_uint = gsl_block_uint_struct


#### gsl_block_ulong.h ########################################################


@doc md"""
```
mutable struct gsl_block_ulong_struct
    size::Csize_t
    data::Ptr{Culong}
end
```

"""
mutable struct gsl_block_ulong_struct
    size::Csize_t
    data::Ptr{Culong}
end
const gsl_block_ulong = gsl_block_ulong_struct


#### gsl_block_ushort.h #######################################################


@doc md"""
```
mutable struct gsl_block_ushort_struct
    size::Csize_t
    data::Ptr{Cushort}
end
```

"""
mutable struct gsl_block_ushort_struct
    size::Csize_t
    data::Ptr{Cushort}
end
const gsl_block_ushort = gsl_block_ushort_struct


#### gsl_bspline.h ############################################################


@doc md"""
```
mutable struct gsl_bspline_workspace
    k::Csize_t
    km1::Csize_t
    l::Csize_t
    nbreak::Csize_t
    n::Csize_t
    knots::Ptr{gsl_vector}
    deltal::Ptr{gsl_vector}
    deltar::Ptr{gsl_vector}
    B::Ptr{gsl_vector}
    A::Ptr{gsl_matrix}
    dB::Ptr{gsl_matrix}
end
```
GSL documentation:

### `gsl_bspline_workspace`

> The computation of B-spline functions requires a preallocated
> workspace.

"""
mutable struct gsl_bspline_workspace
    k::Csize_t
    km1::Csize_t
    l::Csize_t
    nbreak::Csize_t
    n::Csize_t
    knots::Ptr{gsl_vector}
    deltal::Ptr{gsl_vector}
    deltar::Ptr{gsl_vector}
    B::Ptr{gsl_vector}
    A::Ptr{gsl_matrix}
    dB::Ptr{gsl_matrix}
end


#### gsl_cblas.h ##############################################################

const CblasRowMajor = 101
const CblasColMajor = 102
const CBLAS_ORDER = Cint
const CblasNoTrans = 111
const CblasTrans = 112
const CblasConjTrans = 113
const CBLAS_TRANSPOSE = Cint
const CblasUpper = 121
const CblasLower = 122
const CBLAS_UPLO = Cint
const CblasNonUnit = 131
const CblasUnit = 132
const CBLAS_DIAG = Cint
const CblasLeft = 141
const CblasRight = 142
const CBLAS_SIDE = Cint


#### gsl_cdf.h ################################################################



#### gsl_chebyshev.h ##########################################################


@doc md"""
```
mutable struct gsl_cheb_series_struct
    c::Ptr{Cdouble}
    order::Csize_t
    a::Cdouble
    b::Cdouble
    order_sp::Csize_t
    f::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_cheb_series`

> A Chebyshev series is stored using the following structure:
>
>     typedef struct
>     {
>       double * c;   /* coefficients  c[0] .. c[order] */
>       int order;    /* order of expansion             */
>       double a;     /* lower interval point           */
>       double b;     /* upper interval point           */
>       ...
>     } gsl_cheb_series

The approximation is made over the range $[a,b]$ using order + 1 terms,
including the coefficient $c[0]$. The series is computed using the
following convention,

"""
mutable struct gsl_cheb_series_struct
    c::Ptr{Cdouble}
    order::Csize_t
    a::Cdouble
    b::Cdouble
    order_sp::Csize_t
    f::Ptr{Cdouble}
end
const gsl_cheb_series = gsl_cheb_series_struct


#### gsl_check_range.h ########################################################



#### gsl_combination.h ########################################################


@doc md"""
```
mutable struct gsl_combination_struct
    n::Csize_t
    k::Csize_t
    data::Ptr{Csize_t}
end
```
GSL documentation:

### `gsl_combination`

> A combination is defined by a structure containing three components,
> the values of $n$ and $k$, and a pointer to the combination array. The
> elements of the combination array are all of type
> `size_t`{.sourceCode}, and are stored in increasing order. The
> gsl\_combination structure looks like this:
>
>     typedef struct
>     {
>       size_t n;
>       size_t k;
>       size_t *data;
>     } gsl_combination;

"""
mutable struct gsl_combination_struct
    n::Csize_t
    k::Csize_t
    data::Ptr{Csize_t}
end
const gsl_combination = gsl_combination_struct


#### gsl_complex_math.h #######################################################



#### gsl_const.h ##############################################################



#### gsl_const_cgs.h ##########################################################

const GSL_CONST_CGS_SPEED_OF_LIGHT = 2.99792458e10
const GSL_CONST_CGS_GRAVITATIONAL_CONSTANT = 6.673e-8
const GSL_CONST_CGS_PLANCKS_CONSTANT_H = 6.62606896e-27
const GSL_CONST_CGS_PLANCKS_CONSTANT_HBAR = 1.05457162825e-27
const GSL_CONST_CGS_ASTRONOMICAL_UNIT = 1.49597870691e13
const GSL_CONST_CGS_LIGHT_YEAR = 9.46053620707e17
const GSL_CONST_CGS_PARSEC = 3.08567758135e18
const GSL_CONST_CGS_GRAV_ACCEL = 9.80665e2
const GSL_CONST_CGS_ELECTRON_VOLT = 1.602176487e-12
const GSL_CONST_CGS_MASS_ELECTRON = 9.10938188e-28
const GSL_CONST_CGS_MASS_MUON = 1.88353109e-25
const GSL_CONST_CGS_MASS_PROTON = 1.67262158e-24
const GSL_CONST_CGS_MASS_NEUTRON = 1.67492716e-24
const GSL_CONST_CGS_RYDBERG = 2.17987196968e-11
const GSL_CONST_CGS_BOLTZMANN = 1.3806504e-16
const GSL_CONST_CGS_MOLAR_GAS = 8.314472e7
const GSL_CONST_CGS_STANDARD_GAS_VOLUME = 2.2710981e4
const GSL_CONST_CGS_MINUTE = 6e1
const GSL_CONST_CGS_HOUR = 3.6e3
const GSL_CONST_CGS_DAY = 8.64e4
const GSL_CONST_CGS_WEEK = 6.048e5
const GSL_CONST_CGS_INCH = 2.54e0
const GSL_CONST_CGS_FOOT = 3.048e1
const GSL_CONST_CGS_YARD = 9.144e1
const GSL_CONST_CGS_MILE = 1.609344e5
const GSL_CONST_CGS_NAUTICAL_MILE = 1.852e5
const GSL_CONST_CGS_FATHOM = 1.8288e2
const GSL_CONST_CGS_MIL = 2.54e-3
const GSL_CONST_CGS_POINT = 3.52777777778e-2
const GSL_CONST_CGS_TEXPOINT = 3.51459803515e-2
const GSL_CONST_CGS_MICRON = 1e-4
const GSL_CONST_CGS_ANGSTROM = 1e-8
const GSL_CONST_CGS_HECTARE = 1e8
const GSL_CONST_CGS_ACRE = 4.04685642241e7
const GSL_CONST_CGS_BARN = 1e-24
const GSL_CONST_CGS_LITER = 1e3
const GSL_CONST_CGS_US_GALLON = 3.78541178402e3
const GSL_CONST_CGS_QUART = 9.46352946004e2
const GSL_CONST_CGS_PINT = 4.73176473002e2
const GSL_CONST_CGS_CUP = 2.36588236501e2
const GSL_CONST_CGS_FLUID_OUNCE = 2.95735295626e1
const GSL_CONST_CGS_TABLESPOON = 1.47867647813e1
const GSL_CONST_CGS_TEASPOON = 4.92892159375e0
const GSL_CONST_CGS_CANADIAN_GALLON = 4.54609e3
const GSL_CONST_CGS_UK_GALLON = 4.546092e3
const GSL_CONST_CGS_MILES_PER_HOUR = 4.4704e1
const GSL_CONST_CGS_KILOMETERS_PER_HOUR = 2.77777777778e1
const GSL_CONST_CGS_KNOT = 5.14444444444e1
const GSL_CONST_CGS_POUND_MASS = 4.5359237e2
const GSL_CONST_CGS_OUNCE_MASS = 2.8349523125e1
const GSL_CONST_CGS_TON = 9.0718474e5
const GSL_CONST_CGS_METRIC_TON = 1e6
const GSL_CONST_CGS_UK_TON = 1.0160469088e6
const GSL_CONST_CGS_TROY_OUNCE = 3.1103475e1
const GSL_CONST_CGS_CARAT = 2e-1
const GSL_CONST_CGS_UNIFIED_ATOMIC_MASS = 1.660538782e-24
const GSL_CONST_CGS_GRAM_FORCE = 9.80665e2
const GSL_CONST_CGS_POUND_FORCE = 4.44822161526e5
const GSL_CONST_CGS_KILOPOUND_FORCE = 4.44822161526e8
const GSL_CONST_CGS_POUNDAL = 1.38255e4
const GSL_CONST_CGS_CALORIE = 4.1868e7
const GSL_CONST_CGS_BTU = 1.05505585262e10
const GSL_CONST_CGS_THERM = 1.05506e15
const GSL_CONST_CGS_HORSEPOWER = 7.457e9
const GSL_CONST_CGS_BAR = 1e6
const GSL_CONST_CGS_STD_ATMOSPHERE = 1.01325e6
const GSL_CONST_CGS_TORR = 1.33322368421e3
const GSL_CONST_CGS_METER_OF_MERCURY = 1.33322368421e6
const GSL_CONST_CGS_INCH_OF_MERCURY = 3.38638815789e4
const GSL_CONST_CGS_INCH_OF_WATER = 2.490889e3
const GSL_CONST_CGS_PSI = 6.89475729317e4
const GSL_CONST_CGS_POISE = 1e0
const GSL_CONST_CGS_STOKES = 1e0
const GSL_CONST_CGS_STILB = 1e0
const GSL_CONST_CGS_LUMEN = 1e0
const GSL_CONST_CGS_LUX = 1e-4
const GSL_CONST_CGS_PHOT = 1e0
const GSL_CONST_CGS_FOOTCANDLE = 1.076e-3
const GSL_CONST_CGS_LAMBERT = 1e0
const GSL_CONST_CGS_FOOTLAMBERT = 1.07639104e-3
const GSL_CONST_CGS_CURIE = 3.7e10
const GSL_CONST_CGS_ROENTGEN = 2.58e-7
const GSL_CONST_CGS_RAD = 1e2
const GSL_CONST_CGS_SOLAR_MASS = 1.98892e33
const GSL_CONST_CGS_BOHR_RADIUS = 5.291772083e-9
const GSL_CONST_CGS_NEWTON = 1e5
const GSL_CONST_CGS_DYNE = 1e0
const GSL_CONST_CGS_JOULE = 1e7
const GSL_CONST_CGS_ERG = 1e0
const GSL_CONST_CGS_STEFAN_BOLTZMANN_CONSTANT = 5.67040047374e-5
const GSL_CONST_CGS_THOMSON_CROSS_SECTION = 6.65245893699e-25


#### gsl_const_cgsm.h #########################################################

const GSL_CONST_CGSM_SPEED_OF_LIGHT = 2.99792458e10
const GSL_CONST_CGSM_GRAVITATIONAL_CONSTANT = 6.673e-8
const GSL_CONST_CGSM_PLANCKS_CONSTANT_H = 6.62606896e-27
const GSL_CONST_CGSM_PLANCKS_CONSTANT_HBAR = 1.05457162825e-27
const GSL_CONST_CGSM_ASTRONOMICAL_UNIT = 1.49597870691e13
const GSL_CONST_CGSM_LIGHT_YEAR = 9.46053620707e17
const GSL_CONST_CGSM_PARSEC = 3.08567758135e18
const GSL_CONST_CGSM_GRAV_ACCEL = 9.80665e2
const GSL_CONST_CGSM_ELECTRON_VOLT = 1.602176487e-12
const GSL_CONST_CGSM_MASS_ELECTRON = 9.10938188e-28
const GSL_CONST_CGSM_MASS_MUON = 1.88353109e-25
const GSL_CONST_CGSM_MASS_PROTON = 1.67262158e-24
const GSL_CONST_CGSM_MASS_NEUTRON = 1.67492716e-24
const GSL_CONST_CGSM_RYDBERG = 2.17987196968e-11
const GSL_CONST_CGSM_BOLTZMANN = 1.3806504e-16
const GSL_CONST_CGSM_MOLAR_GAS = 8.314472e7
const GSL_CONST_CGSM_STANDARD_GAS_VOLUME = 2.2710981e4
const GSL_CONST_CGSM_MINUTE = 6e1
const GSL_CONST_CGSM_HOUR = 3.6e3
const GSL_CONST_CGSM_DAY = 8.64e4
const GSL_CONST_CGSM_WEEK = 6.048e5
const GSL_CONST_CGSM_INCH = 2.54e0
const GSL_CONST_CGSM_FOOT = 3.048e1
const GSL_CONST_CGSM_YARD = 9.144e1
const GSL_CONST_CGSM_MILE = 1.609344e5
const GSL_CONST_CGSM_NAUTICAL_MILE = 1.852e5
const GSL_CONST_CGSM_FATHOM = 1.8288e2
const GSL_CONST_CGSM_MIL = 2.54e-3
const GSL_CONST_CGSM_POINT = 3.52777777778e-2
const GSL_CONST_CGSM_TEXPOINT = 3.51459803515e-2
const GSL_CONST_CGSM_MICRON = 1e-4
const GSL_CONST_CGSM_ANGSTROM = 1e-8
const GSL_CONST_CGSM_HECTARE = 1e8
const GSL_CONST_CGSM_ACRE = 4.04685642241e7
const GSL_CONST_CGSM_BARN = 1e-24
const GSL_CONST_CGSM_LITER = 1e3
const GSL_CONST_CGSM_US_GALLON = 3.78541178402e3
const GSL_CONST_CGSM_QUART = 9.46352946004e2
const GSL_CONST_CGSM_PINT = 4.73176473002e2
const GSL_CONST_CGSM_CUP = 2.36588236501e2
const GSL_CONST_CGSM_FLUID_OUNCE = 2.95735295626e1
const GSL_CONST_CGSM_TABLESPOON = 1.47867647813e1
const GSL_CONST_CGSM_TEASPOON = 4.92892159375e0
const GSL_CONST_CGSM_CANADIAN_GALLON = 4.54609e3
const GSL_CONST_CGSM_UK_GALLON = 4.546092e3
const GSL_CONST_CGSM_MILES_PER_HOUR = 4.4704e1
const GSL_CONST_CGSM_KILOMETERS_PER_HOUR = 2.77777777778e1
const GSL_CONST_CGSM_KNOT = 5.14444444444e1
const GSL_CONST_CGSM_POUND_MASS = 4.5359237e2
const GSL_CONST_CGSM_OUNCE_MASS = 2.8349523125e1
const GSL_CONST_CGSM_TON = 9.0718474e5
const GSL_CONST_CGSM_METRIC_TON = 1e6
const GSL_CONST_CGSM_UK_TON = 1.0160469088e6
const GSL_CONST_CGSM_TROY_OUNCE = 3.1103475e1
const GSL_CONST_CGSM_CARAT = 2e-1
const GSL_CONST_CGSM_UNIFIED_ATOMIC_MASS = 1.660538782e-24
const GSL_CONST_CGSM_GRAM_FORCE = 9.80665e2
const GSL_CONST_CGSM_POUND_FORCE = 4.44822161526e5
const GSL_CONST_CGSM_KILOPOUND_FORCE = 4.44822161526e8
const GSL_CONST_CGSM_POUNDAL = 1.38255e4
const GSL_CONST_CGSM_CALORIE = 4.1868e7
const GSL_CONST_CGSM_BTU = 1.05505585262e10
const GSL_CONST_CGSM_THERM = 1.05506e15
const GSL_CONST_CGSM_HORSEPOWER = 7.457e9
const GSL_CONST_CGSM_BAR = 1e6
const GSL_CONST_CGSM_STD_ATMOSPHERE = 1.01325e6
const GSL_CONST_CGSM_TORR = 1.33322368421e3
const GSL_CONST_CGSM_METER_OF_MERCURY = 1.33322368421e6
const GSL_CONST_CGSM_INCH_OF_MERCURY = 3.38638815789e4
const GSL_CONST_CGSM_INCH_OF_WATER = 2.490889e3
const GSL_CONST_CGSM_PSI = 6.89475729317e4
const GSL_CONST_CGSM_POISE = 1e0
const GSL_CONST_CGSM_STOKES = 1e0
const GSL_CONST_CGSM_STILB = 1e0
const GSL_CONST_CGSM_LUMEN = 1e0
const GSL_CONST_CGSM_LUX = 1e-4
const GSL_CONST_CGSM_PHOT = 1e0
const GSL_CONST_CGSM_FOOTCANDLE = 1.076e-3
const GSL_CONST_CGSM_LAMBERT = 1e0
const GSL_CONST_CGSM_FOOTLAMBERT = 1.07639104e-3
const GSL_CONST_CGSM_CURIE = 3.7e10
const GSL_CONST_CGSM_ROENTGEN = 2.58e-8
const GSL_CONST_CGSM_RAD = 1e2
const GSL_CONST_CGSM_SOLAR_MASS = 1.98892e33
const GSL_CONST_CGSM_BOHR_RADIUS = 5.291772083e-9
const GSL_CONST_CGSM_NEWTON = 1e5
const GSL_CONST_CGSM_DYNE = 1e0
const GSL_CONST_CGSM_JOULE = 1e7
const GSL_CONST_CGSM_ERG = 1e0
const GSL_CONST_CGSM_STEFAN_BOLTZMANN_CONSTANT = 5.67040047374e-5
const GSL_CONST_CGSM_THOMSON_CROSS_SECTION = 6.65245893699e-25
const GSL_CONST_CGSM_BOHR_MAGNETON = 9.27400899e-21
const GSL_CONST_CGSM_NUCLEAR_MAGNETON = 5.05078317e-24
const GSL_CONST_CGSM_ELECTRON_MAGNETIC_MOMENT = 9.28476362e-21
const GSL_CONST_CGSM_PROTON_MAGNETIC_MOMENT = 1.410606633e-23
const GSL_CONST_CGSM_FARADAY = 9.64853429775e3
const GSL_CONST_CGSM_ELECTRON_CHARGE = 1.602176487e-20


#### gsl_const_mks.h ##########################################################

const GSL_CONST_MKS_SPEED_OF_LIGHT = 2.99792458e8
const GSL_CONST_MKS_GRAVITATIONAL_CONSTANT = 6.673e-11
const GSL_CONST_MKS_PLANCKS_CONSTANT_H = 6.62606896e-34
const GSL_CONST_MKS_PLANCKS_CONSTANT_HBAR = 1.05457162825e-34
const GSL_CONST_MKS_ASTRONOMICAL_UNIT = 1.49597870691e11
const GSL_CONST_MKS_LIGHT_YEAR = 9.46053620707e15
const GSL_CONST_MKS_PARSEC = 3.08567758135e16
const GSL_CONST_MKS_GRAV_ACCEL = 9.80665e0
const GSL_CONST_MKS_ELECTRON_VOLT = 1.602176487e-19
const GSL_CONST_MKS_MASS_ELECTRON = 9.10938188e-31
const GSL_CONST_MKS_MASS_MUON = 1.88353109e-28
const GSL_CONST_MKS_MASS_PROTON = 1.67262158e-27
const GSL_CONST_MKS_MASS_NEUTRON = 1.67492716e-27
const GSL_CONST_MKS_RYDBERG = 2.17987196968e-18
const GSL_CONST_MKS_BOLTZMANN = 1.3806504e-23
const GSL_CONST_MKS_MOLAR_GAS = 8.314472e0
const GSL_CONST_MKS_STANDARD_GAS_VOLUME = 2.2710981e-2
const GSL_CONST_MKS_MINUTE = 6e1
const GSL_CONST_MKS_HOUR = 3.6e3
const GSL_CONST_MKS_DAY = 8.64e4
const GSL_CONST_MKS_WEEK = 6.048e5
const GSL_CONST_MKS_INCH = 2.54e-2
const GSL_CONST_MKS_FOOT = 3.048e-1
const GSL_CONST_MKS_YARD = 9.144e-1
const GSL_CONST_MKS_MILE = 1.609344e3
const GSL_CONST_MKS_NAUTICAL_MILE = 1.852e3
const GSL_CONST_MKS_FATHOM = 1.8288e0
const GSL_CONST_MKS_MIL = 2.54e-5
const GSL_CONST_MKS_POINT = 3.52777777778e-4
const GSL_CONST_MKS_TEXPOINT = 3.51459803515e-4
const GSL_CONST_MKS_MICRON = 1e-6
const GSL_CONST_MKS_ANGSTROM = 1e-10
const GSL_CONST_MKS_HECTARE = 1e4
const GSL_CONST_MKS_ACRE = 4.04685642241e3
const GSL_CONST_MKS_BARN = 1e-28
const GSL_CONST_MKS_LITER = 1e-3
const GSL_CONST_MKS_US_GALLON = 3.78541178402e-3
const GSL_CONST_MKS_QUART = 9.46352946004e-4
const GSL_CONST_MKS_PINT = 4.73176473002e-4
const GSL_CONST_MKS_CUP = 2.36588236501e-4
const GSL_CONST_MKS_FLUID_OUNCE = 2.95735295626e-5
const GSL_CONST_MKS_TABLESPOON = 1.47867647813e-5
const GSL_CONST_MKS_TEASPOON = 4.92892159375e-6
const GSL_CONST_MKS_CANADIAN_GALLON = 4.54609e-3
const GSL_CONST_MKS_UK_GALLON = 4.546092e-3
const GSL_CONST_MKS_MILES_PER_HOUR = 4.4704e-1
const GSL_CONST_MKS_KILOMETERS_PER_HOUR = 2.77777777778e-1
const GSL_CONST_MKS_KNOT = 5.14444444444e-1
const GSL_CONST_MKS_POUND_MASS = 4.5359237e-1
const GSL_CONST_MKS_OUNCE_MASS = 2.8349523125e-2
const GSL_CONST_MKS_TON = 9.0718474e2
const GSL_CONST_MKS_METRIC_TON = 1e3
const GSL_CONST_MKS_UK_TON = 1.0160469088e3
const GSL_CONST_MKS_TROY_OUNCE = 3.1103475e-2
const GSL_CONST_MKS_CARAT = 2e-4
const GSL_CONST_MKS_UNIFIED_ATOMIC_MASS = 1.660538782e-27
const GSL_CONST_MKS_GRAM_FORCE = 9.80665e-3
const GSL_CONST_MKS_POUND_FORCE = 4.44822161526e0
const GSL_CONST_MKS_KILOPOUND_FORCE = 4.44822161526e3
const GSL_CONST_MKS_POUNDAL = 1.38255e-1
const GSL_CONST_MKS_CALORIE = 4.1868e0
const GSL_CONST_MKS_BTU = 1.05505585262e3
const GSL_CONST_MKS_THERM = 1.05506e8
const GSL_CONST_MKS_HORSEPOWER = 7.457e2
const GSL_CONST_MKS_BAR = 1e5
const GSL_CONST_MKS_STD_ATMOSPHERE = 1.01325e5
const GSL_CONST_MKS_TORR = 1.33322368421e2
const GSL_CONST_MKS_METER_OF_MERCURY = 1.33322368421e5
const GSL_CONST_MKS_INCH_OF_MERCURY = 3.38638815789e3
const GSL_CONST_MKS_INCH_OF_WATER = 2.490889e2
const GSL_CONST_MKS_PSI = 6.89475729317e3
const GSL_CONST_MKS_POISE = 1e-1
const GSL_CONST_MKS_STOKES = 1e-4
const GSL_CONST_MKS_STILB = 1e4
const GSL_CONST_MKS_LUMEN = 1e0
const GSL_CONST_MKS_LUX = 1e0
const GSL_CONST_MKS_PHOT = 1e4
const GSL_CONST_MKS_FOOTCANDLE = 1.076e1
const GSL_CONST_MKS_LAMBERT = 1e4
const GSL_CONST_MKS_FOOTLAMBERT = 1.07639104e1
const GSL_CONST_MKS_CURIE = 3.7e10
const GSL_CONST_MKS_ROENTGEN = 2.58e-4
const GSL_CONST_MKS_RAD = 1e-2
const GSL_CONST_MKS_SOLAR_MASS = 1.98892e30
const GSL_CONST_MKS_BOHR_RADIUS = 5.291772083e-11
const GSL_CONST_MKS_NEWTON = 1e0
const GSL_CONST_MKS_DYNE = 1e-5
const GSL_CONST_MKS_JOULE = 1e0
const GSL_CONST_MKS_ERG = 1e-7
const GSL_CONST_MKS_STEFAN_BOLTZMANN_CONSTANT = 5.67040047374e-8
const GSL_CONST_MKS_THOMSON_CROSS_SECTION = 6.65245893699e-29
const GSL_CONST_MKS_BOHR_MAGNETON = 9.27400899e-24
const GSL_CONST_MKS_NUCLEAR_MAGNETON = 5.05078317e-27
const GSL_CONST_MKS_ELECTRON_MAGNETIC_MOMENT = 9.28476362e-24
const GSL_CONST_MKS_PROTON_MAGNETIC_MOMENT = 1.410606633e-26
const GSL_CONST_MKS_FARADAY = 9.64853429775e4
const GSL_CONST_MKS_ELECTRON_CHARGE = 1.602176487e-19
const GSL_CONST_MKS_VACUUM_PERMITTIVITY = 8.854187817e-12
const GSL_CONST_MKS_VACUUM_PERMEABILITY = 1.25663706144e-6
const GSL_CONST_MKS_DEBYE = 3.33564095198e-30
const GSL_CONST_MKS_GAUSS = 1e-4


#### gsl_const_mksa.h #########################################################

const GSL_CONST_MKSA_SPEED_OF_LIGHT = 2.99792458e8
const GSL_CONST_MKSA_GRAVITATIONAL_CONSTANT = 6.673e-11
const GSL_CONST_MKSA_PLANCKS_CONSTANT_H = 6.62606896e-34
const GSL_CONST_MKSA_PLANCKS_CONSTANT_HBAR = 1.05457162825e-34
const GSL_CONST_MKSA_ASTRONOMICAL_UNIT = 1.49597870691e11
const GSL_CONST_MKSA_LIGHT_YEAR = 9.46053620707e15
const GSL_CONST_MKSA_PARSEC = 3.08567758135e16
const GSL_CONST_MKSA_GRAV_ACCEL = 9.80665e0
const GSL_CONST_MKSA_ELECTRON_VOLT = 1.602176487e-19
const GSL_CONST_MKSA_MASS_ELECTRON = 9.10938188e-31
const GSL_CONST_MKSA_MASS_MUON = 1.88353109e-28
const GSL_CONST_MKSA_MASS_PROTON = 1.67262158e-27
const GSL_CONST_MKSA_MASS_NEUTRON = 1.67492716e-27
const GSL_CONST_MKSA_RYDBERG = 2.17987196968e-18
const GSL_CONST_MKSA_BOLTZMANN = 1.3806504e-23
const GSL_CONST_MKSA_MOLAR_GAS = 8.314472e0
const GSL_CONST_MKSA_STANDARD_GAS_VOLUME = 2.2710981e-2
const GSL_CONST_MKSA_MINUTE = 6e1
const GSL_CONST_MKSA_HOUR = 3.6e3
const GSL_CONST_MKSA_DAY = 8.64e4
const GSL_CONST_MKSA_WEEK = 6.048e5
const GSL_CONST_MKSA_INCH = 2.54e-2
const GSL_CONST_MKSA_FOOT = 3.048e-1
const GSL_CONST_MKSA_YARD = 9.144e-1
const GSL_CONST_MKSA_MILE = 1.609344e3
const GSL_CONST_MKSA_NAUTICAL_MILE = 1.852e3
const GSL_CONST_MKSA_FATHOM = 1.8288e0
const GSL_CONST_MKSA_MIL = 2.54e-5
const GSL_CONST_MKSA_POINT = 3.52777777778e-4
const GSL_CONST_MKSA_TEXPOINT = 3.51459803515e-4
const GSL_CONST_MKSA_MICRON = 1e-6
const GSL_CONST_MKSA_ANGSTROM = 1e-10
const GSL_CONST_MKSA_HECTARE = 1e4
const GSL_CONST_MKSA_ACRE = 4.04685642241e3
const GSL_CONST_MKSA_BARN = 1e-28
const GSL_CONST_MKSA_LITER = 1e-3
const GSL_CONST_MKSA_US_GALLON = 3.78541178402e-3
const GSL_CONST_MKSA_QUART = 9.46352946004e-4
const GSL_CONST_MKSA_PINT = 4.73176473002e-4
const GSL_CONST_MKSA_CUP = 2.36588236501e-4
const GSL_CONST_MKSA_FLUID_OUNCE = 2.95735295626e-5
const GSL_CONST_MKSA_TABLESPOON = 1.47867647813e-5
const GSL_CONST_MKSA_TEASPOON = 4.92892159375e-6
const GSL_CONST_MKSA_CANADIAN_GALLON = 4.54609e-3
const GSL_CONST_MKSA_UK_GALLON = 4.546092e-3
const GSL_CONST_MKSA_MILES_PER_HOUR = 4.4704e-1
const GSL_CONST_MKSA_KILOMETERS_PER_HOUR = 2.77777777778e-1
const GSL_CONST_MKSA_KNOT = 5.14444444444e-1
const GSL_CONST_MKSA_POUND_MASS = 4.5359237e-1
const GSL_CONST_MKSA_OUNCE_MASS = 2.8349523125e-2
const GSL_CONST_MKSA_TON = 9.0718474e2
const GSL_CONST_MKSA_METRIC_TON = 1e3
const GSL_CONST_MKSA_UK_TON = 1.0160469088e3
const GSL_CONST_MKSA_TROY_OUNCE = 3.1103475e-2
const GSL_CONST_MKSA_CARAT = 2e-4
const GSL_CONST_MKSA_UNIFIED_ATOMIC_MASS = 1.660538782e-27
const GSL_CONST_MKSA_GRAM_FORCE = 9.80665e-3
const GSL_CONST_MKSA_POUND_FORCE = 4.44822161526e0
const GSL_CONST_MKSA_KILOPOUND_FORCE = 4.44822161526e3
const GSL_CONST_MKSA_POUNDAL = 1.38255e-1
const GSL_CONST_MKSA_CALORIE = 4.1868e0
const GSL_CONST_MKSA_BTU = 1.05505585262e3
const GSL_CONST_MKSA_THERM = 1.05506e8
const GSL_CONST_MKSA_HORSEPOWER = 7.457e2
const GSL_CONST_MKSA_BAR = 1e5
const GSL_CONST_MKSA_STD_ATMOSPHERE = 1.01325e5
const GSL_CONST_MKSA_TORR = 1.33322368421e2
const GSL_CONST_MKSA_METER_OF_MERCURY = 1.33322368421e5
const GSL_CONST_MKSA_INCH_OF_MERCURY = 3.38638815789e3
const GSL_CONST_MKSA_INCH_OF_WATER = 2.490889e2
const GSL_CONST_MKSA_PSI = 6.89475729317e3
const GSL_CONST_MKSA_POISE = 1e-1
const GSL_CONST_MKSA_STOKES = 1e-4
const GSL_CONST_MKSA_STILB = 1e4
const GSL_CONST_MKSA_LUMEN = 1e0
const GSL_CONST_MKSA_LUX = 1e0
const GSL_CONST_MKSA_PHOT = 1e4
const GSL_CONST_MKSA_FOOTCANDLE = 1.076e1
const GSL_CONST_MKSA_LAMBERT = 1e4
const GSL_CONST_MKSA_FOOTLAMBERT = 1.07639104e1
const GSL_CONST_MKSA_CURIE = 3.7e10
const GSL_CONST_MKSA_ROENTGEN = 2.58e-4
const GSL_CONST_MKSA_RAD = 1e-2
const GSL_CONST_MKSA_SOLAR_MASS = 1.98892e30
const GSL_CONST_MKSA_BOHR_RADIUS = 5.291772083e-11
const GSL_CONST_MKSA_NEWTON = 1e0
const GSL_CONST_MKSA_DYNE = 1e-5
const GSL_CONST_MKSA_JOULE = 1e0
const GSL_CONST_MKSA_ERG = 1e-7
const GSL_CONST_MKSA_STEFAN_BOLTZMANN_CONSTANT = 5.67040047374e-8
const GSL_CONST_MKSA_THOMSON_CROSS_SECTION = 6.65245893699e-29
const GSL_CONST_MKSA_BOHR_MAGNETON = 9.27400899e-24
const GSL_CONST_MKSA_NUCLEAR_MAGNETON = 5.05078317e-27
const GSL_CONST_MKSA_ELECTRON_MAGNETIC_MOMENT = 9.28476362e-24
const GSL_CONST_MKSA_PROTON_MAGNETIC_MOMENT = 1.410606633e-26
const GSL_CONST_MKSA_FARADAY = 9.64853429775e4
const GSL_CONST_MKSA_ELECTRON_CHARGE = 1.602176487e-19
const GSL_CONST_MKSA_VACUUM_PERMITTIVITY = 8.854187817e-12
const GSL_CONST_MKSA_VACUUM_PERMEABILITY = 1.25663706144e-6
const GSL_CONST_MKSA_DEBYE = 3.33564095198e-30
const GSL_CONST_MKSA_GAUSS = 1e-4


#### gsl_const_num.h ##########################################################

const GSL_CONST_NUM_FINE_STRUCTURE = 7.297352533e-3
const GSL_CONST_NUM_AVOGADRO = 6.02214199e23
const GSL_CONST_NUM_YOTTA = 1e24
const GSL_CONST_NUM_ZETTA = 1e21
const GSL_CONST_NUM_EXA = 1e18
const GSL_CONST_NUM_PETA = 1e15
const GSL_CONST_NUM_TERA = 1e12
const GSL_CONST_NUM_GIGA = 1e9
const GSL_CONST_NUM_MEGA = 1e6
const GSL_CONST_NUM_KILO = 1e3
const GSL_CONST_NUM_MILLI = 1e-3
const GSL_CONST_NUM_MICRO = 1e-6
const GSL_CONST_NUM_NANO = 1e-9
const GSL_CONST_NUM_PICO = 1e-12
const GSL_CONST_NUM_FEMTO = 1e-15
const GSL_CONST_NUM_ATTO = 1e-18
const GSL_CONST_NUM_ZEPTO = 1e-21
const GSL_CONST_NUM_YOCTO = 1e-24


#### gsl_deriv.h ##############################################################



#### gsl_dft_complex.h ########################################################



#### gsl_dft_complex_float.h ##################################################



#### gsl_dht.h ################################################################


@doc md"""
```
mutable struct gsl_dht_struct
    size::Csize_t
    nu::Cdouble
    xmax::Cdouble
    kmax::Cdouble
    j::Ptr{Cdouble}
    Jjj::Ptr{Cdouble}
    J2::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_dht`

> Workspace for computing discrete Hankel transforms

"""
mutable struct gsl_dht_struct
    size::Csize_t
    nu::Cdouble
    xmax::Cdouble
    kmax::Cdouble
    j::Ptr{Cdouble}
    Jjj::Ptr{Cdouble}
    J2::Ptr{Cdouble}
end
const gsl_dht = gsl_dht_struct


#### gsl_diff.h ###############################################################



#### gsl_errno.h ##############################################################

const GSL_SUCCESS = 0
const GSL_FAILURE = -1
const GSL_CONTINUE = -2
const GSL_EDOM = 1
const GSL_ERANGE = 2
const GSL_EFAULT = 3
const GSL_EINVAL = 4
const GSL_EFAILED = 5
const GSL_EFACTOR = 6
const GSL_ESANITY = 7
const GSL_ENOMEM = 8
const GSL_EBADFUNC = 9
const GSL_ERUNAWAY = 10
const GSL_EMAXITER = 11
const GSL_EZERODIV = 12
const GSL_EBADTOL = 13
const GSL_ETOL = 14
const GSL_EUNDRFLW = 15
const GSL_EOVRFLW = 16
const GSL_ELOSS = 17
const GSL_EROUND = 18
const GSL_EBADLEN = 19
const GSL_ENOTSQR = 20
const GSL_ESING = 21
const GSL_EDIVERGE = 22
const GSL_EUNSUP = 23
const GSL_EUNIMPL = 24
const GSL_ECACHE = 25
const GSL_ETABLE = 26
const GSL_ENOPROG = 27
const GSL_ENOPROGJ = 28
const GSL_ETOLF = 29
const GSL_ETOLX = 30
const GSL_ETOLG = 31
const GSL_EOF = 32
const gsl_error_handler_t = Ptr{Cvoid}
const gsl_stream_handler_t = Ptr{Cvoid}


#### gsl_fft.h ################################################################

const gsl_fft_forward = -1
const gsl_fft_backward = +1
const gsl_fft_direction = Cint


#### gsl_fft_complex.h ########################################################


@doc md"""
```
mutable struct gsl_fft_complex_wavetable
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex}
    trig::Ptr{gsl_complex}
end
```
GSL documentation:

### `gsl_fft_complex_wavetable`

> This is a structure that holds the factorization and trigonometric
> lookup tables for the mixed radix fft algorithm. It has the following
> components:
>
>   ------------------------------------------ ------------------------------------------------------------------------------------------------------
>   `size_t n`{.sourceCode}                    This is the number of complex data points
>   `size_t nf`{.sourceCode}                   This is the number of factors that the length `n`{.sourceCode} was decomposed into.
>   `size_t factor[64]`{.sourceCode}           This is the array of factors. Only the first `nf`{.sourceCode} elements are used.
>   `gsl_complex * trig`{.sourceCode}          This is a pointer to a preallocated trigonometric lookup table of `n`{.sourceCode} complex elements.
>   `gsl_complex * twiddle[64]`{.sourceCode}   This is an array of pointers into `trig`{.sourceCode}, giving the twiddle factors for each pass.
>   ------------------------------------------ ------------------------------------------------------------------------------------------------------
>


"""
mutable struct gsl_fft_complex_wavetable
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex}
    trig::Ptr{gsl_complex}
end

@doc md"""
```
mutable struct gsl_fft_complex_workspace
    n::Csize_t
    scratch::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_fft_complex_workspace`

> The mixed radix algorithms require additional working space to hold
> the intermediate steps of the transform.

"""
mutable struct gsl_fft_complex_workspace
    n::Csize_t
    scratch::Ptr{Cdouble}
end


#### gsl_fft_complex_float.h ##################################################


@doc md"""
```
mutable struct gsl_fft_complex_wavetable_float
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex_float}
    trig::Ptr{gsl_complex_float}
end
```

"""
mutable struct gsl_fft_complex_wavetable_float
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex_float}
    trig::Ptr{gsl_complex_float}
end

@doc md"""
```
mutable struct gsl_fft_complex_workspace_float
    n::Csize_t
    scratch::Ptr{Cfloat}
end
```

"""
mutable struct gsl_fft_complex_workspace_float
    n::Csize_t
    scratch::Ptr{Cfloat}
end


#### gsl_fft_halfcomplex.h ####################################################


@doc md"""
```
mutable struct gsl_fft_halfcomplex_wavetable
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex}
    trig::Ptr{gsl_complex}
end
```

"""
mutable struct gsl_fft_halfcomplex_wavetable
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex}
    trig::Ptr{gsl_complex}
end


#### gsl_fft_halfcomplex_float.h ##############################################


@doc md"""
```
mutable struct gsl_fft_halfcomplex_wavetable_float
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex_float}
    trig::Ptr{gsl_complex_float}
end
```

"""
mutable struct gsl_fft_halfcomplex_wavetable_float
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex_float}
    trig::Ptr{gsl_complex_float}
end


#### gsl_fft_real.h ###########################################################


@doc md"""
```
mutable struct gsl_fft_real_wavetable
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex}
    trig::Ptr{gsl_complex}
end
```
GSL documentation:

### `gsl_fft_real_wavetable`

> gsl\_fft\_halfcomplex\_wavetable

> These data structures contain lookup tables for an FFT of a fixed
> size.

"""
mutable struct gsl_fft_real_wavetable
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex}
    trig::Ptr{gsl_complex}
end

@doc md"""
```
mutable struct gsl_fft_real_workspace
    n::Csize_t
    scratch::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_fft_real_workspace`

> This workspace contains parameters needed to compute a real FFT.

"""
mutable struct gsl_fft_real_workspace
    n::Csize_t
    scratch::Ptr{Cdouble}
end


#### gsl_fft_real_float.h #####################################################


@doc md"""
```
mutable struct gsl_fft_real_wavetable_float
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex_float}
    trig::Ptr{gsl_complex_float}
end
```

"""
mutable struct gsl_fft_real_wavetable_float
    n::Csize_t
    nf::Csize_t
    factor::NTuple{64, Csize_t}
    twiddle::NTuple{64, gsl_complex_float}
    trig::Ptr{gsl_complex_float}
end

@doc md"""
```
mutable struct gsl_fft_real_workspace_float
    n::Csize_t
    scratch::Ptr{Cfloat}
end
```

"""
mutable struct gsl_fft_real_workspace_float
    n::Csize_t
    scratch::Ptr{Cfloat}
end


#### gsl_filter.h #############################################################

const GSL_FILTER_END_PADZERO = GSL_MOVSTAT_END_PADZERO
const GSL_FILTER_END_PADVALUE = GSL_MOVSTAT_END_PADVALUE
const GSL_FILTER_END_TRUNCATE = GSL_MOVSTAT_END_TRUNCATE
const gsl_filter_end_t = Cint
const GSL_FILTER_SCALE_MAD = 0
const GSL_FILTER_SCALE_IQR = 1
const GSL_FILTER_SCALE_SN = 2
const GSL_FILTER_SCALE_QN = 3
const gsl_filter_scale_t = Cint

@doc md"""
```
mutable struct gsl_filter_gaussian_workspace
    K::Csize_t
    kernel::Ptr{Cdouble}
    movstat_workspace_p::Ptr{gsl_movstat_workspace}
end
```

"""
mutable struct gsl_filter_gaussian_workspace
    K::Csize_t
    kernel::Ptr{Cdouble}
    movstat_workspace_p::Ptr{gsl_movstat_workspace}
end

@doc md"""
```
mutable struct gsl_filter_median_workspace
    movstat_workspace_p::Ptr{gsl_movstat_workspace}
end
```

"""
mutable struct gsl_filter_median_workspace
    movstat_workspace_p::Ptr{gsl_movstat_workspace}
end

@doc md"""
```
mutable struct gsl_filter_rmedian_workspace
    H::Csize_t
    K::Csize_t
    state::Ptr{Cvoid}
    window::Ptr{Cdouble}
    minmaxacc::Ptr{gsl_movstat_accum}
    movstat_workspace_p::Ptr{gsl_movstat_workspace}
end
```

"""
mutable struct gsl_filter_rmedian_workspace
    H::Csize_t
    K::Csize_t
    state::Ptr{Cvoid}
    window::Ptr{Cdouble}
    minmaxacc::Ptr{gsl_movstat_accum}
    movstat_workspace_p::Ptr{gsl_movstat_workspace}
end

@doc md"""
```
mutable struct gsl_filter_impulse_workspace
    movstat_workspace_p::Ptr{gsl_movstat_workspace}
end
```

"""
mutable struct gsl_filter_impulse_workspace
    movstat_workspace_p::Ptr{gsl_movstat_workspace}
end


#### gsl_fit.h ################################################################



#### gsl_heapsort.h ###########################################################

const gsl_comparison_fn_t = Ptr{Cvoid}


#### gsl_histogram.h ##########################################################


@doc md"""
```
mutable struct gsl_histogram
    n::Csize_t
    range::Ptr{Cdouble}
    bin::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_histogram`

>   ----------------- ------------------------------------------------------------------------------
>   size\_t n         This is the number of histogram bins
>   double \* range   The ranges of the bins are stored in an array of `n+1`{.sourceCode} elements
>                     pointed to by range.
>   double \* bin     The counts for each bin are stored in an array of n elements
>                     pointed to by bin. The bins are floating-point numbers, so you can
>                     increment them by non-integer values if necessary.
>   ----------------- ------------------------------------------------------------------------------
>
> The range for `bin[i]`{.sourceCode} is given by
> `range[i]`{.sourceCode} to `range[i+1]`{.sourceCode}. For $n$ bins
> there are `n+1`{.sourceCode} entries in the array range. Each bin is
> inclusive at the lower end and exclusive at the upper end.
> Mathematically this means that the bins are defined by the following
> inequality,
>
> Here is a diagram of the correspondence between ranges and bins on the
> number-line for $x$:
>
>     [ bin[0] )[ bin[1] )[ bin[2] )[ bin[3] )[ bin[4] )
>
> > ---|---------|---------|---------|---------|---------|--- x
> >
> > :   r\[0\] r\[1\] r\[2\] r\[3\] r\[4\] r\[5\]
> >
> In this picture the values of the range array are denoted by $r$. On
> the left-hand side of each bin the square bracket `[`{.sourceCode}
> denotes an inclusive lower bound ($r \le x$), and the round
> parentheses `)`{.sourceCode} on the right-hand side denote an
> exclusive upper bound ($x < r$). Thus any samples which fall on the
> upper end of the histogram are excluded. If you want to include this
> value for the last bin you will need to add an extra bin to your
> histogram.
>
> The gsl\_histogram struct and its associated functions are defined in
> the header file gsl\_histogram.h.

"""
mutable struct gsl_histogram
    n::Csize_t
    range::Ptr{Cdouble}
    bin::Ptr{Cdouble}
end

@doc md"""
```
mutable struct gsl_histogram_pdf
    n::Csize_t
    range::Ptr{Cdouble}
    sum::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_histogram_pdf`

>   ------------------------------- ------------------------------------------------------------------
>   `size_t n`{.sourceCode}         This is the number of bins used to approximate the probability
>                                   distribution function.
>   `double * range`{.sourceCode}   The ranges of the bins are stored in an array of $n + 1$
>                                   elements pointed to by range.
>   `double * sum`{.sourceCode}     The cumulative probability for the bins is stored in an array of
>                                   n elements pointed to by sum.
>   ------------------------------- ------------------------------------------------------------------
>
The following functions allow you to create a gsl\_histogram\_pdf struct
which represents this probability distribution and generate random
samples from it.

"""
mutable struct gsl_histogram_pdf
    n::Csize_t
    range::Ptr{Cdouble}
    sum::Ptr{Cdouble}
end


#### gsl_histogram2d.h ########################################################


@doc md"""
```
mutable struct gsl_histogram2d
    nx::Csize_t
    ny::Csize_t
    xrange::Ptr{Cdouble}
    yrange::Ptr{Cdouble}
    bin::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_histogram2d`

>   -------------------------------- ------------------------------------------------------------------------
>   `size_t nx, ny`{.sourceCode}     This is the number of histogram bins in the x and y directions.
>   `double * xrange`{.sourceCode}   The ranges of the bins in the x-direction are stored in an array of
>                                    `nx + 1`{.sourceCode} elements pointed to by xrange.
>   `double * yrange`{.sourceCode}   The ranges of the bins in the y-direction are stored in an array of
>                                    `ny + 1`{.sourceCode} elements pointed to by yrange.
>   `double * bin`{.sourceCode}      The counts for each bin are stored in an array pointed to by bin.
>                                    The bins are floating-point numbers, so you can increment them by
>                                    non-integer values if necessary. The array bin stores the two
>                                    dimensional array of bins in a single block of memory according to the
>                                    mapping `bin(i,j)`{.sourceCode} = `bin[i * ny + j]`{.sourceCode}.
>   -------------------------------- ------------------------------------------------------------------------
>
The range for `bin(i,j)`{.sourceCode} is given by
`xrange[i]`{.sourceCode} to `xrange[i+1]`{.sourceCode} in the
x-direction and `yrange[j]`{.sourceCode} to `yrange[j+1]`{.sourceCode}
in the y-direction. Each bin is inclusive at the lower end and exclusive
at the upper end. Mathematically this means that the bins are defined by
the following inequality,

"""
mutable struct gsl_histogram2d
    nx::Csize_t
    ny::Csize_t
    xrange::Ptr{Cdouble}
    yrange::Ptr{Cdouble}
    bin::Ptr{Cdouble}
end

@doc md"""
```
mutable struct gsl_histogram2d_pdf
    nx::Csize_t
    ny::Csize_t
    xrange::Ptr{Cdouble}
    yrange::Ptr{Cdouble}
    sum::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_histogram2d_pdf`

>   -------------------------------- --------------------------------------------------------------------------
>   `size_t nx, ny`{.sourceCode}     This is the number of histogram bins used to approximate the probability
>                                    distribution function in the x and y directions.
>   `double * xrange`{.sourceCode}   The ranges of the bins in the x-direction are stored in an array of
>                                    `nx + 1`{.sourceCode} elements pointed to by xrange.
>   `double * yrange`{.sourceCode}   The ranges of the bins in the y-direction are stored in an array of
>                                    `ny + 1`{.sourceCode} pointed to by yrange.
>   `double * sum`{.sourceCode}      The cumulative probability for the bins is stored in an array of
>                                    nx \* ny elements pointed to by sum.
>   -------------------------------- --------------------------------------------------------------------------
>
The following functions allow you to create a gsl\_histogram2d\_pdf
struct which represents a two dimensional probability distribution and
generate random samples from it.

"""
mutable struct gsl_histogram2d_pdf
    nx::Csize_t
    ny::Csize_t
    xrange::Ptr{Cdouble}
    yrange::Ptr{Cdouble}
    sum::Ptr{Cdouble}
end


#### gsl_ieee_utils.h #########################################################

const GSL_IEEE_TYPE_NAN = 1
const GSL_IEEE_TYPE_INF = 2
const GSL_IEEE_TYPE_NORMAL = 3
const GSL_IEEE_TYPE_DENORMAL = 4
const GSL_IEEE_TYPE_ZERO = 5
const GSL_IEEE_SINGLE_PRECISION = 1
const GSL_IEEE_DOUBLE_PRECISION = 2
const GSL_IEEE_EXTENDED_PRECISION = 3
const GSL_IEEE_ROUND_TO_NEAREST = 1
const GSL_IEEE_ROUND_DOWN = 2
const GSL_IEEE_ROUND_UP = 3
const GSL_IEEE_ROUND_TO_ZERO = 4
const GSL_IEEE_MASK_INVALID = 1
const GSL_IEEE_MASK_DENORMALIZED = 2
const GSL_IEEE_MASK_DIVISION_BY_ZERO = 4
const GSL_IEEE_MASK_OVERFLOW = 8
const GSL_IEEE_MASK_UNDERFLOW = 16
const GSL_IEEE_MASK_ALL = 31
const GSL_IEEE_TRAP_INEXACT = 32

@doc md"""
```
mutable struct gsl_ieee_float_rep
    sign::Cint
    mantissa::NTuple{24, Cchar}
    exponent::Cint
    type::Cint
end
```

"""
mutable struct gsl_ieee_float_rep
    sign::Cint
    mantissa::NTuple{24, Cchar}
    exponent::Cint
    type::Cint
end

@doc md"""
```
mutable struct gsl_ieee_double_rep
    sign::Cint
    mantissa::NTuple{53, Cchar}
    exponent::Cint
    type::Cint
end
```

"""
mutable struct gsl_ieee_double_rep
    sign::Cint
    mantissa::NTuple{53, Cchar}
    exponent::Cint
    type::Cint
end


#### gsl_inline.h #############################################################



#### gsl_integration.h ########################################################

const GSL_INTEG_COSINE = 0
const GSL_INTEG_SINE = 1
const GSL_INTEG_GAUSS15 = 1
const GSL_INTEG_GAUSS21 = 2
const GSL_INTEG_GAUSS31 = 3
const GSL_INTEG_GAUSS41 = 4
const GSL_INTEG_GAUSS51 = 5
const GSL_INTEG_GAUSS61 = 6
const gsl_integration_rule = Ptr{Cvoid}

@doc md"""
```
mutable struct gsl_integration_workspace
    limit::Csize_t
    size::Csize_t
    nrmax::Csize_t
    i::Csize_t
    maximum_level::Csize_t
    alist::Ptr{Cdouble}
    blist::Ptr{Cdouble}
    rlist::Ptr{Cdouble}
    elist::Ptr{Cdouble}
    order::Ptr{Csize_t}
    level::Ptr{Csize_t}
end
```
GSL documentation:

### `gsl_integration_workspace`

> This workspace handles the memory for the subinterval ranges, results
> and error estimates.

"""
mutable struct gsl_integration_workspace
    limit::Csize_t
    size::Csize_t
    nrmax::Csize_t
    i::Csize_t
    maximum_level::Csize_t
    alist::Ptr{Cdouble}
    blist::Ptr{Cdouble}
    rlist::Ptr{Cdouble}
    elist::Ptr{Cdouble}
    order::Ptr{Csize_t}
    level::Ptr{Csize_t}
end

@doc md"""
```
mutable struct gsl_integration_qaws_table
    alpha::Cdouble
    beta::Cdouble
    mu::Cint
    nu::Cint
    ri::NTuple{25, Cdouble}
    rj::NTuple{25, Cdouble}
    rg::NTuple{25, Cdouble}
    rh::NTuple{25, Cdouble}
end
```
GSL documentation:

### `gsl_integration_qaws_table`

> This structure contains precomputed quantities for the QAWS algorithm.

"""
mutable struct gsl_integration_qaws_table
    alpha::Cdouble
    beta::Cdouble
    mu::Cint
    nu::Cint
    ri::NTuple{25, Cdouble}
    rj::NTuple{25, Cdouble}
    rg::NTuple{25, Cdouble}
    rh::NTuple{25, Cdouble}
end

@doc md"""
```
mutable struct gsl_integration_qawo_table
    n::Csize_t
    omega::Cdouble
    L::Cdouble
    par::Cdouble
    sine::Cint
    chebmo::Ptr{Cdouble}
end
```

"""
mutable struct gsl_integration_qawo_table
    n::Csize_t
    omega::Cdouble
    L::Cdouble
    par::Cdouble
    sine::Cint
    chebmo::Ptr{Cdouble}
end

@doc md"""
```
mutable struct gsl_integration_glfixed_table
    n::Csize_t
    x::Ptr{Cdouble}
    w::Ptr{Cdouble}
    precomputed::Cint
end
```

"""
mutable struct gsl_integration_glfixed_table
    n::Csize_t
    x::Ptr{Cdouble}
    w::Ptr{Cdouble}
    precomputed::Cint
end

@doc md"""
```
mutable struct gsl_integration_cquad_ival
    a::Cdouble
    b::Cdouble
    c::NTuple{64, Cdouble}
    fx::NTuple{33, Cdouble}
    igral::Cdouble
    err::Cdouble
    depth::Cint
    rdepth::Cint
    ndiv::Cint
end
```

"""
mutable struct gsl_integration_cquad_ival
    a::Cdouble
    b::Cdouble
    c::NTuple{64, Cdouble}
    fx::NTuple{33, Cdouble}
    igral::Cdouble
    err::Cdouble
    depth::Cint
    rdepth::Cint
    ndiv::Cint
end

@doc md"""
```
mutable struct gsl_integration_cquad_workspace
    size::Csize_t
    ivals::Ptr{gsl_integration_cquad_ival}
    heap::Ptr{Csize_t}
end
```

"""
mutable struct gsl_integration_cquad_workspace
    size::Csize_t
    ivals::Ptr{gsl_integration_cquad_ival}
    heap::Ptr{Csize_t}
end

@doc md"""
```
mutable struct gsl_integration_romberg_workspace
    n::Csize_t
    work1::Ptr{Cdouble}
    work2::Ptr{Cdouble}
end
```

"""
mutable struct gsl_integration_romberg_workspace
    n::Csize_t
    work1::Ptr{Cdouble}
    work2::Ptr{Cdouble}
end

@doc md"""
```
mutable struct gsl_integration_fixed_params
    alpha::Cdouble
    beta::Cdouble
    a::Cdouble
    b::Cdouble
    zemu::Cdouble
    shft::Cdouble
    slp::Cdouble
    al::Cdouble
    be::Cdouble
end
```

"""
mutable struct gsl_integration_fixed_params
    alpha::Cdouble
    beta::Cdouble
    a::Cdouble
    b::Cdouble
    zemu::Cdouble
    shft::Cdouble
    slp::Cdouble
    al::Cdouble
    be::Cdouble
end

@doc md"""
```
mutable struct gsl_integration_fixed_type
    check::Ptr{Cvoid}
    init::Ptr{Cvoid}
end
```

"""
mutable struct gsl_integration_fixed_type
    check::Ptr{Cvoid}
    init::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_integration_fixed_workspace
    n::Csize_t
    weights::Ptr{Cdouble}
    x::Ptr{Cdouble}
    diag::Ptr{Cdouble}
    subdiag::Ptr{Cdouble}
    type::Ptr{gsl_integration_fixed_type}
end
```
GSL documentation:

### `gsl_integration_fixed_workspace`

> This workspace is used for fixed point quadrature rules and looks like
> this:
>
>     typedef struct
>     {
>       size_t n;        /* number of nodes/weights */
>       double *weights; /* quadrature weights */
>       double *x;       /* quadrature nodes */
>       double *diag;    /* diagonal of Jacobi matrix */
>       double *subdiag; /* subdiagonal of Jacobi matrix */
>       const gsl_integration_fixed_type * type;
>     } gsl_integration_fixed_workspace;

"""
mutable struct gsl_integration_fixed_workspace
    n::Csize_t
    weights::Ptr{Cdouble}
    x::Ptr{Cdouble}
    diag::Ptr{Cdouble}
    subdiag::Ptr{Cdouble}
    type::Ptr{gsl_integration_fixed_type}
end


#### gsl_interp.h #############################################################


@doc md"""
```
mutable struct gsl_interp_accel
    cache::Csize_t
    miss_count::Csize_t
    hit_count::Csize_t
end
```
GSL documentation:

### `gsl_interp_accel`

> This workspace stores state variables for interpolation lookups. It
> caches the previous value of an index lookup. When the subsequent
> interpolation point falls in the same interval its index value can be
> returned immediately.

"""
mutable struct gsl_interp_accel
    cache::Csize_t
    miss_count::Csize_t
    hit_count::Csize_t
end

@doc md"""
```
mutable struct gsl_interp_type
    name::Ptr{Cchar}
    min_size::Cuint
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    eval::Ptr{Cvoid}
    eval_deriv::Ptr{Cvoid}
    eval_deriv2::Ptr{Cvoid}
    eval_integ::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_interp_type`

The following related functions are available:

"""
mutable struct gsl_interp_type
    name::Ptr{Cchar}
    min_size::Cuint
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    eval::Ptr{Cvoid}
    eval_deriv::Ptr{Cvoid}
    eval_deriv2::Ptr{Cvoid}
    eval_integ::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_interp
    type::Ptr{gsl_interp_type}
    xmin::Cdouble
    xmax::Cdouble
    size::Csize_t
    state::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_interp`

> Workspace for 1D interpolation

"""
mutable struct gsl_interp
    type::Ptr{gsl_interp_type}
    xmin::Cdouble
    xmax::Cdouble
    size::Csize_t
    state::Ptr{Cvoid}
end


#### gsl_interp2d.h ###########################################################


@doc md"""
```
mutable struct gsl_interp2d_type
    name::Ptr{Cchar}
    min_size::Cuint
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    eval::Ptr{Cvoid}
    eval_deriv_x::Ptr{Cvoid}
    eval_deriv_y::Ptr{Cvoid}
    eval_deriv_xx::Ptr{Cvoid}
    eval_deriv_xy::Ptr{Cvoid}
    eval_deriv_yy::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_interp2d_type`

> The interpolation library provides the following 2D interpolation
> types:

"""
mutable struct gsl_interp2d_type
    name::Ptr{Cchar}
    min_size::Cuint
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    eval::Ptr{Cvoid}
    eval_deriv_x::Ptr{Cvoid}
    eval_deriv_y::Ptr{Cvoid}
    eval_deriv_xx::Ptr{Cvoid}
    eval_deriv_xy::Ptr{Cvoid}
    eval_deriv_yy::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_interp2d
    type::Ptr{gsl_interp2d_type}
    xmin::Cdouble
    xmax::Cdouble
    ymin::Cdouble
    ymax::Cdouble
    xsize::Csize_t
    ysize::Csize_t
    state::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_interp2d`

> Workspace for 2D interpolation

"""
mutable struct gsl_interp2d
    type::Ptr{gsl_interp2d_type}
    xmin::Cdouble
    xmax::Cdouble
    ymin::Cdouble
    ymax::Cdouble
    xsize::Csize_t
    ysize::Csize_t
    state::Ptr{Cvoid}
end


#### gsl_linalg.h #############################################################

const GSL_LINALG_MOD_NONE = 0
const GSL_LINALG_MOD_TRANSPOSE = 1
const GSL_LINALG_MOD_CONJUGATE = 2
const gsl_linalg_matrix_mod_t = Cint


#### gsl_machine.h ############################################################

const GSL_DBL_EPSILON = 2.2204460492503131e-16
const GSL_SQRT_DBL_EPSILON = 1.4901161193847656e-08
const GSL_ROOT3_DBL_EPSILON = 6.0554544523933429e-06
const GSL_ROOT4_DBL_EPSILON = 1.2207031250000000e-04
const GSL_ROOT5_DBL_EPSILON = 7.4009597974140505e-04
const GSL_ROOT6_DBL_EPSILON = 2.4607833005759251e-03
const GSL_DBL_MIN = 2.2250738585072014e-308
const GSL_SQRT_DBL_MIN = 1.4916681462400413e-154
const GSL_ROOT3_DBL_MIN = 2.8126442852362996e-103
const GSL_ROOT4_DBL_MIN = 1.2213386697554620e-77
const GSL_ROOT5_DBL_MIN = 2.9476022969691763e-62
const GSL_ROOT6_DBL_MIN = 5.3034368905798218e-52
const GSL_DBL_MAX = 1.7976931348623157e+308
const GSL_SQRT_DBL_MAX = 1.3407807929942596e+154
const GSL_ROOT3_DBL_MAX = 5.6438030941222897e+102
const GSL_ROOT4_DBL_MAX = 1.1579208923731620e+77
const GSL_ROOT5_DBL_MAX = 4.4765466227572707e+61
const GSL_ROOT6_DBL_MAX = 2.3756689782295612e+51
const GSL_LOG_DBL_MAX = 7.0978271289338397e+02
const GSL_FLT_EPSILON = 1.1920928955078125e-07
const GSL_SQRT_FLT_EPSILON = 3.4526698300124393e-04
const GSL_ROOT3_FLT_EPSILON = 4.9215666011518501e-03
const GSL_ROOT4_FLT_EPSILON = 1.8581361171917516e-02
const GSL_ROOT5_FLT_EPSILON = 4.1234622211652937e-02
const GSL_ROOT6_FLT_EPSILON = 7.0153878019335827e-02
const GSL_FLT_MIN = 1.1754943508222875e-38
const GSL_SQRT_FLT_MIN = 1.0842021724855044e-19
const GSL_ROOT3_FLT_MIN = 2.2737367544323241e-13
const GSL_ROOT4_FLT_MIN = 3.2927225399135965e-10
const GSL_ROOT5_FLT_MIN = 2.5944428542140822e-08
const GSL_ROOT6_FLT_MIN = 4.7683715820312542e-07
const GSL_FLT_MAX = 3.4028234663852886e+38
const GSL_SQRT_FLT_MAX = 1.8446743523953730e+19
const GSL_ROOT3_FLT_MAX = 6.9814635196223242e+12
const GSL_ROOT4_FLT_MAX = 4.2949672319999986e+09
const GSL_ROOT5_FLT_MAX = 5.0859007855960041e+07
const GSL_ROOT6_FLT_MAX = 2.6422459233807749e+06
const GSL_LOG_FLT_MAX = 8.8722839052068352e+01
const GSL_SFLT_EPSILON = 4.8828125000000000e-04
const GSL_SQRT_SFLT_EPSILON = 2.2097086912079612e-02
const GSL_ROOT3_SFLT_EPSILON = 7.8745065618429588e-02
const GSL_ROOT4_SFLT_EPSILON = 1.4865088937534013e-01
const GSL_ROOT5_SFLT_EPSILON = 2.1763764082403100e-01
const GSL_ROOT6_SFLT_EPSILON = 2.8061551207734325e-01
const GSL_SQRT_MACH_EPS = 3.2e-08
const GSL_ROOT3_MACH_EPS = 1.0e-05
const GSL_ROOT4_MACH_EPS = 0.000178
const GSL_ROOT5_MACH_EPS = 0.00100
const GSL_ROOT6_MACH_EPS = 0.00316


#### gsl_matrix.h #############################################################



#### gsl_matrix_char.h ########################################################


@doc md"""
```
mutable struct gsl_matrix_char
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cchar}
    block::Ptr{gsl_block_char}
    owner::Cint
end
```

"""
mutable struct gsl_matrix_char
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cchar}
    block::Ptr{gsl_block_char}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_matrix_char_view
    matrix::gsl_matrix_char
end
```

"""
mutable struct _gsl_matrix_char_view
    matrix::gsl_matrix_char
end
const gsl_matrix_char_view = _gsl_matrix_char_view

@doc md"""
```
mutable struct _gsl_matrix_char_const_view
    matrix::gsl_matrix_char
end
```

"""
mutable struct _gsl_matrix_char_const_view
    matrix::gsl_matrix_char
end
const gsl_matrix_char_const_view = _gsl_matrix_char_const_view


#### gsl_matrix_complex_float.h ###############################################


@doc md"""
```
mutable struct gsl_matrix_complex_float
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cfloat}
    block::Ptr{gsl_block_complex_float}
    owner::Cint
end
```

"""
mutable struct gsl_matrix_complex_float
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cfloat}
    block::Ptr{gsl_block_complex_float}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_matrix_complex_float_view
    matrix::gsl_matrix_complex_float
end
```

"""
mutable struct _gsl_matrix_complex_float_view
    matrix::gsl_matrix_complex_float
end
const gsl_matrix_complex_float_view = _gsl_matrix_complex_float_view

@doc md"""
```
mutable struct _gsl_matrix_complex_float_const_view
    matrix::gsl_matrix_complex_float
end
```

"""
mutable struct _gsl_matrix_complex_float_const_view
    matrix::gsl_matrix_complex_float
end
const gsl_matrix_complex_float_const_view = _gsl_matrix_complex_float_const_view


#### gsl_matrix_complex_long_double.h #########################################


@doc md"""
```
mutable struct gsl_matrix_complex_long_double
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_complex_long_double}
    owner::Cint
end
```

"""
mutable struct gsl_matrix_complex_long_double
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_complex_long_double}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_matrix_complex_long_double_view
    matrix::gsl_matrix_complex_long_double
end
```

"""
mutable struct _gsl_matrix_complex_long_double_view
    matrix::gsl_matrix_complex_long_double
end
const gsl_matrix_complex_long_double_view = _gsl_matrix_complex_long_double_view

@doc md"""
```
mutable struct _gsl_matrix_complex_long_double_const_view
    matrix::gsl_matrix_complex_long_double
end
```

"""
mutable struct _gsl_matrix_complex_long_double_const_view
    matrix::gsl_matrix_complex_long_double
end
const gsl_matrix_complex_long_double_const_view = _gsl_matrix_complex_long_double_const_view


#### gsl_matrix_float.h #######################################################


@doc md"""
```
mutable struct gsl_matrix_float
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cfloat}
    block::Ptr{gsl_block_float}
    owner::Cint
end
```

"""
mutable struct gsl_matrix_float
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cfloat}
    block::Ptr{gsl_block_float}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_matrix_float_view
    matrix::gsl_matrix_float
end
```

"""
mutable struct _gsl_matrix_float_view
    matrix::gsl_matrix_float
end
const gsl_matrix_float_view = _gsl_matrix_float_view

@doc md"""
```
mutable struct _gsl_matrix_float_const_view
    matrix::gsl_matrix_float
end
```

"""
mutable struct _gsl_matrix_float_const_view
    matrix::gsl_matrix_float
end
const gsl_matrix_float_const_view = _gsl_matrix_float_const_view


#### gsl_matrix_int.h #########################################################


@doc md"""
```
mutable struct gsl_matrix_int
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cint}
    block::Ptr{gsl_block_int}
    owner::Cint
end
```

"""
mutable struct gsl_matrix_int
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cint}
    block::Ptr{gsl_block_int}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_matrix_int_view
    matrix::gsl_matrix_int
end
```

"""
mutable struct _gsl_matrix_int_view
    matrix::gsl_matrix_int
end
const gsl_matrix_int_view = _gsl_matrix_int_view

@doc md"""
```
mutable struct _gsl_matrix_int_const_view
    matrix::gsl_matrix_int
end
```

"""
mutable struct _gsl_matrix_int_const_view
    matrix::gsl_matrix_int
end
const gsl_matrix_int_const_view = _gsl_matrix_int_const_view


#### gsl_matrix_long.h ########################################################


@doc md"""
```
mutable struct gsl_matrix_long
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Clong}
    block::Ptr{gsl_block_long}
    owner::Cint
end
```

"""
mutable struct gsl_matrix_long
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Clong}
    block::Ptr{gsl_block_long}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_matrix_long_view
    matrix::gsl_matrix_long
end
```

"""
mutable struct _gsl_matrix_long_view
    matrix::gsl_matrix_long
end
const gsl_matrix_long_view = _gsl_matrix_long_view

@doc md"""
```
mutable struct _gsl_matrix_long_const_view
    matrix::gsl_matrix_long
end
```

"""
mutable struct _gsl_matrix_long_const_view
    matrix::gsl_matrix_long
end
const gsl_matrix_long_const_view = _gsl_matrix_long_const_view


#### gsl_matrix_long_double.h #################################################


@doc md"""
```
mutable struct gsl_matrix_long_double
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_long_double}
    owner::Cint
end
```

"""
mutable struct gsl_matrix_long_double
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_long_double}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_matrix_long_double_view
    matrix::gsl_matrix_long_double
end
```

"""
mutable struct _gsl_matrix_long_double_view
    matrix::gsl_matrix_long_double
end
const gsl_matrix_long_double_view = _gsl_matrix_long_double_view

@doc md"""
```
mutable struct _gsl_matrix_long_double_const_view
    matrix::gsl_matrix_long_double
end
```

"""
mutable struct _gsl_matrix_long_double_const_view
    matrix::gsl_matrix_long_double
end
const gsl_matrix_long_double_const_view = _gsl_matrix_long_double_const_view


#### gsl_matrix_short.h #######################################################


@doc md"""
```
mutable struct gsl_matrix_short
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cshort}
    block::Ptr{gsl_block_short}
    owner::Cint
end
```

"""
mutable struct gsl_matrix_short
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cshort}
    block::Ptr{gsl_block_short}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_matrix_short_view
    matrix::gsl_matrix_short
end
```

"""
mutable struct _gsl_matrix_short_view
    matrix::gsl_matrix_short
end
const gsl_matrix_short_view = _gsl_matrix_short_view

@doc md"""
```
mutable struct _gsl_matrix_short_const_view
    matrix::gsl_matrix_short
end
```

"""
mutable struct _gsl_matrix_short_const_view
    matrix::gsl_matrix_short
end
const gsl_matrix_short_const_view = _gsl_matrix_short_const_view


#### gsl_matrix_uchar.h #######################################################


@doc md"""
```
mutable struct gsl_matrix_uchar
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cuchar}
    block::Ptr{gsl_block_uchar}
    owner::Cint
end
```

"""
mutable struct gsl_matrix_uchar
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cuchar}
    block::Ptr{gsl_block_uchar}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_matrix_uchar_view
    matrix::gsl_matrix_uchar
end
```

"""
mutable struct _gsl_matrix_uchar_view
    matrix::gsl_matrix_uchar
end
const gsl_matrix_uchar_view = _gsl_matrix_uchar_view

@doc md"""
```
mutable struct _gsl_matrix_uchar_const_view
    matrix::gsl_matrix_uchar
end
```

"""
mutable struct _gsl_matrix_uchar_const_view
    matrix::gsl_matrix_uchar
end
const gsl_matrix_uchar_const_view = _gsl_matrix_uchar_const_view


#### gsl_matrix_uint.h ########################################################


@doc md"""
```
mutable struct gsl_matrix_uint
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cuint}
    block::Ptr{gsl_block_uint}
    owner::Cint
end
```

"""
mutable struct gsl_matrix_uint
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cuint}
    block::Ptr{gsl_block_uint}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_matrix_uint_view
    matrix::gsl_matrix_uint
end
```

"""
mutable struct _gsl_matrix_uint_view
    matrix::gsl_matrix_uint
end
const gsl_matrix_uint_view = _gsl_matrix_uint_view

@doc md"""
```
mutable struct _gsl_matrix_uint_const_view
    matrix::gsl_matrix_uint
end
```

"""
mutable struct _gsl_matrix_uint_const_view
    matrix::gsl_matrix_uint
end
const gsl_matrix_uint_const_view = _gsl_matrix_uint_const_view


#### gsl_matrix_ulong.h #######################################################


@doc md"""
```
mutable struct gsl_matrix_ulong
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Culong}
    block::Ptr{gsl_block_ulong}
    owner::Cint
end
```

"""
mutable struct gsl_matrix_ulong
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Culong}
    block::Ptr{gsl_block_ulong}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_matrix_ulong_view
    matrix::gsl_matrix_ulong
end
```

"""
mutable struct _gsl_matrix_ulong_view
    matrix::gsl_matrix_ulong
end
const gsl_matrix_ulong_view = _gsl_matrix_ulong_view

@doc md"""
```
mutable struct _gsl_matrix_ulong_const_view
    matrix::gsl_matrix_ulong
end
```

"""
mutable struct _gsl_matrix_ulong_const_view
    matrix::gsl_matrix_ulong
end
const gsl_matrix_ulong_const_view = _gsl_matrix_ulong_const_view


#### gsl_matrix_ushort.h ######################################################


@doc md"""
```
mutable struct gsl_matrix_ushort
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cushort}
    block::Ptr{gsl_block_ushort}
    owner::Cint
end
```

"""
mutable struct gsl_matrix_ushort
    size1::Csize_t
    size2::Csize_t
    tda::Csize_t
    data::Ptr{Cushort}
    block::Ptr{gsl_block_ushort}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_matrix_ushort_view
    matrix::gsl_matrix_ushort
end
```

"""
mutable struct _gsl_matrix_ushort_view
    matrix::gsl_matrix_ushort
end
const gsl_matrix_ushort_view = _gsl_matrix_ushort_view

@doc md"""
```
mutable struct _gsl_matrix_ushort_const_view
    matrix::gsl_matrix_ushort
end
```

"""
mutable struct _gsl_matrix_ushort_const_view
    matrix::gsl_matrix_ushort
end
const gsl_matrix_ushort_const_view = _gsl_matrix_ushort_const_view


#### gsl_message.h ############################################################

const GSL_MESSAGE_MASK = 0
const GSL_MESSAGE_MASK_A = 1
const GSL_MESSAGE_MASK_B = 2
const GSL_MESSAGE_MASK_C = 4
const GSL_MESSAGE_MASK_D = 8
const GSL_MESSAGE_MASK_E = 16
const GSL_MESSAGE_MASK_F = 32
const GSL_MESSAGE_MASK_G = 64
const GSL_MESSAGE_MASK_H = 128


#### gsl_min.h ################################################################

const gsl_min_bracketing_function = Ptr{Cvoid}

@doc md"""
```
mutable struct gsl_min_fminimizer_type
    name::Ptr{Cchar}
    size::Csize_t
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_min_fminimizer_type`



"""
mutable struct gsl_min_fminimizer_type
    name::Ptr{Cchar}
    size::Csize_t
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_min_fminimizer
    type::Ptr{gsl_min_fminimizer_type}
    function_::Ptr{gsl_function}
    x_minimum::Cdouble
    x_lower::Cdouble
    x_upper::Cdouble
    f_minimum::Cdouble
    f_lower::Cdouble
    f_upper::Cdouble
    state::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_min_fminimizer`

> This is a workspace for minimizing functions.

"""
mutable struct gsl_min_fminimizer
    type::Ptr{gsl_min_fminimizer_type}
    function_::Ptr{gsl_function}
    x_minimum::Cdouble
    x_lower::Cdouble
    x_upper::Cdouble
    f_minimum::Cdouble
    f_lower::Cdouble
    f_upper::Cdouble
    state::Ptr{Cvoid}
end


#### gsl_minmax.h #############################################################



#### gsl_monte.h ##############################################################


@doc md"""
```
mutable struct gsl_monte_function_struct
    f::Ptr{Cvoid}
    dim::Csize_t
    params::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_monte_function`

> This data type defines a general function with parameters for Monte
> Carlo integration.
>
>   --------------------------------------------------------------------- ---------------------------------------
>   `double (* f) (double * x, size_t dim, void * params)`{.sourceCode}   this function should return the value
>                                                                         $f(x,params)$ for the argument
>                                                                         x and parameters params,
>                                                                         where x is an array of size
>                                                                         dim giving the coordinates of the
>                                                                         point where the function is to be
>                                                                         evaluated.
>   `size_t dim`{.sourceCode}                                             the number of dimensions for x.
>   `void * params`{.sourceCode}                                          a pointer to the parameters of the
>                                                                         function.
>   --------------------------------------------------------------------- ---------------------------------------
>
Here is an example for a quadratic function in two dimensions,

$$f(x,y) = a x^2 + b x y + c y^2$$

with $a = 3$, $b = 2$, $c = 1$. The following code defines a
gsl\_monte\_function `F`{.sourceCode} which you could pass to an
integrator:

    struct my_f_params { double a; double b; double c; };

    double
    my_f (double x[], size_t dim, void * p) {
       struct my_f_params * fp = (struct my_f_params *)p;

       if (dim != 2)
          {
            fprintf (stderr, "error: dim != 2");
            abort ();
          }

       return  fp->a * x[0] * x[0] 
                 + fp->b * x[0] * x[1] 
                   + fp->c * x[1] * x[1];
    }

    gsl_monte_function F;
    struct my_f_params params = { 3.0, 2.0, 1.0 };

    F.f = &my_f;
    F.dim = 2;
    F.params = &params;

The function $f(x)$ can be evaluated using the following macro:

    #define GSL_MONTE_FN_EVAL(F,x) 
        (*((F)->f))(x,(F)->dim,(F)->params)

"""
mutable struct gsl_monte_function_struct
    f::Ptr{Cvoid}
    dim::Csize_t
    params::Ptr{Cvoid}
end
const gsl_monte_function = gsl_monte_function_struct


#### gsl_monte_miser.h ########################################################


@doc md"""
```
mutable struct gsl_monte_miser_state
    min_calls::Csize_t
    min_calls_per_bisection::Csize_t
    dither::Cdouble
    estimate_frac::Cdouble
    alpha::Cdouble
    dim::Csize_t
    estimate_style::Cint
    depth::Cint
    verbose::Cint
    x::Ptr{Cdouble}
    xmid::Ptr{Cdouble}
    sigma_l::Ptr{Cdouble}
    sigma_r::Ptr{Cdouble}
    fmax_l::Ptr{Cdouble}
    fmax_r::Ptr{Cdouble}
    fmin_l::Ptr{Cdouble}
    fmin_r::Ptr{Cdouble}
    fsum_l::Ptr{Cdouble}
    fsum_r::Ptr{Cdouble}
    fsum2_l::Ptr{Cdouble}
    fsum2_r::Ptr{Cdouble}
    hits_l::Ptr{Csize_t}
    hits_r::Ptr{Csize_t}
end
```
GSL documentation:

### `gsl_monte_miser_state`

> This workspace is used for MISER Monte Carlo integration

"""
mutable struct gsl_monte_miser_state
    min_calls::Csize_t
    min_calls_per_bisection::Csize_t
    dither::Cdouble
    estimate_frac::Cdouble
    alpha::Cdouble
    dim::Csize_t
    estimate_style::Cint
    depth::Cint
    verbose::Cint
    x::Ptr{Cdouble}
    xmid::Ptr{Cdouble}
    sigma_l::Ptr{Cdouble}
    sigma_r::Ptr{Cdouble}
    fmax_l::Ptr{Cdouble}
    fmax_r::Ptr{Cdouble}
    fmin_l::Ptr{Cdouble}
    fmin_r::Ptr{Cdouble}
    fsum_l::Ptr{Cdouble}
    fsum_r::Ptr{Cdouble}
    fsum2_l::Ptr{Cdouble}
    fsum2_r::Ptr{Cdouble}
    hits_l::Ptr{Csize_t}
    hits_r::Ptr{Csize_t}
end

@doc md"""
```
mutable struct gsl_monte_miser_params
    estimate_frac::Cdouble
    min_calls::Csize_t
    min_calls_per_bisection::Csize_t
    alpha::Cdouble
    dither::Cdouble
end
```
GSL documentation:

### `gsl_monte_miser_params`



"""
mutable struct gsl_monte_miser_params
    estimate_frac::Cdouble
    min_calls::Csize_t
    min_calls_per_bisection::Csize_t
    alpha::Cdouble
    dither::Cdouble
end


#### gsl_monte_plain.h ########################################################


@doc md"""
```
mutable struct gsl_monte_plain_state
    dim::Csize_t
    x::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_monte_plain_state`

> This is a workspace for plain Monte Carlo integration

"""
mutable struct gsl_monte_plain_state
    dim::Csize_t
    x::Ptr{Cdouble}
end


#### gsl_monte_vegas.h ########################################################

const GSL_VEGAS_MODE_IMPORTANCE = 1
const GSL_VEGAS_MODE_IMPORTANCE_ONLY = 0
const GSL_VEGAS_MODE_STRATIFIED = -1

@doc md"""
```
mutable struct gsl_monte_vegas_state
    dim::Csize_t
    bins_max::Csize_t
    bins::Cuint
    boxes::Cuint
    xi::Ptr{Cdouble}
    xin::Ptr{Cdouble}
    delx::Ptr{Cdouble}
    weight::Ptr{Cdouble}
    vol::Cdouble
    x::Ptr{Cdouble}
    bin::Ptr{Cint}
    box::Ptr{Cint}
    d::Ptr{Cdouble}
    alpha::Cdouble
    mode::Cint
    verbose::Cint
    iterations::Cuint
    stage::Cint
    jac::Cdouble
    wtd_int_sum::Cdouble
    sum_wgts::Cdouble
    chi_sum::Cdouble
    chisq::Cdouble
    result::Cdouble
    sigma::Cdouble
    it_start::Cuint
    it_num::Cuint
    samples::Cuint
    calls_per_box::Cuint
    ostream::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_monte_vegas_state`

> This workspace is used for VEGAS Monte Carlo integration

"""
mutable struct gsl_monte_vegas_state
    dim::Csize_t
    bins_max::Csize_t
    bins::Cuint
    boxes::Cuint
    xi::Ptr{Cdouble}
    xin::Ptr{Cdouble}
    delx::Ptr{Cdouble}
    weight::Ptr{Cdouble}
    vol::Cdouble
    x::Ptr{Cdouble}
    bin::Ptr{Cint}
    box::Ptr{Cint}
    d::Ptr{Cdouble}
    alpha::Cdouble
    mode::Cint
    verbose::Cint
    iterations::Cuint
    stage::Cint
    jac::Cdouble
    wtd_int_sum::Cdouble
    sum_wgts::Cdouble
    chi_sum::Cdouble
    chisq::Cdouble
    result::Cdouble
    sigma::Cdouble
    it_start::Cuint
    it_num::Cuint
    samples::Cuint
    calls_per_box::Cuint
    ostream::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_monte_vegas_params
    alpha::Cdouble
    iterations::Csize_t
    stage::Cint
    mode::Cint
    verbose::Cint
    ostream::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_monte_vegas_params`

The above fields and the chisq value can also be accessed directly in
the gsl\_monte\_vegas\_state but such use is deprecated.

"""
mutable struct gsl_monte_vegas_params
    alpha::Cdouble
    iterations::Csize_t
    stage::Cint
    mode::Cint
    verbose::Cint
    ostream::Ptr{Cvoid}
end


#### gsl_multifit.h ###########################################################


@doc md"""
```
mutable struct gsl_multifit_linear_workspace
    nmax::Csize_t
    pmax::Csize_t
    n::Csize_t
    p::Csize_t
    A::Ptr{gsl_matrix}
    Q::Ptr{gsl_matrix}
    QSI::Ptr{gsl_matrix}
    S::Ptr{gsl_vector}
    t::Ptr{gsl_vector}
    xt::Ptr{gsl_vector}
    D::Ptr{gsl_vector}
    rcond::Cdouble
end
```
GSL documentation:

### `gsl_multifit_linear_workspace`

> This workspace contains internal variables for fitting multi-parameter
> models.

"""
mutable struct gsl_multifit_linear_workspace
    nmax::Csize_t
    pmax::Csize_t
    n::Csize_t
    p::Csize_t
    A::Ptr{gsl_matrix}
    Q::Ptr{gsl_matrix}
    QSI::Ptr{gsl_matrix}
    S::Ptr{gsl_vector}
    t::Ptr{gsl_vector}
    xt::Ptr{gsl_vector}
    D::Ptr{gsl_vector}
    rcond::Cdouble
end

@doc md"""
```
mutable struct gsl_multifit_robust_type
    name::Ptr{Cchar}
    wfun::Ptr{Cvoid}
    psi_deriv::Ptr{Cvoid}
    tuning_default::Cdouble
end
```

"""
mutable struct gsl_multifit_robust_type
    name::Ptr{Cchar}
    wfun::Ptr{Cvoid}
    psi_deriv::Ptr{Cvoid}
    tuning_default::Cdouble
end

@doc md"""
```
mutable struct gsl_multifit_robust_stats
    sigma_ols::Cdouble
    sigma_mad::Cdouble
    sigma_rob::Cdouble
    sigma::Cdouble
    Rsq::Cdouble
    adj_Rsq::Cdouble
    rmse::Cdouble
    sse::Cdouble
    dof::Csize_t
    numit::Csize_t
    weights::Ptr{gsl_vector}
    r::Ptr{gsl_vector}
end
```

"""
mutable struct gsl_multifit_robust_stats
    sigma_ols::Cdouble
    sigma_mad::Cdouble
    sigma_rob::Cdouble
    sigma::Cdouble
    Rsq::Cdouble
    adj_Rsq::Cdouble
    rmse::Cdouble
    sse::Cdouble
    dof::Csize_t
    numit::Csize_t
    weights::Ptr{gsl_vector}
    r::Ptr{gsl_vector}
end

@doc md"""
```
mutable struct gsl_multifit_robust_workspace
    n::Csize_t
    p::Csize_t
    numit::Csize_t
    maxiter::Csize_t
    type::Ptr{gsl_multifit_robust_type}
    tune::Cdouble
    r::Ptr{gsl_vector}
    weights::Ptr{gsl_vector}
    c_prev::Ptr{gsl_vector}
    resfac::Ptr{gsl_vector}
    psi::Ptr{gsl_vector}
    dpsi::Ptr{gsl_vector}
    QSI::Ptr{gsl_matrix}
    D::Ptr{gsl_vector}
    workn::Ptr{gsl_vector}
    stats::gsl_multifit_robust_stats
    multifit_p::Ptr{gsl_multifit_linear_workspace}
end
```
GSL documentation:

### `gsl_multifit_robust_workspace`

> This workspace is used for robust least squares fitting.

"""
mutable struct gsl_multifit_robust_workspace
    n::Csize_t
    p::Csize_t
    numit::Csize_t
    maxiter::Csize_t
    type::Ptr{gsl_multifit_robust_type}
    tune::Cdouble
    r::Ptr{gsl_vector}
    weights::Ptr{gsl_vector}
    c_prev::Ptr{gsl_vector}
    resfac::Ptr{gsl_vector}
    psi::Ptr{gsl_vector}
    dpsi::Ptr{gsl_vector}
    QSI::Ptr{gsl_matrix}
    D::Ptr{gsl_vector}
    workn::Ptr{gsl_vector}
    stats::gsl_multifit_robust_stats
    multifit_p::Ptr{gsl_multifit_linear_workspace}
end


#### gsl_multifit_nlin.h ######################################################


@doc md"""
```
mutable struct gsl_multifit_function_struct
    f::Ptr{Cvoid}
    n::Csize_t
    p::Csize_t
    params::Ptr{Cvoid}
end
```

"""
mutable struct gsl_multifit_function_struct
    f::Ptr{Cvoid}
    n::Csize_t
    p::Csize_t
    params::Ptr{Cvoid}
end
const gsl_multifit_function = gsl_multifit_function_struct

@doc md"""
```
mutable struct gsl_multifit_fsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```

"""
mutable struct gsl_multifit_fsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multifit_fsolver
    type::Ptr{gsl_multifit_fsolver_type}
    function_::Ptr{gsl_multifit_function}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    state::Ptr{Cvoid}
end
```

"""
mutable struct gsl_multifit_fsolver
    type::Ptr{gsl_multifit_fsolver_type}
    function_::Ptr{gsl_multifit_function}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    state::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multifit_function_fdf_struct
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    n::Csize_t
    p::Csize_t
    params::Ptr{Cvoid}
    nevalf::Csize_t
    nevaldf::Csize_t
end
```

"""
mutable struct gsl_multifit_function_fdf_struct
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    n::Csize_t
    p::Csize_t
    params::Ptr{Cvoid}
    nevalf::Csize_t
    nevaldf::Csize_t
end
const gsl_multifit_function_fdf = gsl_multifit_function_fdf_struct

@doc md"""
```
mutable struct gsl_multifit_fdfsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    gradient::Ptr{Cvoid}
    jac::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```

"""
mutable struct gsl_multifit_fdfsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    gradient::Ptr{Cvoid}
    jac::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multifit_fdfsolver
    type::Ptr{gsl_multifit_fdfsolver_type}
    fdf::Ptr{gsl_multifit_function_fdf}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    g::Ptr{gsl_vector}
    sqrt_wts::Ptr{gsl_vector}
    niter::Csize_t
    state::Ptr{Cvoid}
end
```

"""
mutable struct gsl_multifit_fdfsolver
    type::Ptr{gsl_multifit_fdfsolver_type}
    fdf::Ptr{gsl_multifit_function_fdf}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    g::Ptr{gsl_vector}
    sqrt_wts::Ptr{gsl_vector}
    niter::Csize_t
    state::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multifit_fdfridge
    n::Csize_t
    p::Csize_t
    lambda::Cdouble
    L_diag::Ptr{gsl_vector}
    L::Ptr{gsl_matrix}
    f::Ptr{gsl_vector}
    wts::Ptr{gsl_vector}
    s::Ptr{gsl_multifit_fdfsolver}
    fdf::Ptr{gsl_multifit_function_fdf}
    fdftik::gsl_multifit_function_fdf
end
```

"""
mutable struct gsl_multifit_fdfridge
    n::Csize_t
    p::Csize_t
    lambda::Cdouble
    L_diag::Ptr{gsl_vector}
    L::Ptr{gsl_matrix}
    f::Ptr{gsl_vector}
    wts::Ptr{gsl_vector}
    s::Ptr{gsl_multifit_fdfsolver}
    fdf::Ptr{gsl_multifit_function_fdf}
    fdftik::gsl_multifit_function_fdf
end


#### gsl_multifit_nlinear.h ###################################################

const GSL_MULTIFIT_NLINEAR_FWDIFF = 0
const GSL_MULTIFIT_NLINEAR_CTRDIFF = 1
const gsl_multifit_nlinear_fdtype = Cint

@doc md"""
```
mutable struct gsl_multifit_nlinear_fdf
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fvv::Ptr{Cvoid}
    n::Csize_t
    p::Csize_t
    params::Ptr{Cvoid}
    nevalf::Csize_t
    nevaldf::Csize_t
    nevalfvv::Csize_t
end
```
GSL documentation:

### `gsl_multifit_nlinear_fdf`

> This data type defines a general system of functions with arbitrary
> parameters, the corresponding Jacobian matrix of derivatives, and
> optionally the second directional derivative of the functions for
> geodesic acceleration.
>
> `int (* f) (const gsl_vector * x, void * params, gsl_vector * f)`{.sourceCode}
>
> > This function should store the $n$ components of the vector $f(x)$
> > in f for argument x and arbitrary parameters params, returning an
> > appropriate error code if the function cannot be computed.
>
> `int (* df) (const gsl_vector * x, void * params, gsl_matrix * J)`{.sourceCode}
>
> > This function should store the n-by-p matrix result
> >
> > in J for argument x and arbitrary parameters params, returning an
> > appropriate error code if the matrix cannot be computed. If an
> > analytic Jacobian is unavailable, or too expensive to compute, this
> > function pointer may be set to `NULL`{.sourceCode}, in which case
> > the Jacobian will be internally computed using finite difference
> > approximations of the function f.
>
> `int (* fvv) (const gsl_vector * x, const gsl_vector * v, void * params, gsl_vector * fvv)`{.sourceCode}
>
> > When geodesic acceleration is enabled, this function should store
> > the $n$ components of the vector
> > $f_{vv}(x) = \sum_{\alpha\beta} v_{\alpha} v_{\beta} {\partial \over \partial x_{\alpha}} {\partial \over \partial x_{\beta}} f(x)$,
> > representing second directional derivatives of the function to be
> > minimized, into the output fvv. The parameter vector is provided in
> > x and the velocity vector is provided in v, both of which have $p$
> > components. The arbitrary parameters are given in params. If
> > analytic expressions for $f_{vv}(x)$ are unavailable or too
> > difficult to compute, this function pointer may be set to
> > `NULL`{.sourceCode}, in which case $f_{vv}(x)$ will be computed
> > internally using a finite difference approximation.
>
> `size_t n`{.sourceCode}
>
> > the number of functions, i.e. the number of components of the vector
> > f.
>
> `size_t p`{.sourceCode}
>
> > the number of independent variables, i.e. the number of components
> > of the vector x.
>
> `void * params`{.sourceCode}
>
> > a pointer to the arbitrary parameters of the function.
>
> `size_t nevalf`{.sourceCode}
>
> > This does not need to be set by the user. It counts the number of
> > function evaluations and is initialized by the `_init`{.sourceCode}
> > function.
>
> `size_t nevaldf`{.sourceCode}
>
> > This does not need to be set by the user. It counts the number of
> > Jacobian evaluations and is initialized by the `_init`{.sourceCode}
> > function.
>
> `size_t nevalfvv`{.sourceCode}
>
> > This does not need to be set by the user. It counts the number of
> > $f_{vv}(x)$ evaluations and is initialized by the
> > `_init`{.sourceCode} function.

"""
mutable struct gsl_multifit_nlinear_fdf
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fvv::Ptr{Cvoid}
    n::Csize_t
    p::Csize_t
    params::Ptr{Cvoid}
    nevalf::Csize_t
    nevaldf::Csize_t
    nevalfvv::Csize_t
end

@doc md"""
```
mutable struct gsl_multifit_nlinear_trs
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    preloop::Ptr{Cvoid}
    step::Ptr{Cvoid}
    preduction::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multifit_nlinear_trs`

> gsl\_multilarge\_nlinear\_trs

> The parameter trs determines the method used to solve the trust region
> subproblem, and may be selected from the following choices,

"""
mutable struct gsl_multifit_nlinear_trs
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    preloop::Ptr{Cvoid}
    step::Ptr{Cvoid}
    preduction::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multifit_nlinear_scale
    name::Ptr{Cchar}
    init::Ptr{Cvoid}
    update::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multifit_nlinear_scale`

> gsl\_multilarge\_nlinear\_scale

> The parameter scale determines the diagonal scaling matrix $D$ and may
> be selected from the following choices,

"""
mutable struct gsl_multifit_nlinear_scale
    name::Ptr{Cchar}
    init::Ptr{Cvoid}
    update::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multifit_nlinear_solver
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    presolve::Ptr{Cvoid}
    solve::Ptr{Cvoid}
    rcond::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multifit_nlinear_solver`

> gsl\_multilarge\_nlinear\_solver

> Solving the trust region subproblem on each iteration almost always
> requires the solution of the following linear least squares system
>
> The solver parameter determines how the system is solved and can be
> selected from the following choices:

"""
mutable struct gsl_multifit_nlinear_solver
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    presolve::Ptr{Cvoid}
    solve::Ptr{Cvoid}
    rcond::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multifit_nlinear_parameters
    trs::Ptr{gsl_multifit_nlinear_trs}
    scale::Ptr{gsl_multifit_nlinear_scale}
    solver::Ptr{gsl_multifit_nlinear_solver}
    fdtype::gsl_multifit_nlinear_fdtype
    factor_up::Cdouble
    factor_down::Cdouble
    avmax::Cdouble
    h_df::Cdouble
    h_fvv::Cdouble
end
```
GSL documentation:

### `gsl_multifit_nlinear_parameters`

>     typedef struct
>     {
>       const gsl_multifit_nlinear_trs *trs;        /* trust region subproblem method */
>       const gsl_multifit_nlinear_scale *scale;    /* scaling method */
>       const gsl_multifit_nlinear_solver *solver;  /* solver method */
>       gsl_multifit_nlinear_fdtype fdtype;         /* finite difference method */
>       double factor_up;                           /* factor for increasing trust radius */
>       double factor_down;                         /* factor for decreasing trust radius */
>       double avmax;                               /* max allowed |a|/|v| */
>       double h_df;                                /* step size for finite difference Jacobian */
>       double h_fvv;                               /* step size for finite difference fvv */
>     } gsl_multifit_nlinear_parameters;

For the `gsl_multilarge_nlinear`{.sourceCode} interface, the user may
modify the gsl\_multilarge\_nlinear\_parameters structure, which is
defined as follows:

"""
mutable struct gsl_multifit_nlinear_parameters
    trs::Ptr{gsl_multifit_nlinear_trs}
    scale::Ptr{gsl_multifit_nlinear_scale}
    solver::Ptr{gsl_multifit_nlinear_solver}
    fdtype::gsl_multifit_nlinear_fdtype
    factor_up::Cdouble
    factor_down::Cdouble
    avmax::Cdouble
    h_df::Cdouble
    h_fvv::Cdouble
end

@doc md"""
```
mutable struct gsl_multifit_nlinear_type
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    rcond::Ptr{Cvoid}
    avratio::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multifit_nlinear_type`

> This structure specifies the type of algorithm which will be used to
> solve a nonlinear least squares problem. It may be selected from the
> following choices,

"""
mutable struct gsl_multifit_nlinear_type
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    rcond::Ptr{Cvoid}
    avratio::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multifit_nlinear_trust_state
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    g::Ptr{gsl_vector}
    J::Ptr{gsl_matrix}
    diag::Ptr{gsl_vector}
    sqrt_wts::Ptr{gsl_vector}
    mu::Ptr{Cdouble}
    params::Ptr{gsl_multifit_nlinear_parameters}
    solver_state::Ptr{Cvoid}
    fdf::Ptr{gsl_multifit_nlinear_fdf}
    avratio::Ptr{Cdouble}
end
```

"""
mutable struct gsl_multifit_nlinear_trust_state
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    g::Ptr{gsl_vector}
    J::Ptr{gsl_matrix}
    diag::Ptr{gsl_vector}
    sqrt_wts::Ptr{gsl_vector}
    mu::Ptr{Cdouble}
    params::Ptr{gsl_multifit_nlinear_parameters}
    solver_state::Ptr{Cvoid}
    fdf::Ptr{gsl_multifit_nlinear_fdf}
    avratio::Ptr{Cdouble}
end

@doc md"""
```
mutable struct gsl_multifit_nlinear_workspace
    type::Ptr{gsl_multifit_nlinear_type}
    fdf::Ptr{gsl_multifit_nlinear_fdf}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    g::Ptr{gsl_vector}
    J::Ptr{gsl_matrix}
    sqrt_wts_work::Ptr{gsl_vector}
    sqrt_wts::Ptr{gsl_vector}
    niter::Csize_t
    params::gsl_multifit_nlinear_parameters
    state::Ptr{Cvoid}
end
```

"""
mutable struct gsl_multifit_nlinear_workspace
    type::Ptr{gsl_multifit_nlinear_type}
    fdf::Ptr{gsl_multifit_nlinear_fdf}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    g::Ptr{gsl_vector}
    J::Ptr{gsl_matrix}
    sqrt_wts_work::Ptr{gsl_vector}
    sqrt_wts::Ptr{gsl_vector}
    niter::Csize_t
    params::gsl_multifit_nlinear_parameters
    state::Ptr{Cvoid}
end


#### gsl_multilarge.h #########################################################


@doc md"""
```
mutable struct gsl_multilarge_linear_type
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    reset::Ptr{Cvoid}
    accumulate::Ptr{Cvoid}
    solve::Ptr{Cvoid}
    rcond::Ptr{Cvoid}
    lcurve::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```

"""
mutable struct gsl_multilarge_linear_type
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    reset::Ptr{Cvoid}
    accumulate::Ptr{Cvoid}
    solve::Ptr{Cvoid}
    rcond::Ptr{Cvoid}
    lcurve::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multilarge_linear_workspace
    type::Ptr{gsl_multilarge_linear_type}
    state::Ptr{Cvoid}
    p::Csize_t
end
```
GSL documentation:

### `gsl_multilarge_linear_workspace`

> This workspace contains parameters for solving large linear least
> squares problems.

"""
mutable struct gsl_multilarge_linear_workspace
    type::Ptr{gsl_multilarge_linear_type}
    state::Ptr{Cvoid}
    p::Csize_t
end


#### gsl_multilarge_nlinear.h #################################################

const GSL_MULTILARGE_NLINEAR_FWDIFF = 0
const GSL_MULTILARGE_NLINEAR_CTRDIFF = 1
const gsl_multilarge_nlinear_fdtype = Cint

@doc md"""
```
mutable struct gsl_multilarge_nlinear_fdf
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fvv::Ptr{Cvoid}
    n::Csize_t
    p::Csize_t
    params::Ptr{Cvoid}
    nevalf::Csize_t
    nevaldfu::Csize_t
    nevaldf2::Csize_t
    nevalfvv::Csize_t
end
```
GSL documentation:

### `gsl_multilarge_nlinear_fdf`

> This data type defines a general system of functions with arbitrary
> parameters, a function to compute $J u$ or $J^T u$ for a given vector
> $u$, the normal equations matrix $J^T J$, and optionally the second
> directional derivative of the functions for geodesic acceleration.
>
> `int (* f) (const gsl_vector * x, void * params, gsl_vector * f)`{.sourceCode}
>
> > This function should store the $n$ components of the vector $f(x)$
> > in f for argument x and arbitrary parameters params, returning an
> > appropriate error code if the function cannot be computed.
>
> `int (* df) (CBLAS_TRANSPOSE_t TransJ, const gsl_vector * x, const gsl_vector * u, void * params, gsl_vector * v, gsl_matrix * JTJ)`{.sourceCode}
>
> > If TransJ is equal to `CblasNoTrans`{.sourceCode}, then this
> > function should compute the matrix-vector product $J u$ and store
> > the result in v. If TransJ is equal to `CblasTrans`{.sourceCode},
> > then this function should compute the matrix-vector product $J^T u$
> > and store the result in v. Additionally, the normal equations matrix
> > $J^T J$ should be stored in the lower half of JTJ. The input matrix
> > JTJ could be set to `NULL`{.sourceCode}, for example by iterative
> > methods which do not require this matrix, so the user should check
> > for this prior to constructing the matrix. The input params contains
> > the arbitrary parameters.
>
> `int (* fvv) (const gsl_vector * x, const gsl_vector * v, void * params, gsl_vector * fvv)`{.sourceCode}
>
> > When geodesic acceleration is enabled, this function should store
> > the $n$ components of the vector
> > $f_{vv}(x) = \sum_{\alpha\beta} v_{\alpha} v_{\beta} {\partial \over \partial x_{\alpha}} {\partial \over \partial x_{\beta}} f(x)$,
> > representing second directional derivatives of the function to be
> > minimized, into the output fvv. The parameter vector is provided in
> > x and the velocity vector is provided in v, both of which have $p$
> > components. The arbitrary parameters are given in params. If
> > analytic expressions for $f_{vv}(x)$ are unavailable or too
> > difficult to compute, this function pointer may be set to
> > `NULL`{.sourceCode}, in which case $f_{vv}(x)$ will be computed
> > internally using a finite difference approximation.
>
> `size_t n`{.sourceCode}
>
> > the number of functions, i.e. the number of components of the vector
> > f.
>
> `size_t p`{.sourceCode}
>
> > the number of independent variables, i.e. the number of components
> > of the vector x.
>
> `void * params`{.sourceCode}
>
> > a pointer to the arbitrary parameters of the function.
>
> `size_t nevalf`{.sourceCode}
>
> > This does not need to be set by the user. It counts the number of
> > function evaluations and is initialized by the `_init`{.sourceCode}
> > function.
>
> `size_t nevaldfu`{.sourceCode}
>
> > This does not need to be set by the user. It counts the number of
> > Jacobian matrix-vector evaluations ($J u$ or $J^T u$) and is
> > initialized by the `_init`{.sourceCode} function.
>
> `size_t nevaldf2`{.sourceCode}
>
> > This does not need to be set by the user. It counts the number of
> > $J^T J$ evaluations and is initialized by the `_init`{.sourceCode}
> > function.
>
> `size_t nevalfvv`{.sourceCode}
>
> > This does not need to be set by the user. It counts the number of
> > $f_{vv}(x)$ evaluations and is initialized by the
> > `_init`{.sourceCode} function.

Note that when fitting a non-linear model against experimental data, the
data is passed to the functions above using the params argument and the
trial best-fit parameters through the x argument.

"""
mutable struct gsl_multilarge_nlinear_fdf
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fvv::Ptr{Cvoid}
    n::Csize_t
    p::Csize_t
    params::Ptr{Cvoid}
    nevalf::Csize_t
    nevaldfu::Csize_t
    nevaldf2::Csize_t
    nevalfvv::Csize_t
end

@doc md"""
```
mutable struct gsl_multilarge_nlinear_trs
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    preloop::Ptr{Cvoid}
    step::Ptr{Cvoid}
    preduction::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```

"""
mutable struct gsl_multilarge_nlinear_trs
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    preloop::Ptr{Cvoid}
    step::Ptr{Cvoid}
    preduction::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multilarge_nlinear_scale
    name::Ptr{Cchar}
    init::Ptr{Cvoid}
    update::Ptr{Cvoid}
end
```

"""
mutable struct gsl_multilarge_nlinear_scale
    name::Ptr{Cchar}
    init::Ptr{Cvoid}
    update::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multilarge_nlinear_solver
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    presolve::Ptr{Cvoid}
    solve::Ptr{Cvoid}
    rcond::Ptr{Cvoid}
    covar::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```

"""
mutable struct gsl_multilarge_nlinear_solver
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    presolve::Ptr{Cvoid}
    solve::Ptr{Cvoid}
    rcond::Ptr{Cvoid}
    covar::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multilarge_nlinear_parameters
    trs::Ptr{gsl_multilarge_nlinear_trs}
    scale::Ptr{gsl_multilarge_nlinear_scale}
    solver::Ptr{gsl_multilarge_nlinear_solver}
    fdtype::gsl_multilarge_nlinear_fdtype
    factor_up::Cdouble
    factor_down::Cdouble
    avmax::Cdouble
    h_df::Cdouble
    h_fvv::Cdouble
    max_iter::Csize_t
    tol::Cdouble
end
```
GSL documentation:

### `gsl_multilarge_nlinear_parameters`

>     typedef struct
>     {
>       const gsl_multilarge_nlinear_trs *trs;       /* trust region subproblem method */
>       const gsl_multilarge_nlinear_scale *scale;   /* scaling method */
>       const gsl_multilarge_nlinear_solver *solver; /* solver method */
>       gsl_multilarge_nlinear_fdtype fdtype;        /* finite difference method */
>       double factor_up;                            /* factor for increasing trust radius */
>       double factor_down;                          /* factor for decreasing trust radius */
>       double avmax;                                /* max allowed |a|/|v| */
>       double h_df;                                 /* step size for finite difference Jacobian */
>       double h_fvv;                                /* step size for finite difference fvv */
>       size_t max_iter;                             /* maximum iterations for trs method */
>       double tol;                                  /* tolerance for solving trs */
>     } gsl_multilarge_nlinear_parameters;

Each of these parameters is discussed in further detail below.

"""
mutable struct gsl_multilarge_nlinear_parameters
    trs::Ptr{gsl_multilarge_nlinear_trs}
    scale::Ptr{gsl_multilarge_nlinear_scale}
    solver::Ptr{gsl_multilarge_nlinear_solver}
    fdtype::gsl_multilarge_nlinear_fdtype
    factor_up::Cdouble
    factor_down::Cdouble
    avmax::Cdouble
    h_df::Cdouble
    h_fvv::Cdouble
    max_iter::Csize_t
    tol::Cdouble
end

@doc md"""
```
mutable struct gsl_multilarge_nlinear_type
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    rcond::Ptr{Cvoid}
    covar::Ptr{Cvoid}
    avratio::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```

"""
mutable struct gsl_multilarge_nlinear_type
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    rcond::Ptr{Cvoid}
    covar::Ptr{Cvoid}
    avratio::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multilarge_nlinear_trust_state
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    g::Ptr{gsl_vector}
    JTJ::Ptr{gsl_matrix}
    diag::Ptr{gsl_vector}
    sqrt_wts::Ptr{gsl_vector}
    mu::Ptr{Cdouble}
    params::Ptr{gsl_multilarge_nlinear_parameters}
    solver_state::Ptr{Cvoid}
    fdf::Ptr{gsl_multilarge_nlinear_fdf}
    avratio::Ptr{Cdouble}
end
```

"""
mutable struct gsl_multilarge_nlinear_trust_state
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    g::Ptr{gsl_vector}
    JTJ::Ptr{gsl_matrix}
    diag::Ptr{gsl_vector}
    sqrt_wts::Ptr{gsl_vector}
    mu::Ptr{Cdouble}
    params::Ptr{gsl_multilarge_nlinear_parameters}
    solver_state::Ptr{Cvoid}
    fdf::Ptr{gsl_multilarge_nlinear_fdf}
    avratio::Ptr{Cdouble}
end

@doc md"""
```
mutable struct gsl_multilarge_nlinear_workspace
    type::Ptr{gsl_multilarge_nlinear_type}
    fdf::Ptr{gsl_multilarge_nlinear_fdf}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    g::Ptr{gsl_vector}
    JTJ::Ptr{gsl_matrix}
    sqrt_wts_work::Ptr{gsl_vector}
    sqrt_wts::Ptr{gsl_vector}
    n::Csize_t
    p::Csize_t
    niter::Csize_t
    params::gsl_multilarge_nlinear_parameters
    state::Ptr{Cvoid}
end
```

"""
mutable struct gsl_multilarge_nlinear_workspace
    type::Ptr{gsl_multilarge_nlinear_type}
    fdf::Ptr{gsl_multilarge_nlinear_fdf}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    g::Ptr{gsl_vector}
    JTJ::Ptr{gsl_matrix}
    sqrt_wts_work::Ptr{gsl_vector}
    sqrt_wts::Ptr{gsl_vector}
    n::Csize_t
    p::Csize_t
    niter::Csize_t
    params::gsl_multilarge_nlinear_parameters
    state::Ptr{Cvoid}
end


#### gsl_multimin.h ###########################################################


@doc md"""
```
mutable struct gsl_multimin_function_struct
    f::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multimin_function`

> This data type defines a general function of $n$ variables with
> parameters,
>
> `double (* f) (const gsl_vector * x, void * params)`{.sourceCode}
>
> > this function should return the result $f(x,params)$ for argument x
> > and parameters params. If the function cannot be computed, an error
> > value of GSL\_NAN should be returned.
>
> `size_t n`{.sourceCode}
>
> > the dimension of the system, i.e. the number of components of the
> > vectors x.
>
> `void * params`{.sourceCode}
>
> > a pointer to the parameters of the function.

"""
mutable struct gsl_multimin_function_struct
    f::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end
const gsl_multimin_function = gsl_multimin_function_struct

@doc md"""
```
mutable struct gsl_multimin_function_fdf_struct
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multimin_function_fdf`

> This data type defines a general function of $n$ variables with
> parameters and the corresponding gradient vector of derivatives,
>
> `double (* f) (const gsl_vector * x, void * params)`{.sourceCode}
>
> > this function should return the result $f(x,params)$ for argument x
> > and parameters params. If the function cannot be computed, an error
> > value of GSL\_NAN should be returned.
>
> `void (* df) (const gsl_vector * x, void * params, gsl_vector * g)`{.sourceCode}
>
> > this function should store the n-dimensional gradient
> >
> > in the vector g for argument x and parameters params, returning an
> > appropriate error code if the function cannot be computed.
>
> `void (* fdf) (const gsl_vector * x, void * params, double * f, gsl_vector * g)`{.sourceCode}
>
> > This function should set the values of the f and g as above, for
> > arguments x and parameters params. This function provides an
> > optimization of the separate functions for $f(x)$ and $g(x)$---it is
> > always faster to compute the function and its derivative at the same
> > time.
>
> `size_t n`{.sourceCode}
>
> > the dimension of the system, i.e. the number of components of the
> > vectors x.
>
> `void * params`{.sourceCode}
>
> > a pointer to the parameters of the function.

"""
mutable struct gsl_multimin_function_fdf_struct
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end
const gsl_multimin_function_fdf = gsl_multimin_function_fdf_struct

@doc md"""
```
mutable struct gsl_multimin_fminimizer_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multimin_fminimizer_type`

> This type specifies minimization algorithms which do not use
> gradients.

"""
mutable struct gsl_multimin_fminimizer_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multimin_fminimizer
    type::Ptr{gsl_multimin_fminimizer_type}
    f::Ptr{gsl_multimin_function}
    fval::Cdouble
    x::Ptr{gsl_vector}
    size::Cdouble
    state::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multimin_fminimizer`

> This is a workspace for minimizing functions without derivatives.

"""
mutable struct gsl_multimin_fminimizer
    type::Ptr{gsl_multimin_fminimizer_type}
    f::Ptr{gsl_multimin_function}
    fval::Cdouble
    x::Ptr{gsl_vector}
    size::Cdouble
    state::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multimin_fdfminimizer_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    restart::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multimin_fdfminimizer_type`

> This type specifies a minimization algorithm using gradients.

"""
mutable struct gsl_multimin_fdfminimizer_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    restart::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multimin_fdfminimizer
    type::Ptr{gsl_multimin_fdfminimizer_type}
    fdf::Ptr{gsl_multimin_function_fdf}
    f::Cdouble
    x::Ptr{gsl_vector}
    gradient::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    state::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multimin_fdfminimizer`

> This is a workspace for minimizing functions using derivatives.

"""
mutable struct gsl_multimin_fdfminimizer
    type::Ptr{gsl_multimin_fdfminimizer_type}
    fdf::Ptr{gsl_multimin_function_fdf}
    f::Cdouble
    x::Ptr{gsl_vector}
    gradient::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    state::Ptr{Cvoid}
end


#### gsl_multiroots.h #########################################################


@doc md"""
```
mutable struct gsl_multiroot_function_struct
    f::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multiroot_function`

> This data type defines a general system of functions with parameters.
>
> `int (* f) (const gsl_vector * x, void * params, gsl_vector * f)`{.sourceCode}
>
> > this function should store the vector result $f(x,params)$ in f for
> > argument x and parameters params, returning an appropriate error
> > code if the function cannot be computed.
>
> `size_t n`{.sourceCode}
>
> > the dimension of the system, i.e. the number of components of the
> > vectors x and f.
>
> `void * params`{.sourceCode}
>
> > a pointer to the parameters of the function.

Here is an example using Powell's test function,

"""
mutable struct gsl_multiroot_function_struct
    f::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end
const gsl_multiroot_function = gsl_multiroot_function_struct

@doc md"""
```
mutable struct gsl_multiroot_fsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multiroot_fsolver_type`

> The following are available algorithms for minimizing functions
> without derivatives.

"""
mutable struct gsl_multiroot_fsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multiroot_fsolver
    type::Ptr{gsl_multiroot_fsolver_type}
    function_::Ptr{gsl_multiroot_function}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    state::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multiroot_fsolver`

> This is a workspace for multidimensional root-finding without
> derivatives.

"""
mutable struct gsl_multiroot_fsolver
    type::Ptr{gsl_multiroot_fsolver_type}
    function_::Ptr{gsl_multiroot_function}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    dx::Ptr{gsl_vector}
    state::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multiroot_function_fdf_struct
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multiroot_function_fdf`

> This data type defines a general system of functions with parameters
> and the corresponding Jacobian matrix of derivatives,
>
> `int (* f) (const gsl_vector * x, void * params, gsl_vector * f)`{.sourceCode}
>
> > this function should store the vector result $f(x,params)$ in f for
> > argument x and parameters params, returning an appropriate error
> > code if the function cannot be computed.
>
> `int (* df) (const gsl_vector * x, void * params, gsl_matrix * J)`{.sourceCode}
>
> > this function should store the n-by-n matrix result
> >
> > in J for argument x and parameters params, returning an appropriate
> > error code if the function cannot be computed.
>
> `int (* fdf) (const gsl_vector * x, void * params, gsl_vector * f, gsl_matrix * J)`{.sourceCode}
>
> > This function should set the values of the f and J as above, for
> > arguments x and parameters params. This function provides an
> > optimization of the separate functions for $f(x)$ and $J(x)$---it is
> > always faster to compute the function and its derivative at the same
> > time.
>
> `size_t n`{.sourceCode}
>
> > the dimension of the system, i.e. the number of components of the
> > vectors x and f.
>
> `void * params`{.sourceCode}
>
> > a pointer to the parameters of the function.

The example of Powell's test function defined above can be extended to
include analytic derivatives using the following code:

    int
    powell_df (gsl_vector * x, void * p, gsl_matrix * J) 
    {
       struct powell_params * params 
         = (struct powell_params *)p;
       const double A = (params->A);
       const double x0 = gsl_vector_get(x,0);
       const double x1 = gsl_vector_get(x,1);
       gsl_matrix_set (J, 0, 0, A * x1);
       gsl_matrix_set (J, 0, 1, A * x0);
       gsl_matrix_set (J, 1, 0, -exp(-x0));
       gsl_matrix_set (J, 1, 1, -exp(-x1));
       return GSL_SUCCESS
    }

    int
    powell_fdf (gsl_vector * x, void * p, 
                gsl_matrix * f, gsl_matrix * J) {
       struct powell_params * params 
         = (struct powell_params *)p;
       const double A = (params->A);
       const double x0 = gsl_vector_get(x,0);
       const double x1 = gsl_vector_get(x,1);

       const double u0 = exp(-x0);
       const double u1 = exp(-x1);

       gsl_vector_set (f, 0, A * x0 * x1 - 1);
       gsl_vector_set (f, 1, u0 + u1 - (1 + 1/A));

       gsl_matrix_set (J, 0, 0, A * x1);
       gsl_matrix_set (J, 0, 1, A * x0);
       gsl_matrix_set (J, 1, 0, -u0);
       gsl_matrix_set (J, 1, 1, -u1);
       return GSL_SUCCESS
    }

    gsl_multiroot_function_fdf FDF;

    FDF.f = &powell_f;
    FDF.df = &powell_df;
    FDF.fdf = &powell_fdf;
    FDF.n = 2;
    FDF.params = 0;

Note that the function `powell_fdf`{.sourceCode} is able to reuse
existing terms from the function when calculating the Jacobian, thus
saving time.

"""
mutable struct gsl_multiroot_function_fdf_struct
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end
const gsl_multiroot_function_fdf = gsl_multiroot_function_fdf_struct

@doc md"""
```
mutable struct gsl_multiroot_fdfsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multiroot_fdfsolver_type`

> The following are available algorithms for minimizing functions using
> derivatives.

"""
mutable struct gsl_multiroot_fdfsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    alloc::Ptr{Cvoid}
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multiroot_fdfsolver
    type::Ptr{gsl_multiroot_fdfsolver_type}
    fdf::Ptr{gsl_multiroot_function_fdf}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    J::Ptr{gsl_matrix}
    dx::Ptr{gsl_vector}
    state::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multiroot_fdfsolver`

> This is a workspace for multidimensional root-finding with
> derivatives.

"""
mutable struct gsl_multiroot_fdfsolver
    type::Ptr{gsl_multiroot_fdfsolver_type}
    fdf::Ptr{gsl_multiroot_function_fdf}
    x::Ptr{gsl_vector}
    f::Ptr{gsl_vector}
    J::Ptr{gsl_matrix}
    dx::Ptr{gsl_vector}
    state::Ptr{Cvoid}
end


#### gsl_multiset.h ###########################################################


@doc md"""
```
mutable struct gsl_multiset_struct
    n::Csize_t
    k::Csize_t
    data::Ptr{Csize_t}
end
```
GSL documentation:

### `gsl_multiset`

> A multiset is defined by a structure containing three components, the
> values of $n$ and $k$, and a pointer to the multiset array. The
> elements of the multiset array are all of type `size_t`{.sourceCode},
> and are stored in increasing order. The gsl\_multiset structure looks
> like this:
>
>     typedef struct
>     {
>       size_t n;
>       size_t k;
>       size_t *data;
>     } gsl_multiset;

"""
mutable struct gsl_multiset_struct
    n::Csize_t
    k::Csize_t
    data::Ptr{Csize_t}
end
const gsl_multiset = gsl_multiset_struct


#### gsl_nan.h ################################################################



#### gsl_ntuple.h #############################################################


@doc md"""
```
mutable struct gsl_ntuple
    file::Ptr{Cvoid}
    ntuple_data::Ptr{Cvoid}
    size::Csize_t
end
```
GSL documentation:

### `gsl_ntuple`

> Ntuples are manipulated using the gsl\_ntuple struct. This struct
> contains information on the file where the ntuple data is stored, a
> pointer to the current ntuple data row and the size of the
> user-defined ntuple data struct:
>
>     typedef struct
>       {
>         FILE * file;
>         void * ntuple_data;
>         size_t size;
>       } gsl_ntuple;

"""
mutable struct gsl_ntuple
    file::Ptr{Cvoid}
    ntuple_data::Ptr{Cvoid}
    size::Csize_t
end

@doc md"""
```
mutable struct gsl_ntuple_select_fn
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_ntuple_select_fn`

> The *selection function* determines which ntuple rows are selected for
> histogramming. It is defined by the following struct:
>
>     typedef struct
>       {
>         int (* function) (void * ntuple_data, void * params);
>         void * params;
>       } gsl_ntuple_select_fn;
>
> The struct component function should return a non-zero value for each
> ntuple row that is to be included in the histogram.

"""
mutable struct gsl_ntuple_select_fn
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_ntuple_value_fn
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_ntuple_value_fn`

> The *value function* computes scalar values for those ntuple rows
> selected by the selection function:
>
>     typedef struct
>       {
>         double (* function) (void * ntuple_data, void * params);
>         void * params;
>       } gsl_ntuple_value_fn;
>
> In this case the struct component function should return the value to
> be added to the histogram for the ntuple row.

"""
mutable struct gsl_ntuple_value_fn
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end


#### gsl_odeiv.h ##############################################################

const GSL_ODEIV_HADJ_INC = 1
const GSL_ODEIV_HADJ_NIL = 0

@doc md"""
```
mutable struct gsl_odeiv_system
    function_::Ptr{Cvoid}
    jacobian::Ptr{Cvoid}
    dimension::Csize_t
    params::Ptr{Cvoid}
end
```

"""
mutable struct gsl_odeiv_system
    function_::Ptr{Cvoid}
    jacobian::Ptr{Cvoid}
    dimension::Csize_t
    params::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_odeiv_step_type
    name::Ptr{Cchar}
    can_use_dydt_in::Cint
    gives_exact_dydt_out::Cint
    alloc::Ptr{Cvoid}
    apply::Ptr{Cvoid}
    reset::Ptr{Cvoid}
    order::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```

"""
mutable struct gsl_odeiv_step_type
    name::Ptr{Cchar}
    can_use_dydt_in::Cint
    gives_exact_dydt_out::Cint
    alloc::Ptr{Cvoid}
    apply::Ptr{Cvoid}
    reset::Ptr{Cvoid}
    order::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_odeiv_step
    type::Ptr{gsl_odeiv_step_type}
    dimension::Csize_t
    state::Ptr{Cvoid}
end
```

"""
mutable struct gsl_odeiv_step
    type::Ptr{gsl_odeiv_step_type}
    dimension::Csize_t
    state::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_odeiv_control_type
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    hadjust::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```

"""
mutable struct gsl_odeiv_control_type
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    hadjust::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_odeiv_control
    type::Ptr{gsl_odeiv_control_type}
    state::Ptr{Cvoid}
end
```

"""
mutable struct gsl_odeiv_control
    type::Ptr{gsl_odeiv_control_type}
    state::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_odeiv_evolve
    dimension::Csize_t
    y0::Ptr{Cdouble}
    yerr::Ptr{Cdouble}
    dydt_in::Ptr{Cdouble}
    dydt_out::Ptr{Cdouble}
    last_step::Cdouble
    count::Culong
    failed_steps::Culong
end
```

"""
mutable struct gsl_odeiv_evolve
    dimension::Csize_t
    y0::Ptr{Cdouble}
    yerr::Ptr{Cdouble}
    dydt_in::Ptr{Cdouble}
    dydt_out::Ptr{Cdouble}
    last_step::Cdouble
    count::Culong
    failed_steps::Culong
end


#### gsl_odeiv2.h #############################################################

const GSL_ODEIV_HADJ_INC = 1
const GSL_ODEIV_HADJ_NIL = 0

@doc md"""
```
mutable struct gsl_odeiv2_system
    function_::Ptr{Cvoid}
    jacobian::Ptr{Cvoid}
    dimension::Csize_t
    params::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_odeiv2_system`

> This data type defines a general ODE system with arbitrary parameters.
>
> `int (* function) (double t, const double y[], double dydt[], void * params)`{.sourceCode}
>
> > This function should store the vector elements $f_i(t,y,params)$ in
> > the array dydt, for arguments (t, y) and parameters params.
> >
> > The function should return GSL\_SUCCESS if the calculation was
> > completed successfully. Any other return value indicates an error. A
> > special return value GSL\_EBADFUNC causes `gsl_odeiv2`{.sourceCode}
> > routines to immediately stop and return. If `function`{.sourceCode}
> > is modified (for example contents of params), the user must call an
> > appropriate reset function (gsl\_odeiv2\_driver\_reset,
> > gsl\_odeiv2\_evolve\_reset or gsl\_odeiv2\_step\_reset) before
> > continuing. Use return values distinct from standard GSL error codes
> > to distinguish your function as the source of the error.
>
> `int (* jacobian) (double t, const double y[], double * dfdy, double dfdt[], void * params)`{.sourceCode}
>
> > This function should store the vector of derivative elements

"""
mutable struct gsl_odeiv2_system
    function_::Ptr{Cvoid}
    jacobian::Ptr{Cvoid}
    dimension::Csize_t
    params::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_odeiv2_step_type
    name::Ptr{Cchar}
    can_use_dydt_in::Cint
    gives_exact_dydt_out::Cint
    alloc::Ptr{Cvoid}
    apply::Ptr{Cvoid}
    set_driver::Ptr{Cvoid}
    reset::Ptr{Cvoid}
    order::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_odeiv2_step_type`



"""
mutable struct gsl_odeiv2_step_type
    name::Ptr{Cchar}
    can_use_dydt_in::Cint
    gives_exact_dydt_out::Cint
    alloc::Ptr{Cvoid}
    apply::Ptr{Cvoid}
    set_driver::Ptr{Cvoid}
    reset::Ptr{Cvoid}
    order::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_odeiv2_step_struct
    type::Ptr{gsl_odeiv2_step_type}
    dimension::Csize_t
    state::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_odeiv2_step`

> This contains internal parameters for a stepping function.

"""
mutable struct gsl_odeiv2_step_struct
    type::Ptr{gsl_odeiv2_step_type}
    dimension::Csize_t
    state::Ptr{Cvoid}
end
const gsl_odeiv2_step = gsl_odeiv2_step_struct

@doc md"""
```
mutable struct gsl_odeiv2_control_type
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    hadjust::Ptr{Cvoid}
    errlevel::Ptr{Cvoid}
    set_driver::Ptr{Cvoid}
    free::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_odeiv2_control_type`

> This specifies the control type.

"""
mutable struct gsl_odeiv2_control_type
    name::Ptr{Cchar}
    alloc::Ptr{Cvoid}
    init::Ptr{Cvoid}
    hadjust::Ptr{Cvoid}
    errlevel::Ptr{Cvoid}
    set_driver::Ptr{Cvoid}
    free::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_odeiv2_control_struct
    type::Ptr{gsl_odeiv2_control_type}
    state::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_odeiv2_control`

> This is a workspace for controlling step size.

"""
mutable struct gsl_odeiv2_control_struct
    type::Ptr{gsl_odeiv2_control_type}
    state::Ptr{Cvoid}
end
const gsl_odeiv2_control = gsl_odeiv2_control_struct

@doc md"""
```
mutable struct gsl_odeiv2_evolve_struct
    dimension::Csize_t
    y0::Ptr{Cdouble}
    yerr::Ptr{Cdouble}
    dydt_in::Ptr{Cdouble}
    dydt_out::Ptr{Cdouble}
    last_step::Cdouble
    count::Culong
    failed_steps::Culong
    driver::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_odeiv2_evolve`

> This workspace contains parameters for controlling the evolution
> function

"""
mutable struct gsl_odeiv2_evolve_struct
    dimension::Csize_t
    y0::Ptr{Cdouble}
    yerr::Ptr{Cdouble}
    dydt_in::Ptr{Cdouble}
    dydt_out::Ptr{Cdouble}
    last_step::Cdouble
    count::Culong
    failed_steps::Culong
    driver::Ptr{Cvoid}
end
const gsl_odeiv2_evolve = gsl_odeiv2_evolve_struct

@doc md"""
```
mutable struct gsl_odeiv2_driver_struct
    sys::Ptr{gsl_odeiv2_system}
    s::Ptr{gsl_odeiv2_step}
    c::Ptr{gsl_odeiv2_control}
    e::Ptr{gsl_odeiv2_evolve}
    h::Cdouble
    hmin::Cdouble
    hmax::Cdouble
    n::Culong
    nmax::Culong
end
```

"""
mutable struct gsl_odeiv2_driver_struct
    sys::Ptr{gsl_odeiv2_system}
    s::Ptr{gsl_odeiv2_step}
    c::Ptr{gsl_odeiv2_control}
    e::Ptr{gsl_odeiv2_evolve}
    h::Cdouble
    hmin::Cdouble
    hmax::Cdouble
    n::Culong
    nmax::Culong
end
const gsl_odeiv2_driver = gsl_odeiv2_driver_struct


#### gsl_permutation.h ########################################################


@doc md"""
```
mutable struct gsl_permutation_struct
    size::Csize_t
    data::Ptr{Csize_t}
end
```
GSL documentation:

### `gsl_permutation`

> A permutation is defined by a structure containing two components, the
> size of the permutation and a pointer to the permutation array. The
> elements of the permutation array are all of type
> `size_t`{.sourceCode}. The gsl\_permutation structure looks like this:
>
>     typedef struct
>     {
>       size_t size;
>       size_t * data;
>     } gsl_permutation;

"""
mutable struct gsl_permutation_struct
    size::Csize_t
    data::Ptr{Csize_t}
end
const gsl_permutation = gsl_permutation_struct


#### gsl_permute.h ############################################################



#### gsl_permute_char.h #######################################################



#### gsl_permute_complex_double.h #############################################



#### gsl_permute_complex_float.h ##############################################



#### gsl_permute_complex_long_double.h ########################################



#### gsl_permute_double.h #####################################################



#### gsl_permute_float.h ######################################################



#### gsl_permute_int.h ########################################################



#### gsl_permute_long.h #######################################################



#### gsl_permute_long_double.h ################################################



#### gsl_permute_matrix.h #####################################################



#### gsl_permute_matrix_char.h ################################################



#### gsl_permute_matrix_complex_double.h ######################################



#### gsl_permute_matrix_complex_float.h #######################################



#### gsl_permute_matrix_complex_long_double.h #################################



#### gsl_permute_matrix_double.h ##############################################



#### gsl_permute_matrix_float.h ###############################################



#### gsl_permute_matrix_int.h #################################################



#### gsl_permute_matrix_long.h ################################################



#### gsl_permute_matrix_long_double.h #########################################



#### gsl_permute_matrix_short.h ###############################################



#### gsl_permute_matrix_uchar.h ###############################################



#### gsl_permute_matrix_uint.h ################################################



#### gsl_permute_matrix_ulong.h ###############################################



#### gsl_permute_matrix_ushort.h ##############################################



#### gsl_permute_short.h ######################################################



#### gsl_permute_uchar.h ######################################################



#### gsl_permute_uint.h #######################################################



#### gsl_permute_ulong.h ######################################################



#### gsl_permute_ushort.h #####################################################



#### gsl_permute_vector.h #####################################################



#### gsl_permute_vector_char.h ################################################



#### gsl_permute_vector_complex_double.h ######################################



#### gsl_permute_vector_complex_float.h #######################################



#### gsl_permute_vector_complex_long_double.h #################################



#### gsl_permute_vector_double.h ##############################################



#### gsl_permute_vector_float.h ###############################################



#### gsl_permute_vector_int.h #################################################



#### gsl_permute_vector_long.h ################################################



#### gsl_permute_vector_long_double.h #########################################



#### gsl_permute_vector_short.h ###############################################



#### gsl_permute_vector_uchar.h ###############################################



#### gsl_permute_vector_uint.h ################################################



#### gsl_permute_vector_ulong.h ###############################################



#### gsl_permute_vector_ushort.h ##############################################



#### gsl_poly.h ###############################################################


@doc md"""
```
mutable struct gsl_poly_complex_workspace
    nc::Csize_t
    matrix::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_poly_complex_workspace`

> This workspace contains parameters used for finding roots of general
> polynomials

"""
mutable struct gsl_poly_complex_workspace
    nc::Csize_t
    matrix::Ptr{Cdouble}
end


#### gsl_pow_int.h ############################################################



#### gsl_precision.h ##########################################################

const _GSL_PREC_T_NUM = 3
const gsl_prec_t = Cuint


#### gsl_qrng.h ###############################################################


@doc md"""
```
mutable struct gsl_qrng_type
    name::Ptr{Cchar}
    max_dimension::Cuint
    state_size::Ptr{Cvoid}
    init_state::Ptr{Cvoid}
    get::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_qrng_type`



"""
mutable struct gsl_qrng_type
    name::Ptr{Cchar}
    max_dimension::Cuint
    state_size::Ptr{Cvoid}
    init_state::Ptr{Cvoid}
    get::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_qrng
    type::Ptr{gsl_qrng_type}
    dimension::Cuint
    state_size::Csize_t
    state::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_qrng`

> This is a workspace for computing quasi-random sequences.

"""
mutable struct gsl_qrng
    type::Ptr{gsl_qrng_type}
    dimension::Cuint
    state_size::Csize_t
    state::Ptr{Cvoid}
end


#### gsl_randist.h ############################################################


@doc md"""
```
mutable struct gsl_ran_discrete_t
    K::Csize_t
    A::Ptr{Csize_t}
    F::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_ran_discrete_t`

> This structure contains the lookup table for the discrete random
> number generator.

"""
mutable struct gsl_ran_discrete_t
    K::Csize_t
    A::Ptr{Csize_t}
    F::Ptr{Cdouble}
end


#### gsl_rng.h ################################################################


@doc md"""
```
mutable struct gsl_rng_type
    name::Ptr{Cchar}
    max::Culong
    min::Culong
    size::Csize_t
    set::Ptr{Cvoid}
    get::Ptr{Cvoid}
    get_double::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_rng_type`

> gsl\_rng

> The random number generator library uses two special structs,
> gsl\_rng\_type which holds static information about each type of
> generator and gsl\_rng which describes an instance of a generator
> created from a given gsl\_rng\_type.

The functions described in this section are declared in the header file
gsl\_rng.h.

"""
mutable struct gsl_rng_type
    name::Ptr{Cchar}
    max::Culong
    min::Culong
    size::Csize_t
    set::Ptr{Cvoid}
    get::Ptr{Cvoid}
    get_double::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_rng
    type::Ptr{gsl_rng_type}
    state::Ptr{Cvoid}
end
```

"""
mutable struct gsl_rng
    type::Ptr{gsl_rng_type}
    state::Ptr{Cvoid}
end


#### gsl_roots.h ##############################################################


@doc md"""
```
mutable struct gsl_root_fsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_root_fsolver_type`



"""
mutable struct gsl_root_fsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_root_fsolver
    type::Ptr{gsl_root_fsolver_type}
    function_::Ptr{gsl_function}
    root::Cdouble
    x_lower::Cdouble
    x_upper::Cdouble
    state::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_root_fsolver`

> This is a workspace for finding roots using methods which do not
> require derivatives.

"""
mutable struct gsl_root_fsolver
    type::Ptr{gsl_root_fsolver_type}
    function_::Ptr{gsl_function}
    root::Cdouble
    x_lower::Cdouble
    x_upper::Cdouble
    state::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_root_fdfsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_root_fdfsolver_type`



"""
mutable struct gsl_root_fdfsolver_type
    name::Ptr{Cchar}
    size::Csize_t
    set::Ptr{Cvoid}
    iterate::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_root_fdfsolver
    type::Ptr{gsl_root_fdfsolver_type}
    fdf::Ptr{gsl_function_fdf}
    root::Cdouble
    state::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_root_fdfsolver`

> This is a workspace for finding roots using methods which require
> derivatives.

"""
mutable struct gsl_root_fdfsolver
    type::Ptr{gsl_root_fdfsolver_type}
    fdf::Ptr{gsl_function_fdf}
    root::Cdouble
    state::Ptr{Cvoid}
end


#### gsl_rstat.h ##############################################################


@doc md"""
```
mutable struct gsl_rstat_quantile_workspace
    p::Cdouble
    q::NTuple{5, Cdouble}
    npos::NTuple{5, Cint}
    np::NTuple{5, Cdouble}
    dnp::NTuple{5, Cdouble}
    n::Csize_t
end
```
GSL documentation:

### `gsl_rstat_quantile_workspace`

> This workspace contains parameters for estimating quantiles of the
> current dataset

"""
mutable struct gsl_rstat_quantile_workspace
    p::Cdouble
    q::NTuple{5, Cdouble}
    npos::NTuple{5, Cint}
    np::NTuple{5, Cdouble}
    dnp::NTuple{5, Cdouble}
    n::Csize_t
end

@doc md"""
```
mutable struct gsl_rstat_workspace
    min::Cdouble
    max::Cdouble
    mean::Cdouble
    M2::Cdouble
    M3::Cdouble
    M4::Cdouble
    n::Csize_t
    median_workspace_p::Ptr{gsl_rstat_quantile_workspace}
end
```
GSL documentation:

### `gsl_rstat_workspace`

> This workspace contains parameters used to calculate various
> statistics and are updated after each data point is added to the
> accumulator.

"""
mutable struct gsl_rstat_workspace
    min::Cdouble
    max::Cdouble
    mean::Cdouble
    M2::Cdouble
    M3::Cdouble
    M4::Cdouble
    n::Csize_t
    median_workspace_p::Ptr{gsl_rstat_quantile_workspace}
end


#### gsl_sf.h #################################################################



#### gsl_sf_airy.h ############################################################



#### gsl_sf_bessel.h ##########################################################



#### gsl_sf_clausen.h #########################################################



#### gsl_sf_coulomb.h #########################################################



#### gsl_sf_coupling.h ########################################################



#### gsl_sf_dawson.h ##########################################################



#### gsl_sf_debye.h ###########################################################



#### gsl_sf_dilog.h ###########################################################



#### gsl_sf_elementary.h ######################################################



#### gsl_sf_ellint.h ##########################################################



#### gsl_sf_elljac.h ##########################################################



#### gsl_sf_erf.h #############################################################



#### gsl_sf_exp.h #############################################################



#### gsl_sf_expint.h ##########################################################



#### gsl_sf_fermi_dirac.h #####################################################



#### gsl_sf_gamma.h ###########################################################

const GSL_SF_GAMMA_XMAX = 171.0
const GSL_SF_FACT_NMAX = 170
const GSL_SF_DOUBLEFACT_NMAX = 297


#### gsl_sf_gegenbauer.h ######################################################



#### gsl_sf_hermite.h #########################################################



#### gsl_sf_hyperg.h ##########################################################



#### gsl_sf_laguerre.h ########################################################



#### gsl_sf_lambert.h #########################################################



#### gsl_sf_legendre.h ########################################################

const GSL_SF_LEGENDRE_SCHMIDT = 0
const GSL_SF_LEGENDRE_SPHARM = 1
const GSL_SF_LEGENDRE_FULL = 2
const GSL_SF_LEGENDRE_NONE = 3
const gsl_sf_legendre_t = Cint


#### gsl_sf_log.h #############################################################



#### gsl_sf_mathieu.h #########################################################

const GSL_SF_MATHIEU_COEFF = 100

@doc md"""
```
mutable struct gsl_sf_mathieu_workspace
    size::Csize_t
    even_order::Csize_t
    odd_order::Csize_t
    extra_values::Cint
    qa::Cdouble
    qb::Cdouble
    aa::Ptr{Cdouble}
    bb::Ptr{Cdouble}
    dd::Ptr{Cdouble}
    ee::Ptr{Cdouble}
    tt::Ptr{Cdouble}
    e2::Ptr{Cdouble}
    zz::Ptr{Cdouble}
    eval::Ptr{gsl_vector}
    evec::Ptr{gsl_matrix}
    wmat::Ptr{gsl_eigen_symmv_workspace}
end
```
GSL documentation:

### `gsl_sf_mathieu_workspace`

> Workspace required for array-based routines

"""
mutable struct gsl_sf_mathieu_workspace
    size::Csize_t
    even_order::Csize_t
    odd_order::Csize_t
    extra_values::Cint
    qa::Cdouble
    qb::Cdouble
    aa::Ptr{Cdouble}
    bb::Ptr{Cdouble}
    dd::Ptr{Cdouble}
    ee::Ptr{Cdouble}
    tt::Ptr{Cdouble}
    e2::Ptr{Cdouble}
    zz::Ptr{Cdouble}
    eval::Ptr{gsl_vector}
    evec::Ptr{gsl_matrix}
    wmat::Ptr{gsl_eigen_symmv_workspace}
end


#### gsl_sf_pow_int.h #########################################################



#### gsl_sf_psi.h #############################################################



#### gsl_sf_result.h ##########################################################


@doc md"""
```
mutable struct gsl_sf_result_struct
    val::Cdouble
    err::Cdouble
end
```
GSL documentation:

### `gsl_sf_result`

>     typedef struct
>     {
>       double val;
>       double err;
>     } gsl_sf_result;
>
> The field val contains the value and the field err contains an
> estimate of the absolute error in the value.

In some cases, an overflow or underflow can be detected and handled by a
function. In this case, it may be possible to return a scaling exponent
as well as an error/value pair in order to save the result from
exceeding the dynamic range of the built-in types. The following struct
contains value and error fields as well as an exponent field such that
the actual result is obtained as `result * 10^(e10)`{.sourceCode}.

"""
mutable struct gsl_sf_result_struct
    val::Cdouble
    err::Cdouble
end
const gsl_sf_result = gsl_sf_result_struct

@doc md"""
```
mutable struct gsl_sf_result_e10_struct
    val::Cdouble
    err::Cdouble
    e10::Cint
end
```
GSL documentation:

### `gsl_sf_result_e10`

>     typedef struct
>     {
>       double val;
>       double err;
>       int    e10;
>     } gsl_sf_result_e10;

"""
mutable struct gsl_sf_result_e10_struct
    val::Cdouble
    err::Cdouble
    e10::Cint
end
const gsl_sf_result_e10 = gsl_sf_result_e10_struct


#### gsl_sf_sincos_pi.h #######################################################



#### gsl_sf_synchrotron.h #####################################################



#### gsl_sf_transport.h #######################################################



#### gsl_sf_trig.h ############################################################



#### gsl_sf_zeta.h ############################################################



#### gsl_siman.h ##############################################################

const gsl_siman_Efunc_t = Ptr{Cvoid}
const gsl_siman_step_t = Ptr{Cvoid}
const gsl_siman_metric_t = Ptr{Cvoid}
const gsl_siman_print_t = Ptr{Cvoid}
const gsl_siman_copy_t = Ptr{Cvoid}
const gsl_siman_copy_construct_t = Ptr{Cvoid}
const gsl_siman_destroy_t = Ptr{Cvoid}

@doc md"""
```
mutable struct gsl_siman_params_t
    n_tries::Cint
    iters_fixed_T::Cint
    step_size::Cdouble
    k::Cdouble
    t_initial::Cdouble
    mu_t::Cdouble
    t_min::Cdouble
end
```
GSL documentation:

### `gsl_siman_params_t`

> These are the parameters that control a run of gsl\_siman\_solve. This
> structure contains all the information needed to control the search,
> beyond the energy function, the step function and the initial guess.
>
>   ------------------------------------------------- ----------------------------------------------------------
>   `int n_tries`{.sourceCode}                        The number of points to try for each step.
>   `int iters_fixed_T`{.sourceCode}                  The number of iterations at each temperature.
>   `double step_size`{.sourceCode}                   The maximum step size in the random walk.
>   `double k, t_initial, mu_t, t_min`{.sourceCode}   The parameters of the Boltzmann distribution and cooling
>                                                     schedule.
>   ------------------------------------------------- ----------------------------------------------------------
>


"""
mutable struct gsl_siman_params_t
    n_tries::Cint
    iters_fixed_T::Cint
    step_size::Cdouble
    k::Cdouble
    t_initial::Cdouble
    mu_t::Cdouble
    t_min::Cdouble
end


#### gsl_sort.h ###############################################################



#### gsl_sort_char.h ##########################################################



#### gsl_sort_double.h ########################################################



#### gsl_sort_float.h #########################################################



#### gsl_sort_int.h ###########################################################



#### gsl_sort_long.h ##########################################################



#### gsl_sort_long_double.h ###################################################



#### gsl_sort_short.h #########################################################



#### gsl_sort_uchar.h #########################################################



#### gsl_sort_uint.h ##########################################################



#### gsl_sort_ulong.h #########################################################



#### gsl_sort_ushort.h ########################################################



#### gsl_sort_vector.h ########################################################



#### gsl_sort_vector_char.h ###################################################



#### gsl_sort_vector_double.h #################################################



#### gsl_sort_vector_float.h ##################################################



#### gsl_sort_vector_int.h ####################################################



#### gsl_sort_vector_long.h ###################################################



#### gsl_sort_vector_long_double.h ############################################



#### gsl_sort_vector_short.h ##################################################



#### gsl_sort_vector_uchar.h ##################################################



#### gsl_sort_vector_uint.h ###################################################



#### gsl_sort_vector_ulong.h ##################################################



#### gsl_sort_vector_ushort.h #################################################



#### gsl_specfunc.h ###########################################################



#### gsl_spline.h #############################################################


@doc md"""
```
mutable struct gsl_spline
    interp::Ptr{gsl_interp}
    x::Ptr{Cdouble}
    y::Ptr{Cdouble}
    size::Csize_t
end
```
GSL documentation:

### `gsl_spline`

> This workspace provides a higher level interface for the gsl\_interp
> object

"""
mutable struct gsl_spline
    interp::Ptr{gsl_interp}
    x::Ptr{Cdouble}
    y::Ptr{Cdouble}
    size::Csize_t
end


#### gsl_spline2d.h ###########################################################


@doc md"""
```
mutable struct gsl_spline2d
    interp_object::gsl_interp2d
    xarr::Ptr{Cdouble}
    yarr::Ptr{Cdouble}
    zarr::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_spline2d`

> This workspace provides a higher level interface for the gsl\_interp2d
> object

"""
mutable struct gsl_spline2d
    interp_object::gsl_interp2d
    xarr::Ptr{Cdouble}
    yarr::Ptr{Cdouble}
    zarr::Ptr{Cdouble}
end


#### gsl_statistics.h #########################################################



#### gsl_statistics_char.h ####################################################



#### gsl_statistics_double.h ##################################################



#### gsl_statistics_float.h ###################################################



#### gsl_statistics_int.h #####################################################



#### gsl_statistics_long.h ####################################################



#### gsl_statistics_long_double.h #############################################



#### gsl_statistics_short.h ###################################################



#### gsl_statistics_uchar.h ###################################################



#### gsl_statistics_uint.h ####################################################



#### gsl_statistics_ulong.h ###################################################



#### gsl_statistics_ushort.h ##################################################



#### gsl_sum.h ################################################################


@doc md"""
```
mutable struct gsl_sum_levin_u_workspace
    size::Csize_t
    i::Csize_t
    terms_used::Csize_t
    sum_plain::Cdouble
    q_num::Ptr{Cdouble}
    q_den::Ptr{Cdouble}
    dq_num::Ptr{Cdouble}
    dq_den::Ptr{Cdouble}
    dsum::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_sum_levin_u_workspace`

> Workspace for a Leven $u$-transform.

"""
mutable struct gsl_sum_levin_u_workspace
    size::Csize_t
    i::Csize_t
    terms_used::Csize_t
    sum_plain::Cdouble
    q_num::Ptr{Cdouble}
    q_den::Ptr{Cdouble}
    dq_num::Ptr{Cdouble}
    dq_den::Ptr{Cdouble}
    dsum::Ptr{Cdouble}
end

@doc md"""
```
mutable struct gsl_sum_levin_utrunc_workspace
    size::Csize_t
    i::Csize_t
    terms_used::Csize_t
    sum_plain::Cdouble
    q_num::Ptr{Cdouble}
    q_den::Ptr{Cdouble}
    dsum::Ptr{Cdouble}
end
```
GSL documentation:

### `gsl_sum_levin_utrunc_workspace`

> Workspace for a Levin $u$-transform without error estimation

"""
mutable struct gsl_sum_levin_utrunc_workspace
    size::Csize_t
    i::Csize_t
    terms_used::Csize_t
    sum_plain::Cdouble
    q_num::Ptr{Cdouble}
    q_den::Ptr{Cdouble}
    dsum::Ptr{Cdouble}
end


#### gsl_sys.h ################################################################



#### gsl_test.h ###############################################################



#### gsl_types.h ##############################################################



#### gsl_vector.h #############################################################



#### gsl_vector_char.h ########################################################


@doc md"""
```
mutable struct gsl_vector_char
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cchar}
    block::Ptr{gsl_block_char}
    owner::Cint
end
```

"""
mutable struct gsl_vector_char
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cchar}
    block::Ptr{gsl_block_char}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_vector_char_view
    vector::gsl_vector_char
end
```

"""
mutable struct _gsl_vector_char_view
    vector::gsl_vector_char
end
const gsl_vector_char_view = _gsl_vector_char_view

@doc md"""
```
mutable struct _gsl_vector_char_const_view
    vector::gsl_vector_char
end
```

"""
mutable struct _gsl_vector_char_const_view
    vector::gsl_vector_char
end
const gsl_vector_char_const_view = _gsl_vector_char_const_view


#### gsl_vector_complex.h #####################################################



#### gsl_vector_complex_float.h ###############################################


@doc md"""
```
mutable struct gsl_vector_complex_float
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cfloat}
    block::Ptr{gsl_block_complex_float}
    owner::Cint
end
```

"""
mutable struct gsl_vector_complex_float
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cfloat}
    block::Ptr{gsl_block_complex_float}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_vector_complex_float_view
    vector::gsl_vector_complex_float
end
```

"""
mutable struct _gsl_vector_complex_float_view
    vector::gsl_vector_complex_float
end
const gsl_vector_complex_float_view = _gsl_vector_complex_float_view

@doc md"""
```
mutable struct _gsl_vector_complex_float_const_view
    vector::gsl_vector_complex_float
end
```

"""
mutable struct _gsl_vector_complex_float_const_view
    vector::gsl_vector_complex_float
end
const gsl_vector_complex_float_const_view = _gsl_vector_complex_float_const_view


#### gsl_vector_complex_long_double.h #########################################


@doc md"""
```
mutable struct gsl_vector_complex_long_double
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_complex_long_double}
    owner::Cint
end
```

"""
mutable struct gsl_vector_complex_long_double
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_complex_long_double}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_vector_complex_long_double_view
    vector::gsl_vector_complex_long_double
end
```

"""
mutable struct _gsl_vector_complex_long_double_view
    vector::gsl_vector_complex_long_double
end
const gsl_vector_complex_long_double_view = _gsl_vector_complex_long_double_view

@doc md"""
```
mutable struct _gsl_vector_complex_long_double_const_view
    vector::gsl_vector_complex_long_double
end
```

"""
mutable struct _gsl_vector_complex_long_double_const_view
    vector::gsl_vector_complex_long_double
end
const gsl_vector_complex_long_double_const_view = _gsl_vector_complex_long_double_const_view


#### gsl_vector_float.h #######################################################


@doc md"""
```
mutable struct gsl_vector_float
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cfloat}
    block::Ptr{gsl_block_float}
    owner::Cint
end
```

"""
mutable struct gsl_vector_float
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cfloat}
    block::Ptr{gsl_block_float}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_vector_float_view
    vector::gsl_vector_float
end
```

"""
mutable struct _gsl_vector_float_view
    vector::gsl_vector_float
end
const gsl_vector_float_view = _gsl_vector_float_view

@doc md"""
```
mutable struct _gsl_vector_float_const_view
    vector::gsl_vector_float
end
```

"""
mutable struct _gsl_vector_float_const_view
    vector::gsl_vector_float
end
const gsl_vector_float_const_view = _gsl_vector_float_const_view


#### gsl_vector_int.h #########################################################


@doc md"""
```
mutable struct gsl_vector_int
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cint}
    block::Ptr{gsl_block_int}
    owner::Cint
end
```

"""
mutable struct gsl_vector_int
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cint}
    block::Ptr{gsl_block_int}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_vector_int_view
    vector::gsl_vector_int
end
```

"""
mutable struct _gsl_vector_int_view
    vector::gsl_vector_int
end
const gsl_vector_int_view = _gsl_vector_int_view

@doc md"""
```
mutable struct _gsl_vector_int_const_view
    vector::gsl_vector_int
end
```

"""
mutable struct _gsl_vector_int_const_view
    vector::gsl_vector_int
end
const gsl_vector_int_const_view = _gsl_vector_int_const_view


#### gsl_vector_long.h ########################################################


@doc md"""
```
mutable struct gsl_vector_long
    size::Csize_t
    stride::Csize_t
    data::Ptr{Clong}
    block::Ptr{gsl_block_long}
    owner::Cint
end
```

"""
mutable struct gsl_vector_long
    size::Csize_t
    stride::Csize_t
    data::Ptr{Clong}
    block::Ptr{gsl_block_long}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_vector_long_view
    vector::gsl_vector_long
end
```

"""
mutable struct _gsl_vector_long_view
    vector::gsl_vector_long
end
const gsl_vector_long_view = _gsl_vector_long_view

@doc md"""
```
mutable struct _gsl_vector_long_const_view
    vector::gsl_vector_long
end
```

"""
mutable struct _gsl_vector_long_const_view
    vector::gsl_vector_long
end
const gsl_vector_long_const_view = _gsl_vector_long_const_view


#### gsl_vector_long_double.h #################################################


@doc md"""
```
mutable struct gsl_vector_long_double
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_long_double}
    owner::Cint
end
```

"""
mutable struct gsl_vector_long_double
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cdouble}
    block::Ptr{gsl_block_long_double}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_vector_long_double_view
    vector::gsl_vector_long_double
end
```

"""
mutable struct _gsl_vector_long_double_view
    vector::gsl_vector_long_double
end
const gsl_vector_long_double_view = _gsl_vector_long_double_view

@doc md"""
```
mutable struct _gsl_vector_long_double_const_view
    vector::gsl_vector_long_double
end
```

"""
mutable struct _gsl_vector_long_double_const_view
    vector::gsl_vector_long_double
end
const gsl_vector_long_double_const_view = _gsl_vector_long_double_const_view


#### gsl_vector_short.h #######################################################


@doc md"""
```
mutable struct gsl_vector_short
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cshort}
    block::Ptr{gsl_block_short}
    owner::Cint
end
```

"""
mutable struct gsl_vector_short
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cshort}
    block::Ptr{gsl_block_short}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_vector_short_view
    vector::gsl_vector_short
end
```

"""
mutable struct _gsl_vector_short_view
    vector::gsl_vector_short
end
const gsl_vector_short_view = _gsl_vector_short_view

@doc md"""
```
mutable struct _gsl_vector_short_const_view
    vector::gsl_vector_short
end
```

"""
mutable struct _gsl_vector_short_const_view
    vector::gsl_vector_short
end
const gsl_vector_short_const_view = _gsl_vector_short_const_view


#### gsl_vector_uchar.h #######################################################


@doc md"""
```
mutable struct gsl_vector_uchar
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cuchar}
    block::Ptr{gsl_block_uchar}
    owner::Cint
end
```

"""
mutable struct gsl_vector_uchar
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cuchar}
    block::Ptr{gsl_block_uchar}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_vector_uchar_view
    vector::gsl_vector_uchar
end
```

"""
mutable struct _gsl_vector_uchar_view
    vector::gsl_vector_uchar
end
const gsl_vector_uchar_view = _gsl_vector_uchar_view

@doc md"""
```
mutable struct _gsl_vector_uchar_const_view
    vector::gsl_vector_uchar
end
```

"""
mutable struct _gsl_vector_uchar_const_view
    vector::gsl_vector_uchar
end
const gsl_vector_uchar_const_view = _gsl_vector_uchar_const_view


#### gsl_vector_uint.h ########################################################


@doc md"""
```
mutable struct gsl_vector_uint
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cuint}
    block::Ptr{gsl_block_uint}
    owner::Cint
end
```

"""
mutable struct gsl_vector_uint
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cuint}
    block::Ptr{gsl_block_uint}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_vector_uint_view
    vector::gsl_vector_uint
end
```

"""
mutable struct _gsl_vector_uint_view
    vector::gsl_vector_uint
end
const gsl_vector_uint_view = _gsl_vector_uint_view

@doc md"""
```
mutable struct _gsl_vector_uint_const_view
    vector::gsl_vector_uint
end
```

"""
mutable struct _gsl_vector_uint_const_view
    vector::gsl_vector_uint
end
const gsl_vector_uint_const_view = _gsl_vector_uint_const_view


#### gsl_vector_ulong.h #######################################################


@doc md"""
```
mutable struct gsl_vector_ulong
    size::Csize_t
    stride::Csize_t
    data::Ptr{Culong}
    block::Ptr{gsl_block_ulong}
    owner::Cint
end
```

"""
mutable struct gsl_vector_ulong
    size::Csize_t
    stride::Csize_t
    data::Ptr{Culong}
    block::Ptr{gsl_block_ulong}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_vector_ulong_view
    vector::gsl_vector_ulong
end
```

"""
mutable struct _gsl_vector_ulong_view
    vector::gsl_vector_ulong
end
const gsl_vector_ulong_view = _gsl_vector_ulong_view

@doc md"""
```
mutable struct _gsl_vector_ulong_const_view
    vector::gsl_vector_ulong
end
```

"""
mutable struct _gsl_vector_ulong_const_view
    vector::gsl_vector_ulong
end
const gsl_vector_ulong_const_view = _gsl_vector_ulong_const_view


#### gsl_vector_ushort.h ######################################################


@doc md"""
```
mutable struct gsl_vector_ushort
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cushort}
    block::Ptr{gsl_block_ushort}
    owner::Cint
end
```

"""
mutable struct gsl_vector_ushort
    size::Csize_t
    stride::Csize_t
    data::Ptr{Cushort}
    block::Ptr{gsl_block_ushort}
    owner::Cint
end

@doc md"""
```
mutable struct _gsl_vector_ushort_view
    vector::gsl_vector_ushort
end
```

"""
mutable struct _gsl_vector_ushort_view
    vector::gsl_vector_ushort
end
const gsl_vector_ushort_view = _gsl_vector_ushort_view

@doc md"""
```
mutable struct _gsl_vector_ushort_const_view
    vector::gsl_vector_ushort
end
```

"""
mutable struct _gsl_vector_ushort_const_view
    vector::gsl_vector_ushort
end
const gsl_vector_ushort_const_view = _gsl_vector_ushort_const_view


#### gsl_version.h ############################################################

const GSL_MAJOR_VERSION = 2
const GSL_MINOR_VERSION = 5


#### gsl_wavelet.h ############################################################

const gsl_wavelet_forward = 1
const gsl_wavelet_backward = -1
const gsl_wavelet_direction = Cint

@doc md"""
```
mutable struct gsl_wavelet_type
    name::Ptr{Cchar}
    init::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_wavelet_type`

The centered forms of the wavelets align the coefficients of the various
sub-bands on edges. Thus the resulting visualization of the coefficients
of the wavelet transform in the phase plane is easier to understand.

"""
mutable struct gsl_wavelet_type
    name::Ptr{Cchar}
    init::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_wavelet
    type::Ptr{gsl_wavelet_type}
    h1::Ptr{Cdouble}
    g1::Ptr{Cdouble}
    h2::Ptr{Cdouble}
    g2::Ptr{Cdouble}
    nc::Csize_t
    offset::Csize_t
end
```
GSL documentation:

### `gsl_wavelet`

> This structure contains the filter coefficients defining the wavelet
> and any associated offset parameters.

"""
mutable struct gsl_wavelet
    type::Ptr{gsl_wavelet_type}
    h1::Ptr{Cdouble}
    g1::Ptr{Cdouble}
    h2::Ptr{Cdouble}
    g2::Ptr{Cdouble}
    nc::Csize_t
    offset::Csize_t
end

@doc md"""
```
mutable struct gsl_wavelet_workspace
    scratch::Ptr{Cdouble}
    n::Csize_t
end
```
GSL documentation:

### `gsl_wavelet_workspace`

> This structure contains scratch space of the same size as the input
> data and is used to hold intermediate results during the transform.

"""
mutable struct gsl_wavelet_workspace
    scratch::Ptr{Cdouble}
    n::Csize_t
end


#### gsl_wavelet2d.h ##########################################################


