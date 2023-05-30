## Formatting

- [ ] My tutorial has only one top-level (`#`) header

## Reproducibility

- [ ] My tutorial works on Google Colab
- [ ] My tutorial sets `scvi.settings.seed = 0` at the beginning of the notebook
- [ ] My tutorial has been run and includes outputs (e.g. plots, tables)

## Other

- [ ] Counts and normalized data should co-exist in the datasets, see the [API overview](https://docs.scvi-tools.org/en/stable/tutorials/notebooks/api_overview.html) for an example
- [ ] For scRNA-seq data, normalization should be counts per median library size and then log1p transformed -- if not, a reason should be given
