#include "compiler/parser.hpp"
#include "compiler/asm.hpp"

class ParserTests : public TestFixture {
   public:

      void setUp(void)
      {
      }

      void tearDown(void)
      {
      }

      void testParser()
      {
         test("tests/progs/float.meld");
         test("tests/progs/visit.meld");
         test("tests/progs/list-floats.meld");
         test("tests/progs/binary.meld");
         test("tests/progs/constant.meld");
         test("tests/progs/bipartite.meld");
         test("tests/progs/include.meld");
         test("tests/progs/mfp.meld");
         test("tests/progs/heat-transfer.meld");
         test("tests/progs/belief-propagation-structs.meld");
         test("tests/progs/8queens.meld");
      }

      inline void test(const char *file)
      {
         using compiler::token;
         using compiler::parser;
         using compiler::lexer;
         using compiler::abstract_syntax_tree;
         using compiler::compiled_program;

         parser p(file);
         
         abstract_syntax_tree *ast(p.get_ast());
         ast->localize();
         ast->typecheck();

         compiled_program *prog(new compiled_program(ast));
         prog->compile();

         //p.print(std::cout);
      }

      CPPUNIT_TEST_SUITE(ParserTests);
      CPPUNIT_TEST(testParser);
      CPPUNIT_TEST_SUITE_END();
};

CPPUNIT_TEST_SUITE_REGISTRATION(ParserTests);