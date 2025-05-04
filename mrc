import { useState } from "react";
import { Card, CardContent } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import emailjs from "emailjs-com";

export default function Estudo01() {
  const [nome, setNome] = useState("");
  const [respostas, setRespostas] = useState({});

  const handleChange = (e, pergunta) => {
    setRespostas({ ...respostas, [pergunta]: e.target.value });
  };

  const handleSubmit = (e) => {
    e.preventDefault();

    const templateParams = {
      nome,
      respostas: Object.entries(respostas)
        .map(([pergunta, resposta]) => `${pergunta}: ${resposta}`)
        .join("\n\n"),
    };

    emailjs
      .send("SEU_SERVICE_ID", "SEU_TEMPLATE_ID", templateParams, "SEU_PUBLIC_KEY")
      .then(
        (result) => {
          alert("Respostas enviadas com sucesso!");
          console.log(result.text);
        },
        (error) => {
          alert("Erro ao enviar. Tente novamente.");
          console.error(error.text);
        }
      );
  };

  const introducao = `📖 Estudo 1 — Convicção de Salvação
Introdução
É fundamental que tenhamos convicção em nossa vida.
A Bíblia garante que podemos ter convicção da vida eterna.

Sem esta convicção, é impossível viver a vida cristã.
Ao fazer o estudo, examine como está a sua convicção à luz da Palavra de Deus.

🛐 Necessidades para que alguém seja salvo (Torne-se filho de Deus ou nasça de novo)
1. Arrepender-se dos seus pecados — Atos 20:21
Todos são pecadores (Romanos 3:23) e precisam de arrependimento.

2. Colocar a fé em Jesus Cristo — Atos 20:21
A fé não deve ser colocada em coisas, religiões, obras, sentimentos, pessoas ou méritos próprios, mas em Cristo.
Jesus levou na cruz os nossos pecados — 1 Pedro 2:24.
Ele é o único que pode nos salvar — 1 Timóteo 2:5.

3. Entregar a vida a Jesus Cristo — João 1:12
✝️ Deus é quem nos dá a salvação inteiramente de graça.
Somos salvos pela bondade e misericórdia de Deus, sem qualquer mérito nosso (Efésios 2:8-9; Tito 3:4-5).
O homem precisa:
- Reconhecer que sem Jesus está perdido,
- Desejar mudar de vida,
- Arrepender-se dos seus pecados,
- Pela fé, entregar totalmente a sua vida a Jesus Cristo.

🎁 Benefícios recebidos por alguém que nasce de novo
- Os seus pecados são perdoados — 1 João 1:9.
- Torna-se filho de Deus — João 1:12 e Gálatas 3:26.
- Passa a pertencer à família de Deus — Efésios 2:19.
- É justificado (declarado justo por Deus) — Romanos 5:1.
- Passa a ter paz com Deus — Romanos 5:1.
- Fica livre da condenação — Romanos 8:1 e João 5:24.
- Recebe uma nova vida — 2 Coríntios 5:17 e Efésios 2:1.

📖 Podemos ter certeza da vida eterna
Leia os versículos e observe em que tempo está o verbo:
João 3:18 ➔ _______
João 5:24 ➔ _______
1 João 5:12 ➔ _______
📝 Os versículos acima falam de uma realidade presente.

📜 Podemos afirmar que temos a vida eterna pelas seguintes razões:
1. Deus não mente — Tito 1:2
2. O Espírito Santo confirma isso:
- Romanos 8:16 — O Espírito Santo testifica com o nosso espírito.
- Efésios 1:13-14 — Somos selados com o Espírito Santo.
- 1 João 4:13 — O Espírito Santo nos foi dado.

🔥 Pela transformação de vida produzida em nós por Jesus Cristo
Compare o que éramos e o que passamos a ser:

O que eram - 1 Coríntios 6:9-10	O que passaram a ser - 1 Coríntios 6:11
injustos, impuros, idólatras, adúlteros, efeminados, sodomitas, ladrões, avarentos, bêbados, maldizentes, roubadores	foram lavados, foram santificados, foram justificados

📝 Nota: Deus é quem produz a transformação por causa do Seu grande amor, pelo sangue de Jesus.

Tito 3:3	Tito 3:4-7
néscios, desobedientes, desgarrados, escravos de toda sorte de paixões e prazeres, vivendo em malícia e inveja, odiosos, odiando os outros	pela bondade de Deus: salvos (regenerados), justificados pela graça de Deus, herdeiros de Deus, receberam a vida eterna

🔔 Pergunta: De que lado você está?

🌱 Evidências na vida de quem já nasceu de novo
- Deseja conhecer e praticar a Palavra de Deus — 1 Pedro 2:2; 1 João 2:3-5.
- Procura seguir o exemplo de Cristo — 1 João 2:6; 1 Pedro 2:21.
- Não vive praticando o pecado — 1 João 3:6-10.
- Procura falar de Jesus a outras pessoas — Atos 4:20.
- Mantém comunhão com Deus — 1 João 1:3; João 15:5.
- Ama os irmãos e vive em comunhão — 1 João 3:13-18.

🚶‍♂️ A continuidade da nova vida — Filipenses 2:12
O novo nascimento é o início da vida com Deus.
A nova vida recebida precisa ser desenvolvida.
O crescimento é pela graça de Deus e pela obediência total à Palavra de Deus.

📌 Conclusão
Deus não nos salva para uma vida inativa e infrutífera (João 15:16).
Comece a servir desde já!
- Estude a Palavra de Deus.
- Fale com outros sobre Jesus.
- Reúna-se com seus irmãos para adorar a Deus e viver em comunhão.`;

  const complemento = `

🧠 Para Memorizar
João 5:24
"Em verdade, em verdade vos digo: Quem ouve a minha palavra e crê naquele que me enviou, tem a vida eterna, não entra em juízo, mas passou da morte para a vida."

🙏 Para Praticar
O novo nascimento acontece quando a pessoa se arrepende e, pela fé, aceita Jesus Cristo.

Desafio:
Se você já nasceu de novo, conte seu testemunho para outras pessoas!
Lembre-se: é tudo pela graça de Deus.

📖 Leitura Bíblica
Leitura: 1ª Carta de João.
Objetivo: Descobrir as características de quem nasceu de novo.
(Compartilhe suas descobertas com o grupo.)`;

  const perguntas = [
    "Qual a situação da pessoa sem Cristo? (Efésios 2:1)",
    "Defina o que é pecado:",
    "O que o pecado faz entre o homem e Deus? (Isaías 59:2)",
    "De acordo com Romanos 3:10-12 e 23, assinale a correta:\n( ) Ninguém é pecador\n( ) Alguns são pecadores\n( ) Todos, indistintamente, são pecadores",
    "Qual o único meio de quebrar a barreira entre homem e Deus? (João 14:6 e Atos 4:12)",
    "Como a pessoa pode ser salva? a) Atos 3:19",
    "Como a pessoa pode ser salva? b) João 1:12",
    "Quanto às boas obras:\n( ) Elas ajudam na salvação.\n( ) Elas não têm valor para a salvação.\n( ) Só podem ser praticadas depois da salvação.",
    "Você tem certeza da sua salvação? ( ) Sim ( ) Não — Por quê?",
    "Por que Jesus deve ser o Senhor da sua vida? (1 Coríntios 6:19-20)",
    "O que acontece no momento em que cremos em Cristo? (Efésios 1:13)",
    "De acordo com Colossenses 3:1-2: Ordem 1",
    "De acordo com Colossenses 3:1-2: Ordem 2",
    "O que significa isso? 1",
    "O que significa isso? 2"
  ];

  return (
    <div className="max-w-2xl mx-auto p-6 space-y-6">
      <h1 className="text-3xl font-bold text-center">Caminho em Cristo - Estudo 01</h1>
      <p className="text-center text-sm text-gray-500">
        Preencha seu nome e responda às perguntas abaixo:
      </p>

      <form onSubmit={handleSubmit} className="space-y-4">
        <Input
          type="text"
          placeholder="Nome completo"
          value={nome}
          onChange={(e) => setNome(e.target.value)}
          required
        />

        <Card>
          <CardContent className="space-y-4 pt-4">
            <p className="text-gray-700 whitespace-pre-line">{introducao}</p>
            {perguntas.map((pergunta, index) => (
              <div key={index}>
                <p className="font-semibold whitespace-pre-line">{index + 1}. {pergunta}</p>
                <Input
                  type="text"
                  value={respostas[pergunta] || ""}
                  onChange={(e) => handleChange(e, pergunta)}
                  required
                />
              </div>
            ))}
            <p className="text-gray-700 whitespace-pre-line">{complemento}</p>
          </CardContent>
        </Card>

        <Button type="submit" className="w-full">
          Enviar Respostas
        </Button>
      </form>
    </div>
  );
}

