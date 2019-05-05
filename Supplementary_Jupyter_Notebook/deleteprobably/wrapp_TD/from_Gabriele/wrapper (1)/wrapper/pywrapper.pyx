import numpy as np
cimport numpy as cnp

cnp.import_array()

cdef extern from "wrapper.h":
    void DispInHalfSpace(double Displ[3], double X,double Y,double Z,double P1[3],double P2[3],double P3[3],double Ss,double Ds,double Ts,double nu)

def py_DispInHalfSpace(cnp.ndarray[cnp.float64_t,ndim=1] Displ,double X,double Y,double Z,cnp.ndarray[cnp.float64_t,ndim=1] P1,cnp.ndarray[cnp.float64_t,ndim=1] P2,cnp.ndarray[cnp.float64_t,ndim=1] P3,double Ss,double Ds,double Ts,double nu) -> None:
    DispInHalfSpace(&Displ[0], X, Y, Z, &P1[0] ,&P2[0], &P3[0],Ss, Ds, Ts, nu)    

