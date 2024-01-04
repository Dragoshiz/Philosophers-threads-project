# Philosophers Project: Threading and Mutexes

## Introduction
This project, part of my studies at 42, explores the fundamentals of threading a process and introduces the concept of mutexes. The scenario is based on the classic dining philosophers problem, a common example in the study of synchronization and concurrency in computer science.

## Project Overview
- **Language**: The project is implemented in C.
- **Concurrency**: Utilizes threads to simulate the actions of philosophers.
- **Mutexes**: Employs mutexes for managing access to shared resources (forks).

## The Dining Philosophers Problem
- **Philosophers’ Actions**: Philosophers at a table alternately eat, think, or sleep. While eating, they are not thinking or sleeping, and vice versa.
- **Fork Management**: Each philosopher needs two forks to eat. Forks are shared between them.
- **Starvation Prevention**: Philosophers must eat within a certain time to prevent starvation.

## Key Rules and Arguments
- **Program Arguments**:
  - `number_of_philosophers`: The number of philosophers (and forks).
  - `time_to_die`: Time limit for a philosopher to start eating before dying.
  - `time_to_eat`: Time taken for a philosopher to eat.
  - `time_to_sleep`: Time a philosopher spends sleeping.
  - `number_of_times_each_philosopher_must_eat` (Optional): The simulation stops if all philosophers eat at least this many times.

## Usage
To compile and run the project:
1. Clone the repository.
```
git clone https://github.com/Dragoshiz/Philosophers-threads-project
```
3. Navigate to the project directory and run `make`.
4. Execute the program:
```
./philo number_of_philosophers time_to_die time_to_eat time_to_sleep [number_of_times_each_philosopher_must_eat]
```

## Simulation Output
- The program outputs the state of each philosopher (eating, thinking, sleeping, taking a fork, or dying) with timestamps.
- The output ensures no data races and messages are not mixed up.

## Acknowledgments
- This project was inspired by the classic problem in concurrency, the dining philosophers, and was an assignment as part of my curriculum at 42.
