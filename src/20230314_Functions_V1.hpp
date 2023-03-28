#include <QuEST.h>
//#include <stdio.h>
#include <vector>
#include <iostream>
#include <string>
using namespace std;


/* 
  Create vector of digits from 0 to N, separated by 1
  To represent the a line of nodes connected by one 
  edge ()-()-()- - - -() (1,2,3,...,N)
*/
vector<int> get_linear_cluster_on_n_qubits(int number_of_qubits)
{
  vector<int> linear_cluster;
  for (int i = 0; i < number_of_qubits; i++ )
  {
    linear_cluster.push_back(i);  
  }
  return linear_cluster;
}

/*
  Linear flow, f(i) = i + 1
*/
int get_future_qubit_linear_cluster(int current_qubit){
  int future_qubit;
  future_qubit = current_qubit + 1;

  return future_qubit;
}

/*
  Linear flow, f^{-1}(i) = i - 1
*/
int get_past_qubit_linear_cluster(int current_qubit){
  int past_qubit;
  past_qubit = current_qubit - 1;

  return past_qubit;
}

/*
  Linear cluster vector with the flow, f.
  f(i) = i + 1, if i is last element of vector, then
  throw error.
*/
int get_future_qubit_linear_cluster_vec(vector<int> linear_cluster ,int current_qubit)
{
int future_qubit;
auto cluster_size = linear_cluster.size();
if (current_qubit == linear_cluster[cluster_size-1]) {
    future_qubit = current_qubit;
} else {
  future_qubit = get_future_qubit_linear_cluster(current_qubit);
}
  return future_qubit;
}


/*
  Linear cluster vector with the flow, f.
  f^{-1}(i) = i - 1, if i is first element of vector, then
  throw error.
*/
int get_past_qubit_linear_cluster_vec(vector<int> linear_cluster ,int current_qubit)
{
int past_qubit;

if (current_qubit == linear_cluster[0]) {
  past_qubit = current_qubit;

} else {
  past_qubit = get_past_qubit_linear_cluster(current_qubit);
}
  return past_qubit;
}


/*
  Get the neighbourhood size
  Look at the linear cluster and the current qubit
  Determine if there are one or two neighbours to the 
  current qubit based on the qubit position in the
  linear cluster
*/
int get_size_neighbour_set_linear_cluster(vector<int> linear_cluster ,int current_qubit){
  auto cluster_size = linear_cluster.size();
  int neighbour_size;
  // Logic for getting nieghbors
  if (current_qubit == 0) { // qubit is first
    neighbour_size = 1;
  } else if (current_qubit == linear_cluster[cluster_size-1]) { // qubit is last
    neighbour_size = 1;
  } else { // all else
    neighbour_size = 2;
  }

  return neighbour_size;
}

/*
  Get the neighbourhood of the qubit based on the linear cluster and the 
  qubits
*/
vector<int> get_open_neighbour_set_linear_cluster(vector<int> linear_cluster ,int current_qubit){
  vector<int> neighbours;
  auto cluster_size = linear_cluster.size();
  int first_qubit;
  int qubit_before;
  int qubit_after;

  if (current_qubit == linear_cluster[0]) { // qubit is first in graph
    first_qubit = current_qubit + 1;
    neighbours.push_back(first_qubit);
  } else if (current_qubit == linear_cluster[cluster_size-1]) { // qubit is last in graph
    first_qubit = current_qubit - 1;
    neighbours.push_back(first_qubit);
  } else { // all else
    qubit_before = current_qubit - 1;
    qubit_after = current_qubit + 1;
    neighbours.push_back(qubit_before);
    neighbours.push_back(qubit_after);
  }

  return neighbours;
}


  qreal ComputeXCorrectionAngle(
      vector<int> LinearCluster, 
      vector<int> MeasuredQubitsOutcomes,
      vector<qreal> QubitAngles,
      int CurrentQubit)
  {
      qreal xCorrectionAngle;
      int PastQubit;
      PastQubit = get_past_qubit_linear_cluster_vec(LinearCluster,CurrentQubit);
      int InverseFlowQubitOutcome = MeasuredQubitsOutcomes[PastQubit];
      xCorrectionAngle = pow(-1, InverseFlowQubitOutcome)*QubitAngles[CurrentQubit];

      return xCorrectionAngle;
  }



  qreal ComputeZCorrectionAngle(
      vector<int> LinearCluster, 
      vector<int> MeasuredQubitsOutcomes,
      int CurrentQubit)
  {   
      qreal zCorrectionAngle;
      
      int PastQubit;
      int PastPastQubit;
      int InverseFlowQubitOutcome;
      PastQubit = get_past_qubit_linear_cluster_vec(LinearCluster,CurrentQubit);
      PastPastQubit = get_past_qubit_linear_cluster_vec(LinearCluster,PastQubit);
      InverseFlowQubitOutcome = MeasuredQubitsOutcomes[PastPastQubit];
      zCorrectionAngle = M_PI*InverseFlowQubitOutcome;
              
      return zCorrectionAngle;
  }

int countElements(vector<int> v, int element) {
    int count = 0;
    for (auto it = v.begin(); it != v.end(); ++it) {
        if (*it == element) {
            ++count;
        }
    }
    return count;
}