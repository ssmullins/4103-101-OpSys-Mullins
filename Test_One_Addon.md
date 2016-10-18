#Multi-tasking

##Definition
*A mode of operation that provides for the concurrent performance or interleaved execution of two or more computer tasks.

#Multi-programming

##Definition
  *A mode of operation that provides for the interleaved execution of two or more computer programs by a single processor.

##Multi-processing

##Definition
  *A mode of operation that provides for parallel processing by two or more processors of a multiprocessor.

#Multi-threaded

##Definition
  *The ability of a central processing unit (CPU) or a single core in a multi-core processor to execute multiple processes or threads concurrently, appropriately supported by the operating system.

#Review Questions from Chapter 3

##What is an instruction trace?
The behavior of an individual process by listing the sequence of instructions that execute for that process.

##What common events lead to the creation of a process?
  *New batch job - The OS is provided with a batch job control stream, usually on tape or disk. When the OS is prepared to take on new work, it will read the next sequence of job control commands.
  *Interactive log-on – A user at a terminal logs on to the system.
  *Created by OS to provide a  service – The OS can create a process to perform a function on behalf of a user program, without the user having to wait ( e.g., a process to control printing).
  *Spawned by existing process – For purposes of modularity or to explicit parallelism, a user program can dictate the creation of a number of processes.

##What does it mean to preempt a process?
  *An OS interrupt of a process because an event upon which another process has been waiting on occurred putting it in a ready state.

##What is swapping and what is the purpose?
  *Swapping is the moving of part or all of a process from main memory to disk.
  *The purpose of swapping is to free up space in main memory so it can be used to bring in another process.

##Why does figure 3.9b have two blocked states?
  *One the process is in main memory and awaiting an event.
  *Two the process is in secondary memory and awaiting an event.

##List four characteristics of a suspended process.
  *The process is not immediately available for execution.
  *The process may or may not be waiting on an event. If it is, this blocked condition is independent of suspend condition, and occurrence of the blocking event does not enable the process to be executed immediately.
  *The process was placed in a suspended state by an agent: either itself, a parent process, or the OS, for the purpose of preventing its execution.
  *The process may not be removed from this state until the agent explicitly orders the removal.

##List three general categories of information in a process control block.
  *Process Identification
  *Processor State Information
  *Process Control Information

##Why are two modes (user and kernel) needed?
  *It is necessary to protect the OS and key operating system tables, such as process control blocks, from interference by user programs.

##What is the difference between an interrupt and a trap?
  *Interrupt is external to the execution of the current instruction, whereas a trap is associated with the execution of the current instruction.

##Give three examples of an interrupt.
  *Clock Interrupt - The OS determines whether the currently running process has been executing for the maximum allowable unit of time, referred to as a time slice. That is, a time slice is the maximum amount of time that a process can execute before being interrupted. If so, this process must be switched to a ready state and another process dispatched.
  *I/O Interrupt – The OS determines what I/O action has occurred. If the I/O action constitutes an event for which one or more processes are waiting, then the OS moves all of the corresponding blocked processes to the ready state. The OS must then decide whether to resume execution of the process currently in the running state or to preempt that process for a higher-priority ready process.
  *Memory Fault – The processor encounters a virtual memory address reference for a word that is not in main memory. The OS must bring in the block of memory containing the reference from secondary memory to main memory. After the I/O request is issued to bring in the block of memory, the process with the memory fault is placed in a blocked state; the OS then performs a process switch to resume execution of another process. After the desired block is brought into memory, that process is placed in the ready state.

##What is the difference between a mode switch and a process switch?
  *In a mode switch the program counter, processor status word, and other registers are saved then restored when the mode switches back.
  *In a process switch the process control block, registers, and other information are saved for the first process and then replaced with the process information of the second process.
