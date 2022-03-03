#### PROJETO FINAL - PART 2

Realizamos em conjunto a construção dos módulos:

- [mod-gcp-it](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance_template) (`Instance Template`)
- [mod-gcp-lb](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_global_forwarding_rule) (`LoadBalancer`)

Instanciamos um módulo publico para construir nossos recursos de Network:

- [terraform-google-modules/network/google](https://registry.terraform.io/modules/terraform-google-modules/network/google/latest) (`3.3.0`)

**NOTA:** Grande parte do código utilizado foi utilizado com base nos exemplos disponíveis nas documentações dos recursos, apenas parametrizamos  `variaveis` e `outputs` conforme abordado em nossas aulas.

![projeto_final](../LINKS/img/projeto_final.png)