#pre-requisite: mvn install for jar-called
Feature: call user1-get
  Scenario: call user1-get

    ## cannot step into classpath calls
    #  java.lang.NullPointerException: Cannot invoke "java.io.File.getName()" because "file" is null
    #  at io.karatelabs.debug.StackFrame.<init>(StackFrame.java:30)
    #  at io.karatelabs.debug.DapServerHandler.frames(DapServerHandler.java:129)
    #  at io.karatelabs.debug.DapServerHandler.handleRequest(DapServerHandler.java:255)
    #  at io.karatelabs.debug.DapServerHandler.channelRead0(DapServerHandler.java:208)
    #  at io.karatelabs.debug.DapServerHandler.channelRead0(DapServerHandler.java:24)

    ## breakpoints in jar feature are ignored
    * call read('classpath:examples/users/user1-get.feature')