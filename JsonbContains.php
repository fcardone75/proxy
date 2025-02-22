   namespace App\Doctrine;

   use Doctrine\ORM\Query\AST\Functions\FunctionNode;
   use Doctrine\ORM\Query\Lexer;
   use Doctrine\ORM\Query\Parser;
   use Doctrine\ORM\Query\SqlWalker;

   class JsonbContains extends FunctionNode
   {
       public $jsonField = null;
       public $jsonValue = null;

       public function getSql(SqlWalker $sqlWalker)
       {
           return sprintf(
               '%s @> %s',
               $this->jsonField->dispatch($sqlWalker),
               $this->jsonValue->dispatch($sqlWalker)
           );
       }

       public function parse(Parser $parser)
       {
           $parser->match(Lexer::T_IDENTIFIER);
           $parser->match(Lexer::T_OPEN_PARENTHESIS);
           $this->jsonField = $parser->ArithmeticPrimary();
           $parser->match(Lexer::T_COMMA);
           $this->jsonValue = $parser->ArithmeticPrimary();
           $parser->match(Lexer::T_CLOSE_PARENTHESIS);
       }
   }



   doctrine:
       orm:
           dql:
               string_functions:
                   JSONB_CONTAINS: App\Doctrine\JsonbContains



$queryBuilder
       ->andWhere('JSONB_CONTAINS(entity.roles, :roles) = true')
       ->setParameter('roles', json_encode(['ROLE_ADMIN']));
