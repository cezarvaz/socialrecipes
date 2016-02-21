FactoryGirl.define do
  factory :recipe do
    cuisine
    type
    preference
    sequence(:name) { |n| "Frango ao Curry #{n}" }
    servings 4
    prepare_time 30
    sequence(:difficulty) do |_n|
      Difficulty::DIFFICULTIES.sample
    end
    ingredients '1 kg de peito de frango cortado em cubos, 2 dentes de alho para temperar o frango, Vinagre ou suco de limão para temperar o frango, Sal a gosto, 1 colher rasa de sobremesa de curry, 1 cebola cortada em anéis, Óleo de soja ou azeite'
    directions 'Em uma bacia média coloque o alho espremido, o vinagre e o sal. Em seguida adicione os cubos de frango e deixe tomando o tempero por um tempinho. Em uma panela coloque as cebolas em anéis e um fio de óleo ou azeite. Deixe dourar e adicione o frango. Frite-os até que estejam dourados. Adicione 1 colher rasa (sobremesa) de curry sobre o frango. Se estiver sequinho, coloque um pouquinho de água apenas para o sabor do curry espalhar-se pelos pedaços de frango. Abaixe o fogo e deixe-os por 2 minutos, com a tampa semi-tampada.'
    image do
      File.new("#{Rails.root}/spec/images/receita-de-frango-ao-curry.jpg")
    end
  end
end
