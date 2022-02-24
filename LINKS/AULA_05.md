#### Pratice Labs:

Instruções:

Para facilitar a organização, para cada exercício, crie uma pasta em separado. Utilize o terraform plan para realizar os testes de seu script.

Aproveite parar fazer seus testes, todo novo atributo que for criado, faça sempre o `terraform plan` e o `terraform validate` para verificar a saída no output.

Caso houver qualquer erro, leia atentamente o terminal.

1. Crie uma VPC não auto gerenciada

2. Crie uma sub-rede 10.240.1.0/24 e faça o vínculo com a VPC

3. Crie 4 máquinas virtuais utilizando a rede criada. `Com seus nomes construidos dinamicamente`

4. Crie uma regra de Firewall permitindo o `ingress` TCP 22 para maquinas com tag: `admin`

5. Crie uma regra de Firewall permitindo o `ingress` TCP 80 para maquinas com tag: `web`

`
Obs: lembre-se de ao final destruir sua infraestrutura  por questões de billing e manutenção sadia da sua free tier.
`