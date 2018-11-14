#
# This code is auto generated from the GSL headers, do not edit!
#

const size_t = Csize_t


#### gsl_block_double.h #######################################################


@doc md"""
```
mutable struct gsl_block
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
`gsl_block.h`.

"""
mutable struct gsl_block
    size::Csize_t
    data::Ptr{Cdouble}
end


#### gsl_block_complex_double.h ###############################################


@doc md"""
```
mutable struct gsl_block_complex
    size::Csize_t
    data::Ptr{Cdouble}
end
```

"""
mutable struct gsl_block_complex
    size::Csize_t
    data::Ptr{Cdouble}
end


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

The `size` is simply the number of vector elements. The range of valid
indices runs from 0 to `size-1`. The `stride` is the step-size from one
element to the next in physical memory, measured in units of the
appropriate datatype. The pointer `data` gives the location of the first
element of the vector in memory. The pointer `block` stores the location
of the memory block in which the vector elements are located (if any).
If the vector owns this block then the `owner` field is set to one and
the block will be deallocated when the vector is freed. If the vector
points to a block owned by another object then the `owner` field is zero
and any underlying block will not be deallocated with the vector.

The functions for allocating and accessing vectors are defined in
`gsl_vector.h`.

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
> `gsl_vector_view` and a constant vector view has the type
> `gsl_vector_const_view`. In both cases the elements of the view can be
> accessed as a `gsl_vector` using the `vector` component of the view
> object. A pointer to a vector of type `gsl_vector *` or
> `const gsl_vector *` can be obtained by taking the address of this
> component with the `&` operator.
>
> When using this pointer it is important to ensure that the view itself
> remains in scope---the simplest way to do so is by always writing the
> pointer as `&view.vector`, and never storing this value in another
> variable.

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

> The `gsl_matrix` structure contains six components, the two dimensions
> of the matrix, a physical dimension, a pointer to the memory where the
> elements of the matrix are stored, `data`, a pointer to the block
> owned by the matrix `block`, if any, and an ownership flag, `owner`.
> The physical dimension determines the memory layout and can differ
> from the matrix dimension to allow the use of submatrices. The
> `gsl_matrix` structure is very simple and looks like this:
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
stores arrays in column-major order. The number of rows is `size1`. The
range of valid row indices runs from 0 to `size1 - 1`. Similarly `size2`
is the number of columns. The range of valid column indices runs from 0
to `size2 - 1`. The physical row dimension `tda`, or *trailing
dimension*, specifies the size of a row of the matrix as laid out in
memory.

For example, in the following matrix `size1` is 3, `size2` is 4, and
`tda` is 8. The physical memory layout of the matrix begins in the top
left hand-corner and proceeds from left to right along each row in turn.

    00 01 02 03 XX XX XX XX
    10 11 12 13 XX XX XX XX
    20 21 22 23 XX XX XX XX

Each unused memory location is represented by "`XX`". The pointer `data`
gives the location of the first element of the matrix in memory. The
pointer `block` stores the location of the memory block in which the
elements of the matrix are located (if any). If the matrix owns this
block then the `owner` field is set to one and the block will be
deallocated when the matrix is freed. If the matrix is only a slice of a
block owned by another object then the `owner` field is zero and any
underlying block will not be freed.

The functions for allocating and accessing matrices are defined in
`gsl_matrix.h`.

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
> `gsl_matrix_view` and a constant matrix view has the type
> `gsl_matrix_const_view`. In both cases the elements of the view can by
> accessed using the `matrix` component of the view object. A pointer
> `gsl_matrix *` or `const gsl_matrix *` can be obtained by taking the
> address of the `matrix` component with the `&` operator. In addition
> to matrix views it is also possible to create vector views of a
> matrix, such as row or column views.

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
mutable struct gsl_function
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_function`

> This data type defines a general function with parameters.
>
> `double (* function) (double x, void * params)`
>
> > this function should return the value $f(x,params)$ for argument `x`
> > and parameters `params`
>
> `void * params`
>
> > a pointer to the parameters of the function

Here is an example for the general quadratic function,

$$f(x) = a x^2 + b x + c$$

with $a = 3$, $b = 2$, $c = 1$. The following code defines a
`gsl_function` `F` which you could pass to a root finder as a function
pointer:

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

The function $f(x)$ can be evaluated using the macro `GSL_FN_EVAL(&F,x)`
defined in `gsl_math.h`.

"""
mutable struct gsl_function
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_function_fdf
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
> `double (* f) (double x, void * params)`
>
> > this function should return the value of $f(x,params)$ for argument
> > `x` and parameters `params`
>
> `double (* df) (double x, void * params)`
>
> > this function should return the value of the derivative of `f` with
> > respect to `x`, $f'(x,params)$, for argument `x` and parameters
> > `params`
>
> `void (* fdf) (double x, void * params, double * f, double * df)`
>
> > this function should set the values of the function `f` to
> > $f(x,params)$ and its derivative `df` to $f'(x,params)$ for argument
> > `x` and parameters `params`. This function provides an optimization
> > of the separate functions for $f(x)$ and $f'(x)$---it is always
> > faster to compute the function and its derivative at the same time.
>
> `void * params`
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
`GSL_FN_FDF_EVAL_F(&FDF,x)` and the derivative $f'(x)$ can be evaluated
using the macro `GSL_FN_FDF_EVAL_DF(&FDF,x)`. Both the function
$y = f(x)$ and its derivative $dy = f'(x)$ can be evaluated at the same
time using the macro `GSL_FN_FDF_EVAL_F_DF(&FDF,x,y,dy)`. The macro
stores $f(x)$ in its `y` argument and $f'(x)$ in its `dy`
argument---both of these should be pointers to `double`.

"""
mutable struct gsl_function_fdf
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    params::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_function_vec
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end
```

"""
mutable struct gsl_function_vec
    function_::Ptr{Cvoid}
    params::Ptr{Cvoid}
end


#### gsl_movstat.h ############################################################

const GSL_MOVSTAT_END_PADZERO = 0
const GSL_MOVSTAT_END_PADVALUE = 1
const GSL_MOVSTAT_END_TRUNCATE = 2

@doc md"""
`gsl_movstat_end_t`

> This data type specifies how to construct windows near end points and
> can be selected from the following choices:
>
> GSL\_MOVSTAT\_END\_PADZERO
>
> With this option, a full window of length $K$ will be constructed by
> inserting zeros into the window near the signal end points.
> Effectively, the input signal is modified to
>
> not texinfo
>
> $$\tilde{x} = \{ \underbrace{0, \dots, 0}_{H \textrm{ zeros}}, x_1, x_2, \dots, x_{n-1}, x_n, \underbrace{0, \dots, 0}_{J \textrm{ zeros} } \}$$
>
> texinfo
>
>     x~ = {0, ..., 0, x_1, x_2, ..., x_{n-1}, x_n, 0, ..., 0}
>
> to ensure a well-defined window for all $x_i$.
>
> GSL\_MOVSTAT\_END\_PADVALUE
>
> With this option, a full window of length $K$ will be constructed by
> padding the window with the first and last sample in the input signal.
> Effectively, the input signal is modified to
>
> not texinfo
>
> $$\tilde{x} = \{ \underbrace{x_1, \dots, x_1}_{H}, x_1, x_2, \dots, x_{n-1}, x_n, \underbrace{x_n, \dots, x_n}_{J} \}$$
>
> texinfo
>
>     x~ = {x_1, ..., x_1, x_1, x_2, ..., x_{n-1}, x_n, x_n, ..., x_n}
>
> GSL\_MOVSTAT\_END\_TRUNCATE
>
> With this option, no padding is performed, and the windows are simply
> truncated as the end points are approached.

"""
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
>
> size\_t (\* size) (const size\_t n)
>
> This function returns the size of the workspace (in bytes) needed by
> the accumulator for a moving window of length `n`.
>
> int (\* init) (const size\_t n, void \* vstate)
>
> This function initializes the workspace `vstate` for a moving window
> of length `n`.
>
> int (\* insert) (const double x, void \* vstate)
>
> This function inserts a single sample `x` into the accumulator,
> updating internal calculations of the desired statistic. If the
> accumulator is full (i.e. $n$ samples have already been inserted),
> then the oldest sample is deleted from the accumulator.
>
> int (\* delete) (void \* vstate)
>
> This function deletes the oldest sample from the accumulator, updating
> internal calculations of the desired statistic.
>
> int (\* get) (void \* params, double \* result, const void \* vstate)
>
> This function stores the desired statistic for the current window in
> `result`. The input `params` specifies optional parameters for
> calculating the statistic.

The following accumulators of type `gsl_movstat_accum` are defined by
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
>
> double (\* function) (const size\_t n, double x\[\], void \* params)
>
> This function returns the user-defined statistic of the array `x` of
> length `n`. User-specified parameters are passed in via `params`. It
> is allowed to modify the array `x`.
>
> void \* params
>
> User-specified parameters to be passed into the function.

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
mutable struct gsl_block_char
    size::Csize_t
    data::Ptr{Cchar}
end
```

"""
mutable struct gsl_block_char
    size::Csize_t
    data::Ptr{Cchar}
end


#### gsl_block_complex_float.h ################################################


@doc md"""
```
mutable struct gsl_block_complex_float
    size::Csize_t
    data::Ptr{Cfloat}
end
```

"""
mutable struct gsl_block_complex_float
    size::Csize_t
    data::Ptr{Cfloat}
end


#### gsl_block_complex_long_double.h ##########################################


@doc md"""
```
mutable struct gsl_block_complex_long_double
    size::Csize_t
    data::Ptr{Cdouble}
end
```

"""
mutable struct gsl_block_complex_long_double
    size::Csize_t
    data::Ptr{Cdouble}
end


#### gsl_block_float.h ########################################################


@doc md"""
```
mutable struct gsl_block_float
    size::Csize_t
    data::Ptr{Cfloat}
end
```

"""
mutable struct gsl_block_float
    size::Csize_t
    data::Ptr{Cfloat}
end


#### gsl_block_int.h ##########################################################


@doc md"""
```
mutable struct gsl_block_int
    size::Csize_t
    data::Ptr{Cint}
end
```

"""
mutable struct gsl_block_int
    size::Csize_t
    data::Ptr{Cint}
end


#### gsl_block_long.h #########################################################


@doc md"""
```
mutable struct gsl_block_long
    size::Csize_t
    data::Ptr{Clong}
end
```

"""
mutable struct gsl_block_long
    size::Csize_t
    data::Ptr{Clong}
end


#### gsl_block_long_double.h ##################################################


@doc md"""
```
mutable struct gsl_block_long_double
    size::Csize_t
    data::Ptr{Cdouble}
end
```

"""
mutable struct gsl_block_long_double
    size::Csize_t
    data::Ptr{Cdouble}
end


#### gsl_block_short.h ########################################################


@doc md"""
```
mutable struct gsl_block_short
    size::Csize_t
    data::Ptr{Cshort}
end
```

"""
mutable struct gsl_block_short
    size::Csize_t
    data::Ptr{Cshort}
end


#### gsl_block_uchar.h ########################################################


@doc md"""
```
mutable struct gsl_block_uchar
    size::Csize_t
    data::Ptr{Cuchar}
end
```

"""
mutable struct gsl_block_uchar
    size::Csize_t
    data::Ptr{Cuchar}
end


#### gsl_block_uint.h #########################################################


@doc md"""
```
mutable struct gsl_block_uint
    size::Csize_t
    data::Ptr{Cuint}
end
```

"""
mutable struct gsl_block_uint
    size::Csize_t
    data::Ptr{Cuint}
end


#### gsl_block_ulong.h ########################################################


@doc md"""
```
mutable struct gsl_block_ulong
    size::Csize_t
    data::Ptr{Culong}
end
```

"""
mutable struct gsl_block_ulong
    size::Csize_t
    data::Ptr{Culong}
end


#### gsl_block_ushort.h #######################################################


@doc md"""
```
mutable struct gsl_block_ushort
    size::Csize_t
    data::Ptr{Cushort}
end
```

"""
mutable struct gsl_block_ushort
    size::Csize_t
    data::Ptr{Cushort}
end


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
mutable struct gsl_cheb_series
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

The approximation is made over the range $[a,b]$ using `order` + 1
terms, including the coefficient $c[0]$. The series is computed using
the following convention,

"""
mutable struct gsl_cheb_series
    c::Ptr{Cdouble}
    order::Csize_t
    a::Cdouble
    b::Cdouble
    order_sp::Csize_t
    f::Ptr{Cdouble}
end


#### gsl_check_range.h ########################################################



#### gsl_combination.h ########################################################


@doc md"""
```
mutable struct gsl_combination
    n::Csize_t
    k::Csize_t
    data::Ptr{Csize_t}
end
```
GSL documentation:

### `gsl_combination`

> A combination is defined by a structure containing three components,
> the values of $n$ and $k$, and a pointer to the combination array. The
> elements of the combination array are all of type `size_t`, and are
> stored in increasing order. The `gsl_combination` structure looks like
> this:
>
>     typedef struct
>     {
>       size_t n;
>       size_t k;
>       size_t *data;
>     } gsl_combination;

"""
mutable struct gsl_combination
    n::Csize_t
    k::Csize_t
    data::Ptr{Csize_t}
end


#### gsl_complex_math.h #######################################################



#### gsl_const.h ##############################################################



#### gsl_const_cgs.h ##########################################################



#### gsl_const_cgsm.h #########################################################



#### gsl_const_mks.h ##########################################################



#### gsl_const_mksa.h #########################################################



#### gsl_const_num.h ##########################################################



#### gsl_deriv.h ##############################################################



#### gsl_dft_complex.h ########################################################



#### gsl_dft_complex_float.h ##################################################



#### gsl_dht.h ################################################################


@doc md"""
```
mutable struct gsl_dht
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
mutable struct gsl_dht
    size::Csize_t
    nu::Cdouble
    xmax::Cdouble
    kmax::Cdouble
    j::Ptr{Cdouble}
    Jjj::Ptr{Cdouble}
    J2::Ptr{Cdouble}
end


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
> <table>
> <tbody>
> <tr class="odd">
> <td><code class="sourceCode">size_t n</code></td>
> <td>This is the number of complex data points</td>
> </tr>
> <tr class="even">
> <td><code class="sourceCode">size_t nf</code></td>
> <td>This is the number of factors that the length <code class="sourceCode">n</code> was decomposed into.</td>
> </tr>
> <tr class="odd">
> <td><code class="sourceCode">size_t factor[64]</code></td>
> <td>This is the array of factors. Only the first <code class="sourceCode">nf</code> elements are used.</td>
> </tr>
> <tr class="even">
> <td><code class="sourceCode">gsl_complex * trig</code></td>
> <td>This is a pointer to a preallocated trigonometric lookup table of <code class="sourceCode">n</code> complex elements.</td>
> </tr>
> <tr class="odd">
> <td><code class="sourceCode">gsl_complex * twiddle[64]</code></td>
> <td>This is an array of pointers into <code class="sourceCode">trig</code>, giving the twiddle factors for each pass.</td>
> </tr>
> </tbody>
> </table>

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

@doc md"""
`gsl_filter_end_t`

> This data type specifies how to construct windows near end points and
> can be selected from the following choices:
>
> GSL\_FILTER\_END\_PADZERO
>
> With this option, a full window of length $K$ will be constructed by
> inserting zeros into the window near the signal end points.
> Effectively, the input signal is modified to
>
> not texinfo
>
> $$\tilde{x} = \{ \underbrace{0, \dots, 0}_{H \textrm{ zeros}}, x_1, x_2, \dots, x_{n-1}, x_n, \underbrace{0, \dots, 0}_{H \textrm{ zeros} } \}$$
>
> texinfo
>
>     x~ = { 0, ..., 0, x_1, x_2, ..., x_{n-1}, x_n, 0, ..., 0 }
>
> to ensure a well-defined window for all $x_i$.
>
> GSL\_FILTER\_END\_PADVALUE
>
> With this option, a full window of length $K$ will be constructed by
> padding the window with the first and last sample in the input signal.
> Effectively, the input signal is modified to
>
> not texinfo
>
> $$\tilde{x} = \{ \underbrace{x_1, \dots, x_1}_{H}, x_1, x_2, \dots, x_{n-1}, x_n, \underbrace{x_n, \dots, x_n}_{H} \}$$
>
> texinfo
>
>     x~ = { x_1, ..., x_1, x_1, x_2, ..., x_{n-1}, x_n, x_n, ..., x_n }
>
> GSL\_FILTER\_END\_TRUNCATE
>
> With this option, no padding is performed, and the windows are simply
> truncated as the end points are approached.

"""
const gsl_filter_end_t = Cint
const GSL_FILTER_SCALE_MAD = 0
const GSL_FILTER_SCALE_IQR = 1
const GSL_FILTER_SCALE_SN = 2
const GSL_FILTER_SCALE_QN = 3

@doc md"""
`gsl_filter_scale_t`

> This type specifies how the scale estimate $S_i$ of the window $W_i^H$
> is calculated.
>
> GSL\_FILTER\_SCALE\_MAD
>
> This option specifies the median absolute deviation (MAD) scale
> estimate, defined by
>
> not texinfo
>
> $$S_i = 1.4826 \times \textrm{median} \left\{ | W_i^H - m_i | \right\}$$
>
> texinfo
>
>     S_i = 1.4826 median { | W_i^H - m_i | }
>
> This choice of scale estimate is also known as the *Hampel filter* in
> the statistical literature. See `here <sec_mad-statistic>` for more
> information.
>
> GSL\_FILTER\_SCALE\_IQR
>
> This option specifies the interquartile range (IQR) scale estimate,
> defined as the difference between the 75th and 25th percentiles of the
> window $W_i^H$,
>
> not texinfo
>
> $$S_i = 0.7413 \left( Q_{0.75} - Q_{0.25} \right)$$
>
> texinfo
>
>     S_i = 0.7413 ( Q_{0.75} - Q_{0.25} )
>
> where $Q_p$ is the p-quantile of the window $W_i^H$. The idea is to
> throw away the largest and smallest 25% of the window samples (where
> the outliers would be), and estimate a scale from the middle 50%. The
> factor $0.7413$ provides an unbiased estimate of the standard
> deviation for Gaussian data.
>
> GSL\_FILTER\_SCALE\_SN
>
> This option specifies the so-called $S_n$ statistic proposed by Croux
> and Rousseeuw. See `here <sec_Sn-statistic>` for more information.
>
> GSL\_FILTER\_SCALE\_QN
>
> This option specifies the so-called $Q_n$ statistic proposed by Croux
> and Rousseeuw. See `here <sec_Qn-statistic>` for more information.

"""
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

> <table>
> <tbody>
> <tr class="odd">
> <td>size_t n</td>
> <td>This is the number of histogram bins</td>
> </tr>
> <tr class="even">
> <td><p>double * range</p></td>
> <td><p>The ranges of the bins are stored in an array of <code class="sourceCode">n+1</code> elements pointed to by range.</p></td>
> </tr>
> <tr class="odd">
> <td><p>double * bin</p></td>
> <td><p>The counts for each bin are stored in an array of <code class="interpreted-text" data-role="data">n</code> elements pointed to by <code class="interpreted-text" data-role="data">bin</code>. The bins are floating-point numbers, so you can increment them by non-integer values if necessary.</p></td>
> </tr>
> </tbody>
> </table>
>
> The range for `bin[i]` is given by `range[i]` to `range[i+1]`. For $n$
> bins there are `n+1` entries in the array `range`. Each bin is
> inclusive at the lower end and exclusive at the upper end.
> Mathematically this means that the bins are defined by the following
> inequality,
>
> not texinfo
>
> $$\hbox{bin[i] corresponds to range[i]} \le x < \hbox{range[i+1]}$$
>
> texinfo
>
>     bin[i] corresponds to range[i] <= x < range[i+1]
>
> Here is a diagram of the correspondence between ranges and bins on the
> number-line for $x$:
>
>     [ bin[0] )[ bin[1] )[ bin[2] )[ bin[3] )[ bin[4] )
>
> > ------------------------ x  
> > r\[0\] r\[1\] r\[2\] r\[3\] r\[4\] r\[5\]
>
> In this picture the values of the `range` array are denoted by $r$. On
> the left-hand side of each bin the square bracket `[` denotes an
> inclusive lower bound ($r \le x$), and the round parentheses `)` on
> the right-hand side denote an exclusive upper bound ($x < r$). Thus
> any samples which fall on the upper end of the histogram are excluded.
> If you want to include this value for the last bin you will need to
> add an extra bin to your histogram.
>
> The `gsl_histogram` struct and its associated functions are defined in
> the header file `gsl_histogram.h`.

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

> <table>
> <tbody>
> <tr class="odd">
> <td><p><code class="sourceCode">size_t n</code></p></td>
> <td><p>This is the number of bins used to approximate the probability distribution function.</p></td>
> </tr>
> <tr class="even">
> <td><p><code class="sourceCode">double * range</code></p></td>
> <td><p>The ranges of the bins are stored in an array of <span class="math inline"><em>n</em> + 1</span> elements pointed to by <code class="interpreted-text" data-role="data">range</code>.</p></td>
> </tr>
> <tr class="odd">
> <td><p><code class="sourceCode">double * sum</code></p></td>
> <td><p>The cumulative probability for the bins is stored in an array of <code class="interpreted-text" data-role="data">n</code> elements pointed to by <code class="interpreted-text" data-role="data">sum</code>.</p></td>
> </tr>
> </tbody>
> </table>
>
The following functions allow you to create a `gsl_histogram_pdf` struct
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

> <table>
> <tbody>
> <tr class="odd">
> <td><code class="sourceCode">size_t nx, ny</code></td>
> <td>This is the number of histogram bins in the x and y directions.</td>
> </tr>
> <tr class="even">
> <td><p><code class="sourceCode">double * xrange</code></p></td>
> <td><p>The ranges of the bins in the x-direction are stored in an array of <code class="sourceCode">nx + 1</code> elements pointed to by <code class="interpreted-text" data-role="data">xrange</code>.</p></td>
> </tr>
> <tr class="odd">
> <td><p><code class="sourceCode">double * yrange</code></p></td>
> <td><p>The ranges of the bins in the y-direction are stored in an array of <code class="sourceCode">ny + 1</code> elements pointed to by <code class="interpreted-text" data-role="data">yrange</code>.</p></td>
> </tr>
> <tr class="even">
> <td><p><code class="sourceCode">double * bin</code></p></td>
> <td><p>The counts for each bin are stored in an array pointed to by <code class="interpreted-text" data-role="data">bin</code>. The bins are floating-point numbers, so you can increment them by non-integer values if necessary. The array <code class="interpreted-text" data-role="data">bin</code> stores the two dimensional array of bins in a single block of memory according to the mapping <code class="sourceCode">bin(i,j)</code> = <code class="sourceCode">bin[i * ny + j]</code>.</p></td>
> </tr>
> </tbody>
> </table>
>
The range for `bin(i,j)` is given by `xrange[i]` to `xrange[i+1]` in the
x-direction and `yrange[j]` to `yrange[j+1]` in the y-direction. Each
bin is inclusive at the lower end and exclusive at the upper end.
Mathematically this means that the bins are defined by the following
inequality,

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

> <table>
> <tbody>
> <tr class="odd">
> <td><p><code class="sourceCode">size_t nx, ny</code></p></td>
> <td><p>This is the number of histogram bins used to approximate the probability distribution function in the x and y directions.</p></td>
> </tr>
> <tr class="even">
> <td><p><code class="sourceCode">double * xrange</code></p></td>
> <td><p>The ranges of the bins in the x-direction are stored in an array of <code class="sourceCode">nx + 1</code> elements pointed to by <code class="interpreted-text" data-role="data">xrange</code>.</p></td>
> </tr>
> <tr class="odd">
> <td><p><code class="sourceCode">double * yrange</code></p></td>
> <td><p>The ranges of the bins in the y-direction are stored in an array of <code class="sourceCode">ny + 1</code> pointed to by <code class="interpreted-text" data-role="data">yrange</code>.</p></td>
> </tr>
> <tr class="even">
> <td><p><code class="sourceCode">double * sum</code></p></td>
> <td><p>The cumulative probability for the bins is stored in an array of <code class="interpreted-text" data-role="data">nx</code> * <code class="interpreted-text" data-role="data">ny</code> elements pointed to by <code class="interpreted-text" data-role="data">sum</code>.</p></td>
> </tr>
> </tbody>
> </table>
>
The following functions allow you to create a `gsl_histogram2d_pdf`
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

> linear interpolation
>
> gsl\_interp\_linear
>
> Linear interpolation. This interpolation method does not require any
> additional memory.
>
> polynomial interpolation
>
> gsl\_interp\_polynomial
>
> Polynomial interpolation. This method should only be used for
> interpolating small numbers of points because polynomial interpolation
> introduces large oscillations, even for well-behaved datasets. The
> number of terms in the interpolating polynomial is equal to the number
> of points.
>
> cubic splines
>
> gsl\_interp\_cspline
>
> Cubic spline with natural boundary conditions. The resulting curve is
> piecewise cubic on each interval, with matching first and second
> derivatives at the supplied data-points. The second derivative is
> chosen to be zero at the first point and last point.
>
> gsl\_interp\_cspline\_periodic
>
> Cubic spline with periodic boundary conditions. The resulting curve is
> piecewise cubic on each interval, with matching first and second
> derivatives at the supplied data-points. The derivatives at the first
> and last points are also matched. Note that the last point in the data
> must have the same y-value as the first point, otherwise the resulting
> periodic interpolation will have a discontinuity at the boundary.
>
> Akima splines
>
> gsl\_interp\_akima
>
> Non-rounded Akima spline with natural boundary conditions. This method
> uses the non-rounded corner algorithm of Wodicka.
>
> gsl\_interp\_akima\_periodic
>
> Non-rounded Akima spline with periodic boundary conditions. This
> method uses the non-rounded corner algorithm of Wodicka.
>
> gsl\_interp\_steffen
>
> Steffen's method guarantees the monotonicity of the interpolating
> function between the given data points. Therefore, minima and maxima
> can only occur exactly at the data points, and there can never be
> spurious oscillations between data points. The interpolated function
> is piecewise cubic in each interval. The resulting curve and its first
> derivative are guaranteed to be continuous, but the second derivative
> may be discontinuous.

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
>
> bilinear interpolation
>
> gsl\_interp2d\_bilinear
>
> Bilinear interpolation. This interpolation method does not require any
> additional memory.
>
> bicubic interpolation
>
> gsl\_interp2d\_bicubic
>
> Bicubic interpolation.

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

> single: golden section algorithm for finding minima single: minimum
> finding, golden section algorithm
>
> gsl\_min\_fminimizer\_goldensection
>
> The *golden section algorithm* is the simplest method of bracketing
> the minimum of a function. It is the slowest algorithm provided by the
> library, with linear convergence.
>
> On each iteration, the algorithm first compares the subintervals from
> the endpoints to the current minimum. The larger subinterval is
> divided in a golden section (using the famous ratio
> $(3-\sqrt 5)/2 \approx 0.3819660$ and the value of the function at
> this new point is calculated. The new value is used with the
> constraint $f(a') > f(x') < f(b')$ to a select new interval containing
> the minimum, by discarding the least useful point. This procedure can
> be continued indefinitely until the interval is sufficiently small.
> Choosing the golden section as the bisection ratio can be shown to
> provide the fastest convergence for this type of algorithm.
>
> single: Brent's method for finding minima single: minimum finding,
> Brent's method
>
> gsl\_min\_fminimizer\_brent
>
> The *Brent minimization algorithm* combines a parabolic interpolation
> with the golden section algorithm. This produces a fast algorithm
> which is still robust.
>
> The outline of the algorithm can be summarized as follows: on each
> iteration Brent's method approximates the function using an
> interpolating parabola through three existing points. The minimum of
> the parabola is taken as a guess for the minimum. If it lies within
> the bounds of the current interval then the interpolating point is
> accepted, and used to generate a smaller interval. If the
> interpolating point is not accepted then the algorithm falls back to
> an ordinary golden section step. The full details of Brent's method
> include some additional checks to improve convergence.
>
> safeguarded step-length algorithm
>
> gsl\_min\_fminimizer\_quad\_golden
>
> This is a variant of Brent's algorithm which uses the safeguarded
> step-length algorithm of Gill and Murray.

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
mutable struct gsl_monte_function
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
> <table>
> <tbody>
> <tr class="odd">
> <td><p><code class="sourceCode">double (* f) (double * x, size_t dim, void * params)</code></p></td>
> <td><p>this function should return the value <span class="math inline"><em>f</em>(<em>x</em>, <em>p</em><em>a</em><em>r</em><em>a</em><em>m</em><em>s</em>)</span> for the argument <code class="interpreted-text" data-role="data">x</code> and parameters <code class="interpreted-text" data-role="data">params</code>, where <code class="interpreted-text" data-role="data">x</code> is an array of size <code class="interpreted-text" data-role="data">dim</code> giving the coordinates of the point where the function is to be evaluated.</p></td>
> </tr>
> <tr class="even">
> <td><code class="sourceCode">size_t dim</code></td>
> <td>the number of dimensions for <code class="interpreted-text" data-role="data">x</code>.</td>
> </tr>
> <tr class="odd">
> <td><p><code class="sourceCode">void * params</code></p></td>
> <td><p>a pointer to the parameters of the function.</p></td>
> </tr>
> </tbody>
> </table>
>
Here is an example for a quadratic function in two dimensions,

$$f(x,y) = a x^2 + b x y + c y^2$$

with $a = 3$, $b = 2$, $c = 1$. The following code defines a
`gsl_monte_function` `F` which you could pass to an integrator:

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
mutable struct gsl_monte_function
    f::Ptr{Cvoid}
    dim::Csize_t
    params::Ptr{Cvoid}
end


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

> double estimate\_frac
>
> This parameter specifies the fraction of the currently available
> number of function calls which are allocated to estimating the
> variance at each recursive step. The default value is 0.1.
>
> size\_t min\_calls
>
> This parameter specifies the minimum number of function calls required
> for each estimate of the variance. If the number of function calls
> allocated to the estimate using `estimate_frac` falls below
> `min_calls` then `min_calls` are used instead. This ensures that each
> estimate maintains a reasonable level of accuracy. The default value
> of `min_calls` is `16 * dim`.
>
> size\_t min\_calls\_per\_bisection
>
> This parameter specifies the minimum number of function calls required
> to proceed with a bisection step. When a recursive step has fewer
> calls available than `min_calls_per_bisection` it performs a plain
> Monte Carlo estimate of the current sub-region and terminates its
> branch of the recursion. The default value of this parameter is
> `32 * min_calls`.
>
> double alpha
>
> This parameter controls how the estimated variances for the two
> sub-regions of a bisection are combined when allocating points. With
> recursive sampling the overall variance should scale better than
> $1/N$, since the values from the sub-regions will be obtained using a
> procedure which explicitly minimizes their variance. To accommodate
> this behavior the MISER algorithm allows the total variance to depend
> on a scaling parameter $\alpha$,
>
> not texinfo
>
> $$\Var(f) = {\sigma_a \over N_a^\alpha} + {\sigma_b \over N_b^\alpha}.$$
>
> texinfo
>
>     \Var(f) = {\sigma_a \over N_a^\alpha} + {\sigma_b \over N_b^\alpha}.
>
> The authors of the original paper describing MISER recommend the value
> $\alpha = 2$ as a good choice, obtained from numerical experiments,
> and this is used as the default value in this implementation.
>
> double dither
>
> This parameter introduces a random fractional variation of size
> `dither` into each bisection, which can be used to break the symmetry
> of integrands which are concentrated near the exact center of the
> hypercubic integration region. The default value of dither is zero, so
> no variation is introduced. If needed, a typical value of `dither` is
> 0.1.

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

> double alpha
>
> The parameter `alpha` controls the stiffness of the rebinning
> algorithm. It is typically set between one and two. A value of zero
> prevents rebinning of the grid. The default value is 1.5.
>
> size\_t iterations
>
> The number of iterations to perform for each call to the routine. The
> default value is 5 iterations.
>
> int stage
>
> Setting this determines the *stage* of the calculation. Normally,
> `stage = 0` which begins with a new uniform grid and empty weighted
> average. Calling VEGAS with `stage = 1` retains the grid from the
> previous run but discards the weighted average, so that one can "tune"
> the grid using a relatively small number of points and then do a large
> run with `stage = 1` on the optimized grid. Setting `stage = 2` keeps
> the grid and the weighted average from the previous run, but may
> increase (or decrease) the number of histogram bins in the grid
> depending on the number of calls available. Choosing `stage = 3`
> enters at the main loop, so that nothing is changed, and is equivalent
> to performing additional iterations in a previous call.
>
> int mode
>
> The possible choices are `GSL_VEGAS_MODE_IMPORTANCE`,
> `GSL_VEGAS_MODE_STRATIFIED`, `GSL_VEGAS_MODE_IMPORTANCE_ONLY`. This
> determines whether VEGAS will use importance sampling or stratified
> sampling, or whether it can pick on its own. In low dimensions VEGAS
> uses strict stratified sampling (more precisely, stratified sampling
> is chosen if there are fewer than 2 bins per box).
>
> int verbose FILE \* ostream
>
> These parameters set the level of information printed by VEGAS. All
> information is written to the stream `ostream`. The default setting of
> `verbose` is `-1`, which turns off all output. A `verbose` value of
> `0` prints summary information about the weighted average and final
> result, while a value of `1` also displays the grid coordinates. A
> value of `2` prints information from the rebinning procedure for each
> iteration.

The above fields and the `chisq` value can also be accessed directly in
the `gsl_monte_vegas_state` but such use is deprecated.

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
mutable struct gsl_multifit_function
    f::Ptr{Cvoid}
    n::Csize_t
    p::Csize_t
    params::Ptr{Cvoid}
end
```

"""
mutable struct gsl_multifit_function
    f::Ptr{Cvoid}
    n::Csize_t
    p::Csize_t
    params::Ptr{Cvoid}
end

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
mutable struct gsl_multifit_function_fdf
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
mutable struct gsl_multifit_function_fdf
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    n::Csize_t
    p::Csize_t
    params::Ptr{Cvoid}
    nevalf::Csize_t
    nevaldf::Csize_t
end

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

@doc md"""
`gsl_multifit_nlinear_fdtype`

> The parameter `fdtype` specifies whether to use forward or centered
> differences when approximating the Jacobian. This is only used when an
> analytic Jacobian is not provided to the solver. This parameter may be
> set to one of the following choices.
>
> GSL\_MULTIFIT\_NLINEAR\_FWDIFF
>
> This specifies a forward finite difference to approximate the Jacobian
> matrix. The Jacobian matrix will be calculated as
>
> not texinfo
>
> $$J_{ij} = {1 \over \Delta_j} \left( f_i(x + \Delta_j e_j) - f_i(x) \right)$$
>
> texinfo
>
>     J_ij = 1 / \Delta_j ( f_i(x + \Delta_j e_j) - f_i(x) )
>
> where $\Delta_j = h |x_j|$ and $e_j$ is the standard $j$-th Cartesian
> unit basis vector so that $x + \Delta_j e_j$ represents a small
> (forward) perturbation of the $j$-th parameter by an amount
> $\Delta_j$. The perturbation $\Delta_j$ is proportional to the current
> value $|x_j|$ which helps to calculate an accurate Jacobian when the
> various parameters have different scale sizes. The value of $h$ is
> specified by the `h_df` parameter. The accuracy of this method is
> $O(h)$, and evaluating this matrix requires an additional $p$ function
> evaluations.
>
> GSL\_MULTIFIT\_NLINEAR\_CTRDIFF
>
> This specifies a centered finite difference to approximate the
> Jacobian matrix. The Jacobian matrix will be calculated as
>
> not texinfo
>
> $$J_{ij} = {1 \over \Delta_j} \left( f_i(x + {1 \over 2} \Delta_j e_j) - f_i(x - {1 \over 2} \Delta_j e_j) \right)$$
>
> texinfo
>
>     J_ij = 1 / \Delta_j ( f_i(x + 1/2 \Delta_j e_j) - f_i(x - 1/2 \Delta_j e_j) )
>
> See above for a description of $\Delta_j$. The accuracy of this method
> is $O(h^2)$, but evaluating this matrix requires an additional $2p$
> function evaluations.

`double factor_up`

When a step is accepted, the trust region radius will be increased by
this factor. The default value is $3$.

`double factor_down`

When a step is rejected, the trust region radius will be decreased by
this factor. The default value is $2$.

`double avmax`

When using geodesic acceleration to solve a nonlinear least squares
problem, an important parameter to monitor is the ratio of the
acceleration term to the velocity term,

"""
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
> `int (* f) (const gsl_vector * x, void * params, gsl_vector * f)`
>
> > This function should store the $n$ components of the vector $f(x)$
> > in `f` for argument `x` and arbitrary parameters `params`, returning
> > an appropriate error code if the function cannot be computed.
>
> `int (* df) (const gsl_vector * x, void * params, gsl_matrix * J)`
>
> > This function should store the `n`-by-`p` matrix result
> >
> > not texinfo
> >
> > $$J_{ij} = \partial f_i(x) / \partial x_j$$
> >
> > texinfo
> >
> >     J_ij = d f_i(x) / d x_j
> >
> > in `J` for argument `x` and arbitrary parameters `params`, returning
> > an appropriate error code if the matrix cannot be computed. If an
> > analytic Jacobian is unavailable, or too expensive to compute, this
> > function pointer may be set to `NULL`, in which case the Jacobian
> > will be internally computed using finite difference approximations
> > of the function `f`.
>
> `int (* fvv) (const gsl_vector * x, const gsl_vector * v, void * params, gsl_vector * fvv)`
>
> > When geodesic acceleration is enabled, this function should store
> > the $n$ components of the vector
> > $f_{vv}(x) = \sum_{\alpha\beta} v_{\alpha} v_{\beta} {\partial \over \partial x_{\alpha}} {\partial \over \partial x_{\beta}} f(x)$,
> > representing second directional derivatives of the function to be
> > minimized, into the output `fvv`. The parameter vector is provided
> > in `x` and the velocity vector is provided in `v`, both of which
> > have $p$ components. The arbitrary parameters are given in `params`.
> > If analytic expressions for $f_{vv}(x)$ are unavailable or too
> > difficult to compute, this function pointer may be set to `NULL`, in
> > which case $f_{vv}(x)$ will be computed internally using a finite
> > difference approximation.
>
> `size_t n`
>
> > the number of functions, i.e. the number of components of the vector
> > `f`.
>
> `size_t p`
>
> > the number of independent variables, i.e. the number of components
> > of the vector `x`.
>
> `void * params`
>
> > a pointer to the arbitrary parameters of the function.
>
> `size_t nevalf`
>
> > This does not need to be set by the user. It counts the number of
> > function evaluations and is initialized by the `_init` function.
>
> `size_t nevaldf`
>
> > This does not need to be set by the user. It counts the number of
> > Jacobian evaluations and is initialized by the `_init` function.
>
> `size_t nevalfvv`
>
> > This does not need to be set by the user. It counts the number of
> > $f_{vv}(x)$ evaluations and is initialized by the `_init` function.

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

> The parameter `trs` determines the method used to solve the trust
> region subproblem, and may be selected from the following choices,
>
> gsl\_multifit\_nlinear\_trs\_lm gsl\_multilarge\_nlinear\_trs\_lm
>
> This selects the Levenberg-Marquardt algorithm.
>
> gsl\_multifit\_nlinear\_trs\_lmaccel
> gsl\_multilarge\_nlinear\_trs\_lmaccel
>
> This selects the Levenberg-Marquardt algorithm with geodesic
> acceleration.
>
> gsl\_multifit\_nlinear\_trs\_dogleg
> gsl\_multilarge\_nlinear\_trs\_dogleg
>
> This selects the dogleg algorithm.
>
> gsl\_multifit\_nlinear\_trs\_ddogleg
> gsl\_multilarge\_nlinear\_trs\_ddogleg
>
> This selects the double dogleg algorithm.
>
> gsl\_multifit\_nlinear\_trs\_subspace2D
> gsl\_multilarge\_nlinear\_trs\_subspace2D
>
> This selects the 2D subspace algorithm.
>
> gsl\_multilarge\_nlinear\_trs\_cgst
>
> This selects the Steihaug-Toint conjugate gradient algorithm. This
> method is available only for large systems.

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

> The parameter `scale` determines the diagonal scaling matrix $D$ and
> may be selected from the following choices,
>
> gsl\_multifit\_nlinear\_scale\_more
> gsl\_multilarge\_nlinear\_scale\_more
>
> This damping strategy was suggested by , and corresponds to
> $D^T D = \max(\diag(J^T J))$, in other words the maximum elements of
> $\diag(J^T J)$ encountered thus far in the iteration. This choice of
> $D$ makes the problem scale-invariant, so that if the model parameters
> $x_i$ are each scaled by an arbitrary constant,
> $\tilde{x}_i = a_i x_i$, then the sequence of iterates produced by the
> algorithm would be unchanged. This method can work very well in cases
> where the model parameters have widely different scales (ie: if some
> parameters are measured in nanometers, while others are measured in
> degrees Kelvin). This strategy has been proven effective on a large
> class of problems and so it is the library default, but it may not be
> the best choice for all problems.
>
> gsl\_multifit\_nlinear\_scale\_levenberg
> gsl\_multilarge\_nlinear\_scale\_levenberg
>
> This damping strategy was originally suggested by Levenberg, and
> corresponds to $D^T D = I$. This method has also proven effective on a
> large class of problems, but is not scale-invariant. However, some
> authors (e.g. Transtrum and Sethna 2012) argue that this choice is
> better for problems which are susceptible to parameter evaporation
> (ie: parameters go to infinity)
>
> gsl\_multifit\_nlinear\_scale\_marquardt
> gsl\_multilarge\_nlinear\_scale\_marquardt
>
> This damping strategy was suggested by Marquardt, and corresponds to
> $D^T D = \diag(J^T J)$. This method is scale-invariant, but it is
> generally considered inferior to both the Levenberg and strategies,
> though may work well on certain classes of problems.

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
> not texinfo
>
> $$\begin{aligned}
> \left[
>   \begin{array}{c}
>     J \\
>     \sqrt{\mu} D
>   \end{array}
> \right]
> \delta =
> -
> \left[
>   \begin{array}{c}
>     f \\
>     0
>   \end{array}
> \right]
> \end{aligned}$$
>
> texinfo
>
>     [J; sqrt(mu) D] \delta = - [f; 0]
>
> The `solver` parameter determines how the system is solved and can be
> selected from the following choices:
>
> gsl\_multifit\_nlinear\_solver\_qr
>
> This method solves the system using a rank revealing QR decomposition
> of the Jacobian $J$. This method will produce reliable solutions in
> cases where the Jacobian is rank deficient or near-singular but does
> require about twice as many operations as the Cholesky method
> discussed below.
>
> gsl\_multifit\_nlinear\_solver\_cholesky
> gsl\_multilarge\_nlinear\_solver\_cholesky
>
> This method solves the alternate normal equations problem
>
> not texinfo
>
> $$\left( J^T J + \mu D^T D \right) \delta = -J^T f$$
>
> texinfo
>
>     ( J^T J + \mu D^T D ) \delta = -J^T f
>
> by using a Cholesky decomposition of the matrix $J^T J + \mu D^T D$.
> This method is faster than the QR approach, however it is susceptible
> to numerical instabilities if the Jacobian matrix is rank deficient or
> near-singular. In these cases, an attempt is made to reduce the
> condition number of the matrix using Jacobi preconditioning, but for
> highly ill-conditioned problems the QR approach is better. If it is
> known that the Jacobian matrix is well conditioned, this method is
> accurate and will perform faster than the QR approach.
>
> gsl\_multifit\_nlinear\_solver\_svd
>
> This method solves the system using a singular value decomposition of
> the Jacobian $J$. This method will produce the most reliable solutions
> for ill-conditioned Jacobians but is also the slowest solver method.

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

For the `gsl_multilarge_nlinear` interface, the user may modify the
`gsl_multilarge_nlinear_parameters` structure, which is defined as
follows:

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
>
> gsl\_multifit\_nlinear\_trust
>
> This specifies a trust region method. It is currently the only
> implemented nonlinear least squares method.

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
> `int (* f) (const gsl_vector * x, void * params, gsl_vector * f)`
>
> > This function should store the $n$ components of the vector $f(x)$
> > in `f` for argument `x` and arbitrary parameters `params`, returning
> > an appropriate error code if the function cannot be computed.
>
> `int (* df) (CBLAS_TRANSPOSE_t TransJ, const gsl_vector * x, const gsl_vector * u, void * params, gsl_vector * v, gsl_matrix * JTJ)`
>
> > If `TransJ` is equal to `CblasNoTrans`, then this function should
> > compute the matrix-vector product $J u$ and store the result in `v`.
> > If `TransJ` is equal to `CblasTrans`, then this function should
> > compute the matrix-vector product $J^T u$ and store the result in
> > `v`. Additionally, the normal equations matrix $J^T J$ should be
> > stored in the lower half of `JTJ`. The input matrix `JTJ` could be
> > set to `NULL`, for example by iterative methods which do not require
> > this matrix, so the user should check for this prior to constructing
> > the matrix. The input `params` contains the arbitrary parameters.
>
> `int (* fvv) (const gsl_vector * x, const gsl_vector * v, void * params, gsl_vector * fvv)`
>
> > When geodesic acceleration is enabled, this function should store
> > the $n$ components of the vector
> > $f_{vv}(x) = \sum_{\alpha\beta} v_{\alpha} v_{\beta} {\partial \over \partial x_{\alpha}} {\partial \over \partial x_{\beta}} f(x)$,
> > representing second directional derivatives of the function to be
> > minimized, into the output `fvv`. The parameter vector is provided
> > in `x` and the velocity vector is provided in `v`, both of which
> > have $p$ components. The arbitrary parameters are given in `params`.
> > If analytic expressions for $f_{vv}(x)$ are unavailable or too
> > difficult to compute, this function pointer may be set to `NULL`, in
> > which case $f_{vv}(x)$ will be computed internally using a finite
> > difference approximation.
>
> `size_t n`
>
> > the number of functions, i.e. the number of components of the vector
> > `f`.
>
> `size_t p`
>
> > the number of independent variables, i.e. the number of components
> > of the vector `x`.
>
> `void * params`
>
> > a pointer to the arbitrary parameters of the function.
>
> `size_t nevalf`
>
> > This does not need to be set by the user. It counts the number of
> > function evaluations and is initialized by the `_init` function.
>
> `size_t nevaldfu`
>
> > This does not need to be set by the user. It counts the number of
> > Jacobian matrix-vector evaluations ($J u$ or $J^T u$) and is
> > initialized by the `_init` function.
>
> `size_t nevaldf2`
>
> > This does not need to be set by the user. It counts the number of
> > $J^T J$ evaluations and is initialized by the `_init` function.
>
> `size_t nevalfvv`
>
> > This does not need to be set by the user. It counts the number of
> > $f_{vv}(x)$ evaluations and is initialized by the `_init` function.

Note that when fitting a non-linear model against experimental data, the
data is passed to the functions above using the `params` argument and
the trial best-fit parameters through the `x` argument.

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
mutable struct gsl_multimin_function
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
> `double (* f) (const gsl_vector * x, void * params)`
>
> > this function should return the result $f(x,params)$ for argument
> > `x` and parameters `params`. If the function cannot be computed, an
> > error value of `GSL_NAN` should be returned.
>
> `size_t n`
>
> > the dimension of the system, i.e. the number of components of the
> > vectors `x`.
>
> `void * params`
>
> > a pointer to the parameters of the function.

"""
mutable struct gsl_multimin_function
    f::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_multimin_function_fdf
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
> `double (* f) (const gsl_vector * x, void * params)`
>
> > this function should return the result $f(x,params)$ for argument
> > `x` and parameters `params`. If the function cannot be computed, an
> > error value of `GSL_NAN` should be returned.
>
> `void (* df) (const gsl_vector * x, void * params, gsl_vector * g)`
>
> > this function should store the `n`-dimensional gradient
> >
> > not texinfo
> >
> > $$g_i = \partial f(x,\hbox{\it params}) / \partial x_i$$
> >
> > texinfo
> >
> >     g_i = d f(x,params) / d x_i
> >
> > in the vector `g` for argument `x` and parameters `params`,
> > returning an appropriate error code if the function cannot be
> > computed.
>
> `void (* fdf) (const gsl_vector * x, void * params, double * f, gsl_vector * g)`
>
> > This function should set the values of the `f` and `g` as above, for
> > arguments `x` and parameters `params`. This function provides an
> > optimization of the separate functions for $f(x)$ and $g(x)$---it is
> > always faster to compute the function and its derivative at the same
> > time.
>
> `size_t n`
>
> > the dimension of the system, i.e. the number of components of the
> > vectors `x`.
>
> `void * params`
>
> > a pointer to the parameters of the function.

"""
mutable struct gsl_multimin_function_fdf
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end

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
>
> single: Nelder-Mead simplex algorithm for minimization single: simplex
> algorithm, minimization single: minimization, simplex algorithm
>
> gsl\_multimin\_fminimizer\_nmsimplex2
> gsl\_multimin\_fminimizer\_nmsimplex
>
> These methods use the Simplex algorithm of Nelder and Mead. Starting
> from the initial vector $x = p_0$, the algorithm constructs an
> additional $n$ vectors $p_i$ using the step size vector
> $s = step\_size$ as follows:
>
> not texinfo
>
> $$\begin{aligned}
> p_0 & = (x_0, x_1, \cdots , x_n) \\
> p_1 & = (x_0 + s_0, x_1, \cdots , x_n) \\
> p_2 & = (x_0, x_1 + s_1, \cdots , x_n) \\
> \dots &= \dots \\
> p_n & = (x_0, x_1, \cdots , x_n + s_n)
> \end{aligned}$$
>
> texinfo
>
>     p_0 = (x_0, x_1, ... , x_n) 
>     p_1 = (x_0 + s_0, x_1, ... , x_n) 
>     p_2 = (x_0, x_1 + s_1, ... , x_n) 
>     ... = ...
>     p_n = (x_0, x_1, ... , x_n + s_n)
>
> These vectors form the $n+1$ vertices of a simplex in $n$ dimensions.
> On each iteration the algorithm uses simple geometrical
> transformations to update the vector corresponding to the highest
> function value. The geometric transformations are reflection,
> reflection followed by expansion, contraction and multiple
> contraction. Using these transformations the simplex moves through the
> space towards the minimum, where it contracts itself.
>
> After each iteration, the best vertex is returned. Note, that due to
> the nature of the algorithm not every step improves the current best
> parameter vector. Usually several iterations are required.
>
> The minimizer-specific characteristic size is calculated as the
> average distance from the geometrical center of the simplex to all its
> vertices. This size can be used as a stopping criteria, as the simplex
> contracts itself near the minimum. The size is returned by the
> function `gsl_multimin_fminimizer_size`.
>
> The `gsl_multimin_fminimizer_nmsimplex2` version of this minimiser is
> a new $O(N)$ operations implementation of the earlier $O(N^2)$
> operations `gsl_multimin_fminimizer_nmsimplex` minimiser. It uses the
> same underlying algorithm, but the simplex updates are computed more
> efficiently for high-dimensional problems. In addition, the size of
> simplex is calculated as the RMS distance of each vertex from the
> center rather than the mean distance, allowing a linear update of this
> quantity on each step. The memory usage is $O(N^2)$ for both
> algorithms.
>
> gsl\_multimin\_fminimizer\_nmsimplex2rand
>
> This method is a variant of `gsl_multimin_fminimizer_nmsimplex2` which
> initialises the simplex around the starting point `x` using a
> randomly-oriented set of basis vectors instead of the fixed coordinate
> axes. The final dimensions of the simplex are scaled along the
> coordinate axes by the vector `step_size`. The randomisation uses a
> simple deterministic generator so that repeated calls to
> `gsl_multimin_fminimizer_set` for a given solver object will vary the
> orientation in a well-defined way.

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
>
> single: Fletcher-Reeves conjugate gradient algorithm, minimization
> single: Conjugate gradient algorithm, minimization single:
> minimization, conjugate gradient algorithm
>
> gsl\_multimin\_fdfminimizer\_conjugate\_fr
>
> This is the Fletcher-Reeves conjugate gradient algorithm. The
> conjugate gradient algorithm proceeds as a succession of line
> minimizations. The sequence of search directions is used to build up
> an approximation to the curvature of the function in the neighborhood
> of the minimum.
>
> An initial search direction `p` is chosen using the gradient, and line
> minimization is carried out in that direction. The accuracy of the
> line minimization is specified by the parameter `tol`. The minimum
> along this line occurs when the function gradient `g` and the search
> direction `p` are orthogonal. The line minimization terminates when
> $p\cdot g < tol |p| |g|$. The search direction is updated using the
> Fletcher-Reeves formula $p' = g' - \beta g$ where
> $\beta=-|g'|^2/|g|^2$, and the line minimization is then repeated for
> the new search direction.
>
> single: Polak-Ribiere algorithm, minimization single: minimization,
> Polak-Ribiere algorithm
>
> gsl\_multimin\_fdfminimizer\_conjugate\_pr
>
> This is the Polak-Ribiere conjugate gradient algorithm. It is similar
> to the Fletcher-Reeves method, differing only in the choice of the
> coefficient $\beta$. Both methods work well when the evaluation point
> is close enough to the minimum of the objective function that it is
> well approximated by a quadratic hypersurface.
>
> single: BFGS algorithm, minimization single: minimization, BFGS
> algorithm
>
> gsl\_multimin\_fdfminimizer\_vector\_bfgs2
> gsl\_multimin\_fdfminimizer\_vector\_bfgs
>
> These methods use the vector Broyden-Fletcher-Goldfarb-Shanno (BFGS)
> algorithm. This is a quasi-Newton method which builds up an
> approximation to the second derivatives of the function $f$ using the
> difference between successive gradient vectors. By combining the first
> and second derivatives the algorithm is able to take Newton-type steps
> towards the function minimum, assuming quadratic behavior in that
> region.
>
> The `bfgs2` version of this minimizer is the most efficient version
> available, and is a faithful implementation of the line minimization
> scheme described in Fletcher's \*Practical Methods of Optimization\*,
> Algorithms 2.6.2 and 2.6.4. It supersedes the original `bfgs` routine
> and requires substantially fewer function and gradient evaluations.
> The user-supplied tolerance `tol` corresponds to the parameter
> $\sigma$ used by Fletcher. A value of 0.1 is recommended for typical
> use (larger values correspond to less accurate line searches).
>
> single: steepest descent algorithm, minimization single: minimization,
> steepest descent algorithm
>
> gsl\_multimin\_fdfminimizer\_steepest\_descent
>
> The steepest descent algorithm follows the downhill gradient of the
> function at each step. When a downhill step is successful the
> step-size is increased by a factor of two. If the downhill step leads
> to a higher function value then the algorithm backtracks and the step
> size is decreased using the parameter `tol`. A suitable value of `tol`
> for most applications is 0.1. The steepest descent method is
> inefficient and is included only for demonstration purposes.

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
mutable struct gsl_multiroot_function
    f::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_multiroot_function`

> This data type defines a general system of functions with parameters.
>
> `int (* f) (const gsl_vector * x, void * params, gsl_vector * f)`
>
> > this function should store the vector result $f(x,params)$ in `f`
> > for argument `x` and parameters `params`, returning an appropriate
> > error code if the function cannot be computed.
>
> `size_t n`
>
> > the dimension of the system, i.e. the number of components of the
> > vectors `x` and `f`.
>
> `void * params`
>
> > a pointer to the parameters of the function.

Here is an example using Powell's test function,

"""
mutable struct gsl_multiroot_function
    f::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end

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
>
> single: HYBRIDS algorithm, scaled without derivatives
>
> gsl\_multiroot\_fsolver\_hybrids
>
> This is a version of the Hybrid algorithm which replaces calls to the
> Jacobian function by its finite difference approximation. The finite
> difference approximation is computed using `gsl_multiroots_fdjac` with
> a relative step size of `GSL_SQRT_DBL_EPSILON`. Note that this step
> size will not be suitable for all problems.
>
> single: HYBRID algorithm, unscaled without derivatives
>
> gsl\_multiroot\_fsolver\_hybrid
>
> This is a finite difference version of the Hybrid algorithm without
> internal scaling.
>
> single: Discrete Newton algorithm for multidimensional roots single:
> Newton algorithm, discrete
>
> gsl\_multiroot\_fsolver\_dnewton
>
> The *discrete Newton algorithm* is the simplest method of solving a
> multidimensional system. It uses the Newton iteration
>
> not texinfo
>
> $$x \to x - J^{-1} f(x)$$
>
> texinfo
>
>     x -> x - J^{-1} f(x)
>
> where the Jacobian matrix $J$ is approximated by taking finite
> differences of the function `f`. The approximation scheme used by this
> implementation is,
>
> $$J_{ij} = (f_i(x + \delta_j) - f_i(x)) /  \delta_j$$
>
> where $\delta_j$ is a step of size $\sqrt\epsilon |x_j|$ with
> $\epsilon$ being the machine precision
> ($\epsilon \approx 2.22 \times 10^{-16}$). The order of convergence of
> Newton's algorithm is quadratic, but the finite differences require
> $n^2$ function evaluations on each iteration. The algorithm may become
> unstable if the finite differences are not a good approximation to the
> true derivatives.
>
> single: Broyden algorithm for multidimensional roots single:
> multidimensional root finding, Broyden algorithm
>
> gsl\_multiroot\_fsolver\_broyden
>
> The *Broyden algorithm* is a version of the discrete Newton algorithm
> which attempts to avoids the expensive update of the Jacobian matrix
> on each iteration. The changes to the Jacobian are also approximated,
> using a rank-1 update,
>
> $$J^{-1} \to J^{-1} - (J^{-1} df - dx) dx^T J^{-1} / dx^T J^{-1} df$$
>
> where the vectors $dx$ and $df$ are the changes in $x$ and $f$. On the
> first iteration the inverse Jacobian is estimated using finite
> differences, as in the discrete Newton algorithm.
>
> This approximation gives a fast update but is unreliable if the
> changes are not small, and the estimate of the inverse Jacobian
> becomes worse as time passes. The algorithm has a tendency to become
> unstable unless it starts close to the root. The Jacobian is refreshed
> if this instability is detected (consult the source for details).
>
> This algorithm is included only for demonstration purposes, and is not
> recommended for serious use.

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
mutable struct gsl_multiroot_function_fdf
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
> `int (* f) (const gsl_vector * x, void * params, gsl_vector * f)`
>
> > this function should store the vector result $f(x,params)$ in `f`
> > for argument `x` and parameters `params`, returning an appropriate
> > error code if the function cannot be computed.
>
> `int (* df) (const gsl_vector * x, void * params, gsl_matrix * J)`
>
> > this function should store the `n`-by-`n` matrix result
> >
> > not texinfo
> >
> > $$J_{ij} = \partial f_i(x,\hbox{\it params}) / \partial x_j$$
> >
> > texinfo
> >
> >     J_ij = d f_i(x,params) / d x_j
> >
> > in `J` for argument `x` and parameters `params`, returning an
> > appropriate error code if the function cannot be computed.
>
> `int (* fdf) (const gsl_vector * x, void * params, gsl_vector * f, gsl_matrix * J)`
>
> > This function should set the values of the `f` and `J` as above, for
> > arguments `x` and parameters `params`. This function provides an
> > optimization of the separate functions for $f(x)$ and $J(x)$---it is
> > always faster to compute the function and its derivative at the same
> > time.
>
> `size_t n`
>
> > the dimension of the system, i.e. the number of components of the
> > vectors `x` and `f`.
>
> `void * params`
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

Note that the function `powell_fdf` is able to reuse existing terms from
the function when calculating the Jacobian, thus saving time.

"""
mutable struct gsl_multiroot_function_fdf
    f::Ptr{Cvoid}
    df::Ptr{Cvoid}
    fdf::Ptr{Cvoid}
    n::Csize_t
    params::Ptr{Cvoid}
end

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
>
> HYBRID algorithms for nonlinear systems
>
> single: HYBRIDSJ algorithm single: MINPACK, minimization algorithms
>
> gsl\_multiroot\_fdfsolver\_hybridsj
>
> This is a modified version of Powell's Hybrid method as implemented in
> the HYBRJ algorithm in . Minpack was written by Jorge J. , Burton S.
> Garbow and Kenneth E. Hillstrom. The Hybrid algorithm retains the fast
> convergence of Newton's method but will also reduce the residual when
> Newton's method is unreliable.
>
> The algorithm uses a generalized trust region to keep each step under
> control. In order to be accepted a proposed new position $x'$ must
> satisfy the condition $|D (x' - x)| < \delta$, where $D$ is a diagonal
> scaling matrix and $\delta$ is the size of the trust region. The
> components of $D$ are computed internally, using the column norms of
> the Jacobian to estimate the sensitivity of the residual to each
> component of $x$. This improves the behavior of the algorithm for
> badly scaled functions.
>
> On each iteration the algorithm first determines the standard Newton
> step by solving the system $J dx = - f$. If this step falls inside the
> trust region it is used as a trial step in the next stage. If not, the
> algorithm uses the linear combination of the Newton and gradient
> directions which is predicted to minimize the norm of the function
> while staying inside the trust region,
>
> $$dx = - \alpha J^{-1} f(x) - \beta \nabla |f(x)|^2$$
>
> This combination of Newton and gradient directions is referred to as a
> *dogleg step*.
>
> The proposed step is now tested by evaluating the function at the
> resulting point, $x'$. If the step reduces the norm of the function
> sufficiently then it is accepted and size of the trust region is
> increased. If the proposed step fails to improve the solution then the
> size of the trust region is decreased and another trial step is
> computed.
>
> The speed of the algorithm is increased by computing the changes to
> the Jacobian approximately, using a rank-1 update. If two successive
> attempts fail to reduce the residual then the full Jacobian is
> recomputed. The algorithm also monitors the progress of the solution
> and returns an error if several steps fail to make any improvement,
>
> `GSL_ENOPROG`
>
> > the iteration is not making any progress, preventing the algorithm
> > from continuing.
>
> `GSL_ENOPROGJ`
>
> > re-evaluations of the Jacobian indicate that the iteration is not
> > making any progress, preventing the algorithm from continuing.
>
> HYBRIDJ algorithm
>
> gsl\_multiroot\_fdfsolver\_hybridj
>
> This algorithm is an unscaled version of HYBRIDSJ. The steps are
> controlled by a spherical trust region $|x' - x| < \delta$, instead of
> a generalized region. This can be useful if the generalized region
> estimated by HYBRIDSJ is inappropriate.
>
> Newton's method for systems of nonlinear equations
>
> gsl\_multiroot\_fdfsolver\_newton
>
> Newton's Method is the standard root-polishing algorithm. The
> algorithm begins with an initial guess for the location of the
> solution. On each iteration a linear approximation to the function $F$
> is used to estimate the step which will zero all the components of the
> residual. The iteration is defined by the following sequence,
>
> not texinfo
>
> $$x \to x' = x - J^{-1} f(x)$$
>
> texinfo
>
>     x -> x' = x - J^{-1} f(x)
>
> where the Jacobian matrix $J$ is computed from the derivative
> functions provided by `f`. The step $dx$ is obtained by solving the
> linear system,
>
> $$J dx = - f(x)$$
>
> using LU decomposition. If the Jacobian matrix is singular, an error
> code of `GSL_EDOM` is returned.
>
> single: Modified Newton's method for nonlinear systems single: Newton
> algorithm, globally convergent
>
> gsl\_multiroot\_fdfsolver\_gnewton
>
> This is a modified version of Newton's method which attempts to
> improve global convergence by requiring every step to reduce the
> Euclidean norm of the residual, $|f(x)|$. If the Newton step leads to
> an increase in the norm then a reduced step of relative size,
>
> $$t = (\sqrt{1 + 6 r} - 1) / (3 r)$$
>
> is proposed, with $r$ being the ratio of norms $|f(x')|^2/|f(x)|^2$.
> This procedure is repeated until a suitable step size is found.

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
mutable struct gsl_multiset
    n::Csize_t
    k::Csize_t
    data::Ptr{Csize_t}
end
```
GSL documentation:

### `gsl_multiset`

> A multiset is defined by a structure containing three components, the
> values of $n$ and $k$, and a pointer to the multiset array. The
> elements of the multiset array are all of type `size_t`, and are
> stored in increasing order. The `gsl_multiset` structure looks like
> this:
>
>     typedef struct
>     {
>       size_t n;
>       size_t k;
>       size_t *data;
>     } gsl_multiset;

"""
mutable struct gsl_multiset
    n::Csize_t
    k::Csize_t
    data::Ptr{Csize_t}
end


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

> Ntuples are manipulated using the `gsl_ntuple` struct. This struct
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
> The struct component `function` should return a non-zero value for
> each ntuple row that is to be included in the histogram.

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
> In this case the struct component `function` should return the value
> to be added to the histogram for the ntuple row.

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
> `int (* function) (double t, const double y[], double dydt[], void * params)`
>
> > This function should store the vector elements $f_i(t,y,params)$ in
> > the array `dydt`, for arguments (`t`, `y`) and parameters `params`.
> >
> > The function should return `GSL_SUCCESS` if the calculation was
> > completed successfully. Any other return value indicates an error. A
> > special return value `GSL_EBADFUNC` causes `gsl_odeiv2` routines to
> > immediately stop and return. If `function` is modified (for example
> > contents of `params`), the user must call an appropriate reset
> > function (`gsl_odeiv2_driver_reset`, `gsl_odeiv2_evolve_reset` or
> > `gsl_odeiv2_step_reset`) before continuing. Use return values
> > distinct from standard GSL error codes to distinguish your function
> > as the source of the error.
>
> single: Jacobian matrix, ODEs
>
> `int (* jacobian) (double t, const double y[], double * dfdy, double dfdt[], void * params)`
>
> > This function should store the vector of derivative elements
> >
> > not texinfo
> >
> > $$\partial f_i(t,y,params) / \partial t$$

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

> single: RK2, Runge-Kutta method single: Runge-Kutta methods, ordinary
> differential equations
>
> gsl\_odeiv2\_step\_rk2
>
> Explicit embedded Runge-Kutta (2, 3) method.
>
> single: RK4, Runge-Kutta method
>
> gsl\_odeiv2\_step\_rk4
>
> Explicit 4th order (classical) Runge-Kutta. Error estimation is
> carried out by the step doubling method. For more efficient estimate
> of the error, use the embedded methods described below.
>
> single: Fehlberg method, differential equations single: RKF45,
> Runge-Kutta-Fehlberg method
>
> gsl\_odeiv2\_step\_rkf45
>
> Explicit embedded Runge-Kutta-Fehlberg (4, 5) method. This method is a
> good general-purpose integrator.
>
> single: Runge-Kutta Cash-Karp method single: Cash-Karp, Runge-Kutta
> method
>
> gsl\_odeiv2\_step\_rkck
>
> Explicit embedded Runge-Kutta Cash-Karp (4, 5) method.
>
> single: Runge-Kutta Prince-Dormand method single: Prince-Dormand,
> Runge-Kutta method
>
> gsl\_odeiv2\_step\_rk8pd
>
> Explicit embedded Runge-Kutta Prince-Dormand (8, 9) method.
>
> Implicit Euler method
>
> gsl\_odeiv2\_step\_rk1imp
>
> Implicit Gaussian first order Runge-Kutta. Also known as implicit
> Euler or backward Euler method. Error estimation is carried out by the
> step doubling method. This algorithm requires the Jacobian and access
> to the driver object via `gsl_odeiv2_step_set_driver`.
>
> Implicit Runge-Kutta method
>
> gsl\_odeiv2\_step\_rk2imp
>
> Implicit Gaussian second order Runge-Kutta. Also known as implicit
> mid-point rule. Error estimation is carried out by the step doubling
> method. This stepper requires the Jacobian and access to the driver
> object via `gsl_odeiv2_step_set_driver`.
>
> gsl\_odeiv2\_step\_rk4imp
>
> Implicit Gaussian 4th order Runge-Kutta. Error estimation is carried
> out by the step doubling method. This algorithm requires the Jacobian
> and access to the driver object via `gsl_odeiv2_step_set_driver`.
>
> single: Bulirsch-Stoer method single: Bader and Deuflhard,
> Bulirsch-Stoer method. single: Deuflhard and Bader, Bulirsch-Stoer
> method.
>
> gsl\_odeiv2\_step\_bsimp
>
> Implicit Bulirsch-Stoer method of Bader and Deuflhard. The method is
> generally suitable for stiff problems. This stepper requires the
> Jacobian.
>
> single: Adams method single: multistep methods, ODEs single:
> predictor-corrector method, ODEs single: Nordsieck form
>
> gsl\_odeiv2\_step\_msadams
>
> A variable-coefficient linear multistep Adams method in Nordsieck
> form. This stepper uses explicit Adams-Bashforth (predictor) and
> implicit Adams-Moulton (corrector) methods in $P(EC)^m$ functional
> iteration mode. Method order varies dynamically between 1 and 12. This
> stepper requires the access to the driver object via
> `gsl_odeiv2_step_set_driver`.
>
> BDF method
>
> gsl\_odeiv2\_step\_msbdf
>
> A variable-coefficient linear multistep backward differentiation
> formula (BDF) method in Nordsieck form. This stepper uses the explicit
> BDF formula as predictor and implicit BDF formula as corrector. A
> modified Newton iteration method is used to solve the system of
> non-linear equations. Method order varies dynamically between 1 and 5.
> The method is generally suitable for stiff problems. This stepper
> requires the Jacobian and the access to the driver object via
> `gsl_odeiv2_step_set_driver`.

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
mutable struct gsl_odeiv2_step
    type::Ptr{gsl_odeiv2_step_type}
    dimension::Csize_t
    state::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_odeiv2_step`

> This contains internal parameters for a stepping function.

"""
mutable struct gsl_odeiv2_step
    type::Ptr{gsl_odeiv2_step_type}
    dimension::Csize_t
    state::Ptr{Cvoid}
end

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
mutable struct gsl_odeiv2_control
    type::Ptr{gsl_odeiv2_control_type}
    state::Ptr{Cvoid}
end
```
GSL documentation:

### `gsl_odeiv2_control`

> This is a workspace for controlling step size.

"""
mutable struct gsl_odeiv2_control
    type::Ptr{gsl_odeiv2_control_type}
    state::Ptr{Cvoid}
end

@doc md"""
```
mutable struct gsl_odeiv2_evolve
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
mutable struct gsl_odeiv2_evolve
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

@doc md"""
```
mutable struct gsl_odeiv2_driver
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
mutable struct gsl_odeiv2_driver
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


#### gsl_permutation.h ########################################################


@doc md"""
```
mutable struct gsl_permutation
    size::Csize_t
    data::Ptr{Csize_t}
end
```
GSL documentation:

### `gsl_permutation`

> A permutation is defined by a structure containing two components, the
> size of the permutation and a pointer to the permutation array. The
> elements of the permutation array are all of type `size_t`. The
> `gsl_permutation` structure looks like this:
>
>     typedef struct
>     {
>       size_t size;
>       size_t * data;
>     } gsl_permutation;

"""
mutable struct gsl_permutation
    size::Csize_t
    data::Ptr{Csize_t}
end


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

> gsl\_qrng\_niederreiter\_2
>
> This generator uses the algorithm described in Bratley, Fox,
> Niederreiter, ACM Trans. Model. Comp. Sim. 2, 195 (1992). It is valid
> up to 12 dimensions.
>
> gsl\_qrng\_sobol
>
> This generator uses the Sobol sequence described in Antonov, Saleev,
> USSR Comput. Maths. Math. Phys. 19, 252 (1980). It is valid up to 40
> dimensions.
>
> gsl\_qrng\_halton gsl\_qrng\_reversehalton
>
> These generators use the Halton and reverse Halton sequences described
> in J.H. Halton, Numerische Mathematik, 2, 84-90 (1960) and B.
> Vandewoestyne and R. Cools Computational and Applied Mathematics, 189,
> 1&2, 341-361 (2006). They are valid up to 1229 dimensions.

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
> `gsl_rng_type` which holds static information about each type of
> generator and `gsl_rng` which describes an instance of a generator
> created from a given `gsl_rng_type`.

The functions described in this section are declared in the header file
`gsl_rng.h`.

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

> single: bisection algorithm for finding roots single: root finding,
> bisection algorithm
>
> gsl\_root\_fsolver\_bisection
>
> The *bisection algorithm* is the simplest method of bracketing the
> roots of a function. It is the slowest algorithm provided by the
> library, with linear convergence.
>
> On each iteration, the interval is bisected and the value of the
> function at the midpoint is calculated. The sign of this value is used
> to determine which half of the interval does not contain a root. That
> half is discarded to give a new, smaller interval containing the root.
> This procedure can be continued indefinitely until the interval is
> sufficiently small.
>
> At any time the current estimate of the root is taken as the midpoint
> of the interval.
>
> single: false position algorithm for finding roots single: root
> finding, false position algorithm
>
> gsl\_root\_fsolver\_falsepos
>
> The *false position algorithm* is a method of finding roots based on
> linear interpolation. Its convergence is linear, but it is usually
> faster than bisection.
>
> On each iteration a line is drawn between the endpoints $(a,f(a))$ and
> $(b,f(b))$ and the point where this line crosses the $x$-axis taken as
> a "midpoint". The value of the function at this point is calculated
> and its sign is used to determine which side of the interval does not
> contain a root. That side is discarded to give a new, smaller interval
> containing the root. This procedure can be continued indefinitely
> until the interval is sufficiently small.
>
> The best estimate of the root is taken from the linear interpolation
> of the interval on the current iteration.
>
> single: Brent's method for finding roots single: root finding, Brent's
> method
>
> gsl\_root\_fsolver\_brent
>
> The *Brent-Dekker method* (referred to here as *Brent's method*)
> combines an interpolation strategy with the bisection algorithm. This
> produces a fast algorithm which is still robust.
>
> On each iteration Brent's method approximates the function using an
> interpolating curve. On the first iteration this is a linear
> interpolation of the two endpoints. For subsequent iterations the
> algorithm uses an inverse quadratic fit to the last three points, for
> higher accuracy. The intercept of the interpolating curve with the
> $x$-axis is taken as a guess for the root. If it lies within the
> bounds of the current interval then the interpolating point is
> accepted, and used to generate a smaller interval. If the
> interpolating point is not accepted then the algorithm falls back to
> an ordinary bisection step.
>
> The best estimate of the root is taken from the most recent
> interpolation or bisection.

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

> single: Newton's method for finding roots single: root finding,
> Newton's method
>
> gsl\_root\_fdfsolver\_newton
>
> Newton's Method is the standard root-polishing algorithm. The
> algorithm begins with an initial guess for the location of the root.
> On each iteration, a line tangent to the function $f$ is drawn at that
> position. The point where this line crosses the $x$-axis becomes the
> new guess. The iteration is defined by the following sequence,
>
> not texinfo
>
> $$x_{i+1} = x_i - {f(x_i) \over f'(x_i)}$$
>
> texinfo
>
>     x_{i+1} = x_i - f(x_i)/f'(x_i)
>
> Newton's method converges quadratically for single roots, and linearly
> for multiple roots.
>
> single: secant method for finding roots single: root finding, secant
> method
>
> gsl\_root\_fdfsolver\_secant
>
> The *secant method* is a simplified version of Newton's method which
> does not require the computation of the derivative on every step.
>
> On its first iteration the algorithm begins with Newton's method,
> using the derivative to compute a first step,
>
> not texinfo
>
> $$x_1 = x_0 - {f(x_0) \over f'(x_0)}$$
>
> texinfo
>
>     x_1 = x_0 - f(x_0)/f'(x_0)
>
> Subsequent iterations avoid the evaluation of the derivative by
> replacing it with a numerical estimate, the slope of the line through
> the previous two points,
>
> not texinfo
>
> $$x_{i+1} = x_i - {f(x_i) \over f'_{est}}
>  ~\hbox{where}~
>  f'_{est} =  {f(x_{i}) - f(x_{i-1}) \over x_i - x_{i-1}}$$
>
> texinfo
>
>     x_{i+1} = x_i f(x_i) / f'_{est} where
>      f'_{est} = (f(x_i) - f(x_{i-1})/(x_i - x_{i-1})
>
> When the derivative does not change significantly in the vicinity of
> the root the secant method gives a useful saving. Asymptotically the
> secant method is faster than Newton's method whenever the cost of
> evaluating the derivative is more than 0.44 times the cost of
> evaluating the function itself. As with all methods of computing a
> numerical derivative the estimate can suffer from cancellation errors
> if the separation of the points becomes too small.
>
> On single roots, the method has a convergence of order $(1 + \sqrt
> 5)/2$ (approximately $1.62$). It converges linearly for multiple
> roots.
>
> single: Steffenson's method for finding roots single: root finding,
> Steffenson's method
>
> gsl\_root\_fdfsolver\_steffenson
>
> The *Steffenson Method* provides the fastest convergence of all the
> routines. It combines the basic Newton algorithm with an Aitken
> "delta-squared" acceleration. If the Newton iterates are $x_i$ then
> the acceleration procedure generates a new sequence $R_i$,
>
> not texinfo
>
> $$R_i = x_i - {(x_{i+1} - x_i)^2 \over (x_{i+2} - 2 x_{i+1} + x_i)}$$
>
> texinfo
>
>     R_i = x_i - (x_{i+1} - x_i)^2 / (x_{i+2} - 2 x_{i+1} + x_{i})
>
> which converges faster than the original sequence under reasonable
> conditions. The new sequence requires three terms before it can
> produce its first value so the method returns accelerated values on
> the second and subsequent iterations. On the first iteration it
> returns the ordinary Newton estimate. The Newton iterate is also
> returned if the denominator of the acceleration term ever becomes
> zero.
>
> As with all acceleration procedures this method can become unstable if
> the function is not well-behaved.

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

@doc md"""
`gsl_sf_legendre_t`

> <table>
> <thead>
> <tr class="header">
> <th>Value</th>
> <th>Description</th>
> </tr>
> </thead>
> <tbody>
> <tr class="odd">
> <td><code class="sourceCode">GSL_SF_LEGENDRE_NONE</code></td>
> <td>The unnormalized associated Legendre polynomials <span class="math inline"><em>P</em><sub><em>l</em></sub><sup><em>m</em></sup>(<em>x</em>)</span></td>
> </tr>
> <tr class="even">
> <td><code class="sourceCode">GSL_SF_LEGENDRE_SCHMIDT</code></td>
> <td>The Schmidt semi-normalized associated Legendre polynomials <span class="math inline"><em>S</em><sub><em>l</em></sub><sup><em>m</em></sup>(<em>x</em>)</span></td>
> </tr>
> <tr class="odd">
> <td><code class="sourceCode">GSL_SF_LEGENDRE_SPHARM</code></td>
> <td>The spherical harmonic associated Legendre polynomials <span class="math inline"><em>Y</em><sub><em>l</em></sub><sup><em>m</em></sup>(<em>x</em>)</span></td>
> </tr>
> <tr class="even">
> <td><code class="sourceCode">GSL_SF_LEGENDRE_FULL</code></td>
> <td>The fully normalized associated Legendre polynomials <span class="math inline"><em>N</em><sub><em>l</em></sub><sup><em>m</em></sup>(<em>x</em>)</span></td>
> </tr>
> </tbody>
> </table>

"""
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
mutable struct gsl_sf_result
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
> The field `val` contains the value and the field `err` contains an
> estimate of the absolute error in the value.

In some cases, an overflow or underflow can be detected and handled by a
function. In this case, it may be possible to return a scaling exponent
as well as an error/value pair in order to save the result from
exceeding the dynamic range of the built-in types. The following struct
contains value and error fields as well as an exponent field such that
the actual result is obtained as `result * 10^(e10)`.

"""
mutable struct gsl_sf_result
    val::Cdouble
    err::Cdouble
end

@doc md"""
```
mutable struct gsl_sf_result_e10
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
mutable struct gsl_sf_result_e10
    val::Cdouble
    err::Cdouble
    e10::Cint
end


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

> These are the parameters that control a run of `gsl_siman_solve`. This
> structure contains all the information needed to control the search,
> beyond the energy function, the step function and the initial guess.
>
> <table>
> <tbody>
> <tr class="odd">
> <td><code class="sourceCode">int n_tries</code></td>
> <td>The number of points to try for each step.</td>
> </tr>
> <tr class="even">
> <td><code class="sourceCode">int iters_fixed_T</code></td>
> <td>The number of iterations at each temperature.</td>
> </tr>
> <tr class="odd">
> <td><code class="sourceCode">double step_size</code></td>
> <td>The maximum step size in the random walk.</td>
> </tr>
> <tr class="even">
> <td><p><code class="sourceCode">double k, t_initial, mu_t, t_min</code></p></td>
> <td><p>The parameters of the Boltzmann distribution and cooling schedule.</p></td>
> </tr>
> </tbody>
> </table>

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

> This workspace provides a higher level interface for the `gsl_interp`
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

> This workspace provides a higher level interface for the
> `gsl_interp2d` object

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

> single: Daubechies wavelets single: maximal phase, Daubechies wavelets
>
> gsl\_wavelet\_daubechies gsl\_wavelet\_daubechies\_centered
>
> This is the Daubechies wavelet family of maximum phase with $k/2$
> vanishing moments. The implemented wavelets are $k=4, 6, \dots, 20$,
> with `k` even.
>
> Haar wavelets
>
> gsl\_wavelet\_haar gsl\_wavelet\_haar\_centered
>
> This is the Haar wavelet. The only valid choice of $k$ for the Haar
> wavelet is $k=2$.
>
> single: biorthogonal wavelets single: B-spline wavelets
>
> gsl\_wavelet\_bspline gsl\_wavelet\_bspline\_centered
>
> This is the biorthogonal B-spline wavelet family of order $(i,j)$. The
> implemented values of $k = 100*i + j$ are 103, 105, 202, 204, 206,
> 208, 301, 303, 305 307, 309.

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


