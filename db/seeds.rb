cuisine1 = Cuisine.create!(name: 'Brasileira')

cuisine2 = Cuisine.create!(name: 'Americana')

cuisine3 = Cuisine.create!(name: 'Espanhola')

type1 = Type.create!(name: 'Principal')

type2 = Type.create!(name: 'Sobremesa')

type3 = Type.create!(name: 'Entrada')

recipe1 = Recipe.create!(name: 'Frango ao Curry',
                        cuisine: cuisine1,
                        type: type1,
                        food_preferences: 'Frango',
                        servings: 4,
                        prepare_time: 30,
                        difficulty: 'Fácil',
                        ingredients: '1 kg de peito de frango cortado em cubos, 2 dentes de alho para temperar o frango, Vinagre ou suco de limão para temperar o frango, Sal a gosto, 1 colher rasa de sobremesa de curry, 1 cebola cortada em anéis, Óleo de soja ou azeite',
                        directions: 'Em uma bacia média coloque o alho espremido, o vinagre e o sal. Em seguida adicione os cubos de frango e deixe tomando o tempero por um tempinho. Em uma panela coloque as cebolas em anéis e um fio de óleo ou azeite. Deixe dourar e adicione o frango. Frite-os até que estejam dourados. Adicione 1 colher rasa (sobremesa) de curry sobre o frango. Se estiver sequinho, coloque um pouquinho de água apenas para o sabor do curry espalhar-se pelos pedaços de frango. Abaixe o fogo e deixe-os por 2 minutos, com a tampa semi-tampada.',
                        image: File.new("spec/images/receita-de-frango-ao-curry.jpg"))

recipe2 = Recipe.create!(name: 'Cheesecake',
                        cuisine: cuisine2,
                        type: type2,
                        food_preferences: 'Doces',
                        servings: 10,
                        prepare_time: 60,
                        difficulty: 'Média',
                        ingredients: '1 pacote de biscoito maizena, 100gr de manteiga light, 3 caixinhas de cream chesse, 1 lata de leite condensado, 4 ovos, 1 xícara de morangos, 1 xícara de amoras ou framboesas, 1 xícara de água, 2 colheres (sopa) conhaque ou rum, 1/2 xícara de açúcar',
                        directions: 'Bata os biscoitos no liquidificador até virar uma farofa, Misture a manteiga levemente derretida, até virar uma pasta de fácil manuseio, sem grudar entre os dedos, No liquidificador, bata os ovos com o cream cheese e o leite condensado até virar uma mistura bem homogênea, Se quiser, pode colocar algumas gotinhas de baunilha, Enquanto a torta está no forno, prepare a calda, Pique os morangos, amoras ou framboesas e refogue em fogo baixo, acrescentando a água aos poucos, Coloque o açúcar, também aos poucos, e deixe as frutas cozinharem até ficarem bem moles, em consistência de uma calda espessa, Por fim, coloque o conhaque ou rum, e espere evaporar, Prove e regule o açúcar, se necessário, Reserve até esfriar, Pré-aqueça o forno a 180º, Unte com manteiga e farinha uma forma própria para tortas com até 26cm de diâmetro, Forre a base da forma com o biscoito moído fazendo uma camada de cerca de 0,5 cm, Forre as laterais com papel manteiga e deixe bem preso na lateral, Despeje o recheio na forma e dê suaves batidinhas para tirar as bolhas da torta, Leve ao forno médio por cerca de 40 minutos ou até a superfície ganhar cor, Observe se as laterais estão desgrudadas do papel manteiga, Retire a torta do forno e deixe esfriar, Desenforme com cuidado e tire o papel manteiga suavemente, Coloque a calda por cima de toda a torta e leve à geladeira',
                        image: File.new("spec/images/cheesecake.jpg"))

recipe3 = Recipe.create!(name: 'Gazpacho',
                        cuisine: cuisine3,
                        type: type3,
                        food_preferences: 'Sopa',
                        servings: 4,
                        prepare_time: 30,
                        difficulty: 'Fácil',
                        ingredients: '3 xícaras de suco de tomate, 3 colheres (sopa) de azeite, 3 tomates sem pele e sem sementes, 1 cebola pequena, 1 pimentão verde, 1 pepino descascado e sem sementes, 1 dente de alho, 1 colher (chá) de açúcar, Sal e molho de pimenta a gosto.',
                        directions: 'Bata no liquidificador, tampado e em velocidade alta, todos os ingredientes, Coloque, aos poucos, até que estejam bem triturados, Coloque numa tigela grande, Cubra e leve a geladeira',
                        image: File.new("spec/images/gazpacho.jpg"))
