
CXX = g++

CXXFLAGS = -Wall -g

SRCS = main.cc helloFunc.cc

OBJS = $(SRCS:.cc=.o)

TARGET = main

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

%.o: %.cc
	$(CXX) $(CXXFLAGS) -o $@ -c $<

clean:
	rm -f $(TARGET) $(OBJS)
