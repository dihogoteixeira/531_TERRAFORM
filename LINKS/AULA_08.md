#### PROJETO FINAL - PART 1

1. Criamos um modulo de instance simples isolado para trabalhar com GitHub referenciando as versoes atraves de Rest utilizando tags.
REPO: `git@github.com:dihogoteixeira/8031_mod-gcp-instance.git`

2. Provisionamos um cluster de K8S utilizando scripts de inicializacao em instancias computacionais na GCP com chave ssh e firewall permitindo a conexao as mesmas. 

3. Criamos uma aplicacao simples de NGINX e a expomos com NodePort testando o acesso atraves do IP público dos nodes.

4. Iniciamos em conjunto a construção do módulo:

- [mod-gcp-igm](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_instance_group_manager) (`Instance Group Manager`)

**NOTA:** Grande parte do código utilizado foi utilizado com base nos exemplos disponíveis nas documentações dos recursos, apenas parametrizamos  `variaveis` e `outputs` conforme abordado em nossas aulas.

![projeto_final](../LINKS/img/projeto_final.png)