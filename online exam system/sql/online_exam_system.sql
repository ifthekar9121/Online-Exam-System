-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2018 at 06:14 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online exam system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `pass`, `phone`) VALUES
(1, 'Ifthekar', 'ifthekaralam@gmail.com', '2276', '01756273593'),
(2, 'Ahona', 'ahonaislamonti@gmail.com', '1234', '01625010851');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` varchar(10) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`) VALUES
('c/c++001', 'C/C++'),
('html001', 'HTML'),
('java001', 'JAVA'),
('php001', 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `id` int(11) NOT NULL,
  `user_id` int(100) DEFAULT NULL,
  `test_id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `true_ans` varchar(20) DEFAULT NULL,
  `ans1` varchar(20) DEFAULT NULL,
  `ans2` varchar(20) DEFAULT NULL,
  `ans3` varchar(20) DEFAULT NULL,
  `ans4` varchar(20) DEFAULT NULL,
  `difficulty` varchar(5) DEFAULT NULL,
  `course_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `title`, `true_ans`, `ans1`, `ans2`, `ans3`, `ans4`, `difficulty`, `course_id`) VALUES
(1, '1. Java is a ........... language. ', 'strogly typed', 'weakly typed ', 'strogly typed ', 'moderate typed ', 'None of these', '1', 'java001'),
(2, 'How many primitive data types are there in Java? ', '8', '6 ', '7', '8', '9', '1', 'java001'),
(3, 'In Java byte, short, int and long all of these are ', 'signed ', 'signed', 'unsigned ', 'Both of the above ', 'None of these', '1', 'java001'),
(4, 'Size of int in Java is ', '32 bit ', '16 bit  ', '32 bit ', '64 bit', 'Depends on execution', '1', 'java001'),
(5, 'The smallest integer type is ......... and its size is ......... bits.', 'byte, 8 ', 'short, 8 ', 'byte, 8 ', 'short, 16 ', 'short, 18', '1', 'java001'),
(6, 'Size of float and double in Java is', '32 and 64', '32 and 64', '64 and 64 ', '32 and 32', '64 and 32', '1', 'java001'),
(7, 'Automatic type conversion in Java takes place when', 'Two type are compati', 'Two type are compati', ' Two type are compat', 'Two type are compati', 'All of the above', '1', 'java001'),
(8, 'Which of the following automatic type conversion will be possible? ', 'int to long ', 'short to int ', 'byte to int ', 'int to long ', 'long to int', '1', 'java001'),
(9, ' In Java, the word true is ................ ', 'A Boolean literal ', 'A Java keyword ', 'A Boolean literal ', 'Same as value 1 ', 'Same as value 0', '1', 'java001'),
(10, 'Java was first developed in ? ', '1991 ', '1990', '1991 ', '1993', '1996', '1', 'java001'),
(11, 'The old name of Java was ?', 'oak', 'J language ', 'oak', 'oct ', 'None of above', '1', 'java001'),
(12, 'Which of the following feature is not supported by java ? ', 'Operator Overloading', 'Multithreading ', 'Reflection ', 'Operator Overloading', 'Garbage Collection', '1', 'java001'),
(13, 'Which of the following is not keyword in java ? ', 'null ', 'null ', 'import ', 'volatile ', 'package', '1', 'java001'),
(14, ' What is the full form of JDK ? ', 'Java Design Kit', 'Java Data Kit ', 'Java Defination Kit ', 'Java Development Kit', 'Java Design Kit', '1', 'java001'),
(15, 'Which command is used to compile a java program ? ', 'javac ', 'javac ', 'java ', 'javad ', 'javadoc', '1', 'java001'),
(16, 'What is the full form of JVM ', 'Java Virtual Machine', 'Java Virtual Machine', 'Java Variable Machin', 'Java Virtual Mechani', 'Java Variable Mechan', '1', 'java001'),
(17, 'What is the full form of ADT ? ', 'Abstract Data Type ', 'Abstract Data Type ', 'Abstract Development', 'Abstract Design Tool', 'Advance Development ', '1', 'java001'),
(18, 'The expected signature of the main method is public static void main(). What happens if we make a mi', 'The JVM fails at run', 'The JVM issues an er', 'The compiler issues ', 'The JVM successfully', 'The JVM fails at run', '1', 'java001'),
(19, 'What does the AWT stands for ? ', 'Abstract Windowing t', 'Abstract Windowing t', 'A web toolkit', 'Application with typ', 'Absolutly wonderfull', '1', 'java001'),
(20, 'Which of the following is generated when the source code is successfully compiled ? ', 'Bytecode', 'Output', 'Bytecode', 'Error', 'None of above', '1', 'java001'),
(21, 'In java , if you do not give a value to a variable before using it ,______ ', 'Compiler will give a', 'It will contain a ga', 'It will initialized ', 'Compiler will give a', 'None of above', '2', 'java001'),
(22, 'Which among the following is the compulsory section of java program ? ', 'Class declaration se', 'package Statement ', 'import Statement ', 'Documentation sectio', 'Class declaration se', '2', 'java001'),
(23, 'The extension name of a Java source code file is ?', '.java', '.java', '.obj', '.class', '.exe', '2', 'java001'),
(24, 'The JDK command to compile a class in the file Test.java is', 'javac Test.java', ' java Test', 'javac Test.java ', ' javac Test', 'java Test.java', '2', 'java001'),
(25, '_______ is a software that interprets Java bytecode.', 'java virtual machine', 'java virtual machine', 'Java compiler', 'Java debugger', 'Java API', '2', 'java001'),
(26, 'Which JDK command is correct to run a Java application in ByteCode.class? ', 'java ByteCode ', 'java ByteCode ', 'java ByteCode.class', 'javac ByteCode.java', 'javac ByteCode', '2', 'java001'),
(27, 'Java is also known as ...... stage language', 'two', 'one', 'two', 'three', 'four', '2', 'java001'),
(28, 'For interpretation of java program, _______ command is used.   ', 'none of these', 'java', 'java', 'javac', 'javap', '2', 'java001'),
(30, 'What do you mean by javap?', 'java Disassemble ', 'java compiler', 'java Disassemble ', 'java debugger', 'java Interpreter', '2', 'java001'),
(31, 'What is HotJava ? ', 'web browser', 'system software', 'web browser', 'java environment ', 'IDE', '2', 'java001'),
(32, 'Which is a reserved word in the Java programming language?', 'native', 'method ', 'array', 'native', 'subclasse', '2', 'java001'),
(33, 'Minimum threads in a program are', '2', '1', '2', '3', '4', '2', 'java001'),
(34, 'after compilation of java class the file create is ', '.class', '.class', '.doc', '.java', '.javac', '2', 'java001'),
(35, 'How many JDBC driver types does Sun define?', '4', '1', '2', '3', '4', '2', 'java001'),
(36, 'Who invented Java ?', 'sun', 'Netscape ', 'Microsoft', 'sun', 'none of these', '2', 'java001'),
(37, 'To run a compiled Java program, the machine must have what loaded and running?', 'JVM', 'JVM', 'byte code', 'web browser', 'java compiler', '2', 'java001'),
(38, ' A JSP is transformed into a: ', 'servlet ', 'servlet ', 'method', 'java class', 'applet', '2', 'java001'),
(39, 'What servlet processor was developed by Apache Foundation and Sun? ', ' Apache Tomcat ', ' Apache Tomcat ', 'Apache webserver ', 'Glass fish ', 'Browser', '2', 'java001'),
(40, 'type 4 is completely written in java hence ', 'cross plateform', 'computer  ', 'cross plateform', 'linux', 'office', '2', 'java001'),
(41, 'statement use to execute store procedure ', 'callable statement', 'prepared statement ', 'stored procedure', 'callable statement', 'statement', '3', 'java001'),
(42, 'How many interface in jdbc API?', '3', '1', '2', '3', '4', '3', 'java001'),
(43, 'forName() is a static method of ', 'java.lang.class ', 'java.lang.class ', 'java.util', 'java.object ', 'java.connection', '3', 'java001'),
(44, 'session listener define following method', 'sessionDestroyed, se', 'sessionCreated, sess', 'sessionCreated, sess', 'sessionDestroyed, se', 'none', '3', 'java001'),
(45, 'what is jdb ?', 'java debugger ', 'java compiler  ', 'java debugger ', 'java virtual machine', 'none', '3', 'java001'),
(46, 'Java is known as _______stage language', '2', '1', '2', '3', '4', '3', 'java001'),
(47, 'Which driver is called as thin-driver in JDBC', 'Type 4 Driver', 'Type 1 Driver', 'Type 2 Driver', 'Type 3 Driver', 'Type 4 Driver', '3', 'java001'),
(48, 'Which method of java is invoked by JVM to reclaim the inaccessible memory location ', 'finalize() method ', 'reclaim() method', ' final() method', 'finalize() method ', 'Both 2 and 3', '3', 'java001'),
(49, 'Interfaces helps in which type of inheritance ', 'Multiple interface  ', 'Multiple interface  ', 'Multilevel Interface', 'Hirerchical Interfac', 'None', '3', 'java001'),
(50, 'Which command disassembles a class file ', 'javap', 'javaamd ', 'javacmd', 'javap', 'java', '3', 'java001'),
(51, 'In which we clone the object and their constituent parts', 'Deep cloning', 'Shallow Cloning ', 'Deep cloning', 'Both', 'none', '3', 'java001'),
(52, 'Executable applet is', '.class', '.java file ', '.class', '.applet', '.java', '3', 'java001'),
(53, 'Which keyword is used while using interface', 'implement', 'extends ', 'implement', 'access', 'none', '3', 'java001'),
(54, 'Which keyword represents object of the present class ', 'this ', 'this ', 'package ', 'interface ', 'final', '3', 'java001'),
(55, 'The method cant be overridden ', 'final', 'final', 'abstract', 'public', 'private', '3', 'java001'),
(56, 'javah stands for ', 'Header file', 'compiler', ' Interpreter', 'Header file', 'debugger', '3', 'java001'),
(57, 'Main method parameter has which type of data type ', 'string', 'String ', 'Int', 'char', 'double', '3', 'java001'),
(58, ' How many keywords are available in java ', '48', '48 ', '52', '35', '32', '3', 'java001'),
(59, 'Smallest individual unit in java program is known as ', 'Token ', 'String', 'Literal', 'Token ', 'operator', '3', 'java001'),
(60, ' What is return type of execute() method?', 'Action forward ', 'Action forward ', 'void', 'String', 'int', '3', 'java001'),
(61, 'Who is father of C Language? ', 'Dennis Ritchie', 'Bjarne Stroustrup', 'James A. Gosling', 'Dennis Ritchie', 'Dr. E.F. Codd', '1', 'c/c++001'),
(62, 'C programs are converted into machine language with the help of ', 'A compiler', 'An Editor', 'A compiler', ' An operating system', 'None of these.', '1', 'c/c++001'),
(63, 'C was primarily developed as', 'System programming l', 'System programming l', 'General purpose lang', 'Data processing lang', 'None of the above', '1', 'c/c++001'),
(64, 'Standard ANSI C recognizes ______ number of keywords? A.  30 B.  32 C.  24 D.  36 E.  40', '32', '30 ', '32', '24', '36', '1', 'c/c++001'),
(65, 'Which one of the following is not a reserved keyword for C? ', 'main', 'A.  auto B.  case C.', 'case', 'main', 'default', '1', 'c/c++001'),
(66, 'A C variable cannot start with ', 'Both of the above ', 'A number ', 'A special symbol oth', 'Both of the above ', 'An alphabet', '1', 'c/c++001'),
(67, 'Which is the only function all C programs must contain? ', 'printf()', 'start() C.  main() D', 'printf()', 'main()', 'getch()', '1', 'c/c++001'),
(68, 'Which of the following is not a correct variable type?', 'real', 'float ', 'real', 'int', 'char', '1', 'c/c++001'),
(69, ' Which of following is not a valid name for a C variable? ', 'Exam veda ', 'Examveda ', 'Exam_veda', 'Exam veda ', 'None of these', '1', 'c/c++001'),
(70, 'What does your class can hold? ', 'both 1 & 2', 'data ', ' functions', 'both 1 & 2', 'none of the mentione', '1', 'c/c++001'),
(71, 'How many specifiers are present in access specifiers in class?', '4', '1', '2', '3', '4', '1', 'c/c++001'),
(72, 'How many kinds of classes are there in c++?', '2', '1', '2', '3', '4', '1', 'c/c++001'),
(73, 'Which other keywords are also used to declare the class other than class? ', 'both 1 & 2', 'struct ', 'union', 'object', 'both 1 & 2', '1', 'c/c++001'),
(74, ' The fields in the class in c++ program are by default ', 'private', 'protected ', 'private', 'public', 'none of the mentione', '1', 'c/c++001'),
(75, 'Constructors are used to', 'initalize the object', 'initalize the object', 'construct the data m', 'both 1 & 2', 'none of the mentione', '1', 'c/c++001'),
(76, 'When struct is used instead of the keyword class means, what will happen in the program? A. access i', 'access is public by ', 'access is public by ', ' access is private b', 'access is protected ', 'none of the mentione', '1', 'c/c++001'),
(77, 'Which class is used to design the base class? ', 'abstract class', 'abstract class', 'derived class ', ' base class', 'none of the mentione', '1', 'c/c++001'),
(78, 'Which is also called as abstract class? ', 'pure virtual functio', 'virtual function', 'pure virtual functio', 'derived class ', 'none of the mentione', '1', 'c/c++001'),
(79, 'Where does the abstract class is used? ', 'base class only ', 'base class only ', 'derived class', 'both 1 & 2', 'none of the mentione', '1', 'c/c++001'),
(80, 'Where is the derived class is derived from? ', 'base', 'derived', 'base', 'both 1 & 2', 'none of the mentione', '1', 'c/c++001'),
(81, ' Which of the following can derived class inherit? ', 'both 1 & 2', 'members', 'functions', 'both 1 & 2', 'none of the mentione', '2', 'c/c++001'),
(82, ' Which constructor will initialize the base class data member? A. derived class B. base class', 'base class', 'derived class', 'base class', 'class', 'both 1 & 2', '2', 'c/c++001'),
(83, 'Which interface decides determines how your class will be used by other program? ', 'public', 'public ', 'private', 'protected ', 'none of the mentione', '2', 'c/c++001'),
(84, 'How many ways of reusing are there in class hierarchy? ', '2', '1', '2', '3', '4', '2', 'c/c++001'),
(85, 'How many types of class are there in c++? ', '3', '1', '2', '3', '4', '2', 'c/c++001'),
(86, 'How many types of guarantees are there in exception class can have? ', '3', '1 ', '2', '3', '4', '2', 'c/c++001'),
(87, 'What does the cerr represent? A. Standard error stream B. Standard logging stream C. Input stream D.', 'Standard error strea', 'Standard error strea', 'Standard logging str', 'Input stream ', 'Output stream', '2', 'c/c++001'),
(88, 'Which operator is used to signify the namespace? ', 'scope operator', 'conditional operator', 'ternary operator', 'scope operator', 'none of the mentione', '2', 'c/c++001'),
(89, 'Which keyword is used to access the variable in namespace? ', 'using', 'using ', 'dynamic', 'const', ' static', '2', 'c/c++001'),
(90, 'How many parameters are there in getline function?', '3', '1', '2', '3', '4', '2', 'c/c++001'),
(91, 'Where does the execution of the program starts?', 'main function', 'user-defined functio', 'main function ', 'void function', 'none of the mentione', '2', 'c/c++001'),
(92, 'What are mandatory parts in function declaration? ', 'return type,function', 'return type,function', 'return type,function', 'both 1 & 2', 'none of the mentione', '2', 'c/c++001'),
(93, 'How many max number of arguments can present in function in c99 compiler? ', '127', '99', '90', '120', '127', '2', 'c/c++001'),
(94, 'Which is more effective while calling the functions? ', 'call by reference', 'call by value ', 'call by reference', 'call by pointer ', 'none of the mentione', '2', 'c/c++001'),
(95, 'What is the scope of the variable declared in the user definied function?', 'only inside the {} b', 'whole program ', 'only inside the {} b', 'both 1 & 2', 'none of the mentione', '2', 'c/c++001'),
(96, ' How many ways of passing a parameter are there in c++?', '3', '1', '2', '3', '4', '2', 'c/c++001'),
(97, 'Which is used to keep the call by reference value as intact?', 'const', 'static ', 'const', 'absolute', 'none of the mentione', '2', 'c/c++001'),
(98, 'By default how the value are passed in c++?', 'call by value ', 'call by value ', 'call by reference ', 'call by pointer', 'none of the mentione', '2', 'c/c++001'),
(99, 'What will happen when we use void in argument passing? ', 'It will not return v', 'It will not return v', 'It will return value', 'both 1 & 2', 'none of the mentione', '2', 'c/c++001'),
(100, ' How many types of returning values are present in c++?', '3', '1', '2', '3', '4', '2', 'c/c++001'),
(101, ' What will you use if you are not intended to get a return value? ', 'void', 'static ', 'const', 'volatile', 'void', '3', 'c/c++001'),
(102, 'Where does the return statement returns the execution of the program? A. main function B. caller fun', 'caller function ', 'main function ', 'caller function ', 'same function', 'none of the mentione', '3', 'c/c++001'),
(103, ' When our function doesnâ€™t need to return anything means what we will as parameter in function?', 'blank space', 'void ', 'blank space', 'both 1 & 2', 'none of the mentione', '3', 'c/c++001'),
(104, 'To which does the function pointer point to?', 'function ', 'variable', 'constants ', 'function ', 'absolute variables', '3', 'c/c++001'),
(105, ' What we will not do with function pointers? ', 'both 1 & 2', 'A. allocation of mem', 'de-allocation of mem', 'both a & b', 'none of the mentione', '3', 'c/c++001'),
(106, 'What is the default calling convention for a compiler in c++?', 'cdecl', 'cdecl', 'stdcall', 'pascal', 'fastcall', '3', 'c/c++001'),
(107, 'which of the following can be passed in function pointers? ', ' functions', 'variables ', ' data types', ' functions', 'none of the mentione', '3', 'c/c++001'),
(108, 'If the user didnâ€™t supply the user value means, then what value will it take? ', ' default value ', ' default value ', 'rise an error', 'both 1 & 2', ' none of the mention', '3', 'c/c++001'),
(109, 'Where does the default parameter can be placed by the user? ', 'rightmost ', 'leftmost', 'rightmost ', 'both 1 & 2', 'none of the mentione', '3', 'c/c++001'),
(110, 'What we canâ€™t place followed by the non-default arguments? ', 'default arguments ', 'trailing arguments', 'default arguments ', 'both 1 & 2', 'none of the mentione', '3', 'c/c++001'),
(111, 'If we start our function call with default arguments means, what will be proceeding arguments? ', 'default arguments ', 'user argument ', 'empty arguments ', 'default arguments ', 'none of the mentione', '3', 'c/c++001'),
(112, ' What is the default return type of a function ? ', 'void', 'int ', 'void', 'float', 'char', '3', 'c/c++001'),
(113, 'Which header file is used to pass unknown number of arguments to function?', 'stdarg.h ', 'stdlib.h ', 'string.h ', 'stdarg.h ', 'none of the mentione', '3', 'c/c++001'),
(114, 'How can you access the arguments that are manipulated in the function? ', 'va_list', 'va_list', 'arg_list', 'both 1 & 2', 'none of the mentione', '3', 'c/c++001'),
(115, 'What is the maximum number of arguments or parameters that can be present in one function call? A. 6', '256', '16', '64', '256', '255', '3', 'c/c++001'),
(116, 'Which header file should you include if you are to develop a function that can accept variable numbe', 'stdarg.h', 'varag.h ', 'stdlib.h', ' stdio.h', 'stdarg.h', '3', 'c/c++001'),
(117, 'How many types of macros are there in c++?', '2', '1', '2', '3', '4', '3', 'c/c++001'),
(118, 'Which one of the following is not a possible state for a pointer? ', 'point to a tye', 'hold the address of ', 'zero', ' point one past the ', 'point to a tye', '1', 'c/c++001'),
(119, 'Void pointer can point to which type of objects?', 'all of the mentioned', 'int ', 'float', 'double', 'all of the mentioned', '3', 'c/c++001'),
(120, 'When does the void pointer can be dereferenced? ', 'when it cast to anot', 'when it doesnâ€™t po', 'when it cast to anot', 'using delete keyword', 'none of the mentione', '3', 'c/c++001'),
(121, 'HTML is what type of language ?  ', 'Markup Language', 'Scripting Language', 'Markup Language', 'Programming Language', 'Network Protocol', '1', 'html001'),
(122, 'HTML uses ', 'Fixed tags defined b', 'User defined tags', 'B. Pre-specified tag', 'Fixed tags defined b', 'Tags only for linkin', '1', 'html001'),
(123, 'the year in which HTML was first proposed', '1990', '1990', '1980', '2000', '1995', '1', 'html001'),
(124, 'Fundamental HTML Block is known as ', 'HTML Element', 'HTML Body', 'HTML Tag', 'HTML Attribute', 'HTML Element', '1', 'html001'),
(125, 'What is the full form of HTML? ', 'Hyper Text Markup La', 'Hyper Text Markup La', 'Hyper Teach Markup L', 'Non Hyper Tech Marku', 'None of these', '1', 'html001'),
(126, 'Who is Known as the father of World Wide Web (WWW)?  ', 'im Berners-Lee', 'Robert Cailliau', 'Tim Thompson ', 'Charles Darwin', 'im Berners-Lee', '1', 'html001'),
(127, 'What tag is used to display a picture in a HTML page?  ', 'img', 'picture', 'image ', 'img', 'src', '1', 'html001'),
(128, 'HTML web pages can be read and rendered by', 'Web Browser', ' Compiler', 'Server ', 'Web Browser', 'Interpreter', '1', 'html001'),
(129, 'Which of the following is not a browser ?  ', 'Microsofts Bing', 'Microsofts Bing', 'Netscape Navigato', 'Mozilla Firefox', 'Opera', '1', 'html001'),
(130, 'HTML tags are surrounded by which type of brackets', 'Angle', 'Curly', 'Round ', 'Squart', 'Angle', '1', 'html001'),
(131, 'Where can you find best quality multiple choice questions? ', 'psexam.com', 'icttrends.com', 'psexam.com', 'prepare.icttrends.co', 'mcqsets.com', '1', 'html001'),
(132, 'When images are used as links they get a blue border. a) Always b) Never c) Unless border is set to ', 'Unless border is set', 'Always ', 'Never', 'Unless border is set', 'None of these', '1', 'html001'),
(133, 'In HTML,', 'Whole document ', 'the  Element only ', 'Function only', 'Whole document ', 'Content', '1', 'html001'),
(134, 'The Internet is a global network that: ', 'uses hardware includ', 'uses the Transaction', 'uses hardware includ', ' is now completely w', 'all of the above', '1', 'html001'),
(135, 'The World Wide Web:', 'often uses the Hyper', ' (a) was created by ', 'was inspired by a tr', 'often uses the Hyper', 'all of the above', '1', 'html001'),
(136, 'IP addresses are of the form A.B.C.D where: ', 'D represents a speci', 'A is a protocol ', 'D represents a speci', ' B and C are regions', 'A, B, C & D are all ', '1', 'html001'),
(137, 'Which of the following is not true about DNS and IP addresses? ', 'each domain name has', 'a DNS server transla', 'there are 13 root DN', 'IP addresses are ass', 'each domain name has', '1', 'html001'),
(138, 'Which of the following is not true about HTML? ', 'Semantic HTML recomm', 'Semantic HTML recomm', 'The acronym stands f', ' Metadata defines pr', 'There are currently ', '1', 'c/c++001'),
(139, 'PHP Stands for?  ', 'PHP Hypertext Prepro', 'PHP Hypertex Process', 'PHP Hyper Markup Pro', 'PHP Hyper Markup Pre', 'PHP Hypertext Prepro', '1', 'php001'),
(140, 'PHP is an example of ___________ scripting language. ', 'Server-side', 'Server-side', 'Client-side', ' Browser-side', 'In-side', '1', 'php001'),
(141, 'Who is known as the father of PHP? ', 'Rasmus Lerdorf', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', 'List Barely', '1', 'php001'),
(142, 'Which of the following is not true? ', 'PHP can not be embed', 'PHP can be used to d', 'PHP makes a website ', 'PHP applications can', 'PHP can not be embed', '1', 'php001'),
(143, 'When you need to obtain the ASCII value of a character which of the following function you apply in ', 'ord( );', 'chr( );', 'asc( );', 'ord( );', 'al( );', '1', 'php001'),
(144, 'Which of the following method sends input to a script via a URL? ', 'get', 'get', 'post', 'both', 'none', '1', 'php001'),
(145, 'Which of the following function is used to pick one or more random values from PHP Array? ', 'array_rand() ', 'array_rand() ', ' array_random()', 'Random_array()', 'Rand_array()', '1', 'php001'),
(146, 'PHP variables are ', 'c) Single type varia', 'Multitype variables ', 'Double type variable', 'Single type variable', 'Trible type variable', '1', 'php001'),
(147, 'Father of PHP?', ' Rasmus Lerdorf ', 'Larry Wall ', 'Rasmus Lerdorf ', 'James Gosling', 'Guido Van Rossum', '1', 'php001'),
(148, 'PHP is ', 'Partially cross-plat', 'Partially cross-plat', 'Partially cross-plat', 'both 1 & 2', 'None of above', '1', 'php001'),
(149, 'In PHP, during error handling include() generates......................', 'a warning, but the s', 'a fatal error, and t', 'a warning, but the s', 'both 1 & 2', 'None of above', '1', 'php001'),
(150, 'The PHP syntax is most similar to:', 'PERL', 'PERL ', 'Java script', ' VB Script ', 'Visual Basic', '1', 'php001');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL,
  `user_ans` varchar(20) DEFAULT NULL,
  `score` decimal(3,0) DEFAULT NULL,
  `q_id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `sex`, `email`, `pass`, `phone`, `address`) VALUES
(7, 'raton', 'male', 'ratonibais14@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01716742711', 'dhaka'),
(9, 'Fahad', 'male', 'fahad@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01933720947', 'dhaka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `test_id` (`test_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`q_id`) REFERENCES `question` (`id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
