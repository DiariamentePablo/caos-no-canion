# DEVLOG

## Aula 08 -- 07/10

O que eu fiz: Colisões, movimentação sem gravidade, objeto do Player, cenário da vila, um tileset
O que travou: Ao adicionar as colisões dos arbustos altos, a colisão não estava preenchendo o tile inteiro
Como resolvi: Um ajuste das colisões em TileSet

## Aula 09 -- 21/10

O que eu fiz: Inimigos vermelhos que vão atrás do alvo, nascedouros de onde inimigos nascem, um sistema de dano e vida pras entidades, condições de vitória e derrota, um ataque para o jogador.
O que travou: Dificuldades ao configurar os nós Label.
Como resolvi: Pesquisando mais sobre eu descobri que a configuração necessária aparecia em uma área separada que não era o inspetor.

### 17/11

O que eu fiz: Adicionei texturas que serão utilizadas em antecipação para uma mudança planejada ao mapa, UI agora mostra a vida do objeto alvo.
O problema: Os zumbis perseguem o objeto mas a interface ainda mostra a vida do usuário ao invés do objeto.
Como resolvi: Nova variável vida adicionada ao cálculo de dano recebido para substituir um número mágico, UI agora mostra a diferença entre vida inicial do objeto e dano recebiddo.

## Aula 10 -- 18/11

O que eu fiz: Função de pathfinding adicionada aos inimigos, indicadores visuais adicionados para o ataque do jogador, complemento para a UI agora mostra a vida do objeto e do jogador simultaneamente.
O que travou: Problemas desconhecidos com o tamanho do espaço livre ao redor de objetos fecharam rotas de caminho que deveriam estar abertas aos inimigos.
Como resolvi: Mitigado com ajustes ao parâmetro Cells -> Border Size de 0 para 6, ainda não resolvido.