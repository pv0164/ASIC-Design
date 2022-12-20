#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <time.h>
#include <vector>
using std::cerr;
using std::endl;
#include <fstream>
using std::ofstream;
#include <cstdlib> 

struct csr_t {
  std::vector<int> vals;
  std::vector<int> cols;
  std::vector<int> rows; 
};

void rand_mat(std::vector<std::vector<int>> &m, int sparsity)
{
  srand(time(0));
  int limit = RAND_MAX - (RAND_MAX % 100);

  for (int i=0; i<m.size(); ++i){
    for (int j=0; j<m[i].size(); ++j){
      int r;
      while((r = rand()) >= limit);
      if (r%100 < sparsity) m[i][j] = 0;
      else m[i][j]= r%20;
    }
  }
}

void to_csr(std::vector<std::vector<int>> &m, csr_t &spM)
{
  int nnz = 0;
  for (int i=0; i<m.size(); ++i){
    spM.rows.push_back(nnz);
    for (int j=0; j<m[i].size(); ++j){
      if (m[i][j]){
        spM.vals.push_back(m[i][j]);
        spM.cols.push_back(j);
        ++nnz;
      }
    }
  }
  spM.rows.push_back(nnz);
}


int main()
{
    const int SIZE = 32;
    ofstream outdata;
    std::vector<std::vector<int>> mat(SIZE, std::vector<int>(SIZE));
    rand_mat(mat,70);
    
    for (int i=0; i<mat.size(); ++i){
        for (int j=0; j<mat[i].size(); ++j){
            std::cout<<mat[i][j]<<" ";
        }
        std::cout<<std::endl;
    }
    
    csr_t x;
    to_csr(mat, x);
    outdata.open("hht2_32_70.dat");
    if( !outdata ) { // file couldn't be opened
      cerr << "Error: file could not be opened" << endl;
      exit(1);
   }
    //for (int i=0; i<x.vals.size(); ++i)
      //std::cout<<x.vals[i]<<" ";
      
    std::cout<<std::endl;
    
    for (int i=0; i<x.rows.size(); ++i)
      outdata << x.rows[i] << endl;
      

    for (int i=0; i<x.cols.size(); ++i)
      outdata << x.cols[i] << endl;
    std::cout<<std::endl;
   outdata.close();
    return 0;
}