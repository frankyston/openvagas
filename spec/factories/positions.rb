FactoryBot.define do
  factory :position do
    name { 'Vaga 1' }
    career { 2 }
    contract { 2 }
    city { 'Fortaleza' }
    state { 'CE' }
    summary { 'Resumo da vaga' }
    company
  end
end
