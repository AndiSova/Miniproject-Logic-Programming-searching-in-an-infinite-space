# Miniproject-Logic-Programming-searching-in-an-infinite-space
The project uses first-order logic predicates with the Logic Programming paradigm to solve a simple AI problem: searching objects in an infinite space.\
Problem description:
A robot is placed in one of an infinite number of square rooms, placed one near
each other on an infinite surface. Every room has four neighboring rooms to
which the robot can move by performing only one operation.
Some rooms contain boxes, which the robot can pick up by performing one
operation. The task of the robot is to pick up all boxes, to carry and deliver them
in the room where he was initially placed (the origin). The robot is informed
to deliver a specified number of boxes to the origin, which we know for sure to
exist in the search space of the robot (the robot is not asked to deliver more
boxes than there exist).
The robot can not see from one room into another, thus in order to learn
if one or more boxes exist in a room, the robot must move into that room. At
any time, the robot can carry at most one box. Once the robot picks up a box,
he must carry it back to the origin.

To orient itself, the robot will use the Cardinal points North-South-East-
West, which are also the directions where it can move.
