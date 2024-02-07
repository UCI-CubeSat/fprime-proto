// ======================================================================
// \title  HelloWorld.hpp
// \author ubuntu
// \brief  hpp file for HelloWorld component implementation class
// ======================================================================

#ifndef Components_HelloWorld_HPP
#define Components_HelloWorld_HPP

#include "Components/HelloWorld/HelloWorldComponentAc.hpp"

namespace Components {

  class HelloWorld :
    public HelloWorldComponentBase
  {

    public:

      // ----------------------------------------------------------------------
      // Component construction and destruction
      // ----------------------------------------------------------------------

      //! Construct HelloWorld object
      HelloWorld(
          const char* const compName //!< The component name
      );

      //! Destroy HelloWorld object
      ~HelloWorld();

    PRIVATE:
      U32 m_greetingCount;

      // ----------------------------------------------------------------------
      // Handler implementations for commands
      // ----------------------------------------------------------------------

      //! Handler implementation for command SAY_HELLO
      //!
      //! Command to issue greeting with max len 20 char
      void SAY_HELLO_cmdHandler(
          FwOpcodeType opCode, //!< The opcode
          U32 cmdSeq, //!< The command sequence number
          const Fw::CmdStringArg& greeting //!< Greeting to repeat in the Hello event
      );

  };

}

#endif
