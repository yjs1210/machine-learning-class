#This page is meant to serve as a quick and easy reference to basic
#functions and operations

#Basic Operations Notes
#help x = shows documentation and assistance for x

##1. Boolean operations are accepted in Octave##
# a. && and
# b. || or
# c. xor(1,0) nor
# d. ~= not equals, == equals

##2. Printing disp(x) for more complex printing, o.w. just call the variable##
# a.sprintf command does some string printing operations
#  i.sprintf('2 decimals: %.2f',a) will show 3.14 if a = pi
#  ii. Octave uses single ' to represent strings

##3. Semi Colons = next row of the matrix_type##
# a. A=[1 2; 3 4]   1 2 
#                   3 4 

##4. matrix generation##
# a. steps, start:steps:end i.e. 1:0.1:1.3 = generate 1 through 1.3 in .1 steps
#   i. 1 1.1 1.2 1.3
#   ii. default is 1 steps i.e. 1:6 = 1 2 3 4 5 6
#   iii. V(1:10) returns first ten elemenents of the vector 
# b.ones(2,3) = generates mxn matrix of ones 
#  1.zeros(1,3) = same but zeros
#  
# c.rand(3,3) = rand of U(0,1) in mxn matrix
#  1.randn(1,3) = gaussian or normal distributio random numbers in mxn
# 
# d. eye(n) = makes nxn identity matrix 

##5.plotting##
#  a. hist(w,b) plots histogram of w distribution with b bins



###Moving Data Around and navigating 

#1.size(A) = 1x2 matrix that contains row m and column n of A
#  a. size(a,1or2) = returns either m or n based on 1 or 2 

#  b.length(v) = returns longer dimension of mxn 

#2. Directories
# a.pwd = shows current directory

# b. cd changes directory

# c. ls lists directory

# e. load('dir') = loads features and matrixes 
#  i.once loaded you can refer it by its dir name without assigning
#  ii. use who to make suire
#  iii.addpath('dir') adds a certain path to your environment and all the functions

# f. who shows all the variables in the current workspace

# g. whos shows more detailed view of the variables including sizes and class

# h. clear : gets read of variables

# i. comma chaining = command 1 , command 2, command 3 : runs 3 commands one after the other
#   i. Semicolon chaining = executes but does not show

#3. Matrix navigation

# a.A(3,2) get row 3 and col 2 of matrtix A

# b. A(2,:) get everything in row 2 

# c. A(:,2) get everything in col 2

# d. A([1 3], :) gete everything in first and third row of A

# e. A(:,2) = [10;11;12] assigns second column of 2 to the given values

# f. A = [A,[100; 101; 102]] Append another column of 100 101 and 102 

# g. A(:) = put all the elements of A into a single vector

# h. C = [A B] <> [A,B] puts matrix A and B next to each other, appends b as columns

# i. C = [A; B] appends b to A as rows

##Computing on Data ###

#1. Basic computations
#a. A*C = matrix multiplicartion
#  i. A .* C = elemental multiplication i.e. A[1,1] * C[1,1] and so on
#  ii. period (.) in general denotes elemental opreation

#b.log(v), exp(v), abs(v), -v : straight forward operations 

#c. Incrementing: v+ones(length(v),1)  or you can do v+1

#d. A' : transposes A

#e. max(A) gives largest number in a vector, largest row in matrix
# i.Largest row in a matrix
#   - # max(A,[],1) = returns maximums of each columns
#   - # max(A,[],2) =  returns maximums of each rows
#   - # max(max(A)) or max(A(:)) = returns largest elements 
# ii. [val, ind] = max(a) : returns value of max and an index of that element 
# iii. max(A,B) = returns a identically sized matrix that choose max of A or B in each elements

#f. a < 3 : element wise comparison, returns 0 or 1 
# i.find(a<3) = returns indexes that satisfy the criteria

#g.[r,c] = find(A>=7) finds all the row and column indexes that satisfy >= 7

#h. sum(a), prod(a), floor(a):rounds down, ceil(a): rounds up 
# i. sum(A,1) = returns column sums vector. 
# ii. sum(A,2) = returns row sums vector,
# iii. in general ,1 is column wise operationa and ,2 is a row wise operationa

#i. flipud = flips a matrix diagonally

#j. pinv(A) = sudo inverse use this instead of inv 


####Plotting Data ####

#a. plot(x,y)  plots x on x axis and y in y axis
#  i. hold on; plots new figures on top of the old one instead of replacing it
#  ii. close; closes the plot, clf; clears the figure doesn't close out
#  iii. figure (1); plot(x,y) figure(2); plot(x,z) will pop up two plot screens
#  iv. subplot(1,2,1); divides plot into 1x2 grid, access first element
#  v. subplot(1,2,2); now accesses second element in that 1x2 grid

#b. xlabel('string') ylabel('string') legend('string 1', 'string 2'), title('')

#c. print -dpng 'myplot.png' saves the graphics_toolkit

#d. axis[.5 1 -1 1] sets x axis from .5 to 1 and y axis from -1 to 1 

#f. imagesc(A) heatmap of A
#i. colorbar = shows shades of colors
#ii. colormap gray = makes shades grey shades

###control statements #####
 
#a. for loops, for i=1:10, v(i) = 2^i; end; 

#b. while i <= 5, v(i) = 100; i=i+1; end; 
#  i. i=1; while true; v(i) = 999; i=i+1; if i==6, break; end; end; 
#  ii. break stops the loops 
#  iii. if statements also need an end hence for 2 ends in that example

#c. if v(1) ==1, disp('yeah'); elseif v(1) ==2, disp('nah'); else disp('none');end;

###Making functions###

#make a script 
#declare function
#function[output1, output2] = nameofthefunction(input)

#executing 
#[a,b] = nameofthefunction(input);

###Vectorization####

#a. Try to use as much vector and matrix opreations than loops, etc 
# i. they are optimized by smarties




   



