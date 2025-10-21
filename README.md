# Terraform Modules Collection

This repository contains a collection of **Terraform modules** for different providers. Each module is designed to be **reusable**, **configurable via variables**, and follows Terraform best practices.

> 💡 Modules will be added and updated as new needs arise.

---

## Repository Structure

Modules are organized by provider and category. Each module typically contains:

- `main.tf` — main resources of the module
- `variables.tf` — input variables for customization
- `outputs.tf` — module outputs
- `versions.tf` — required Terraform and provider versions
- `README.md` — module-specific documentation
- `examples/` (optional) — usage examples

## How to Use a Module

You can use any module in this repository by referencing the GitHub path:

```hcl
module "cloudflare_tunnel" {
  source = "git::https://github.com/Eichinosho/terraform-modules.git//cloudflare/zero-trust/tunnel"

  # module input variables
  tunnel_name = "my-tunnel"
  # other variables...
}
````

> ⚠️ Note the double `//` indicating the subdirectory of the module within the repository.

---

## Contributing

Contributions are welcome!

* Add new modules in a separate directory under the provider folder.
* Follow the standard structure: `main.tf`, `variables.tf`, `outputs.tf`, `versions.tf`, and optionally `examples/`.
* Update this README with a brief description of the new module.

---

## License

This repository is licensed under the Apache 2.0 License. See [LICENSE](LICENSE) for details.

```
