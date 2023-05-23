Thank you for your contribution to scvi-tools. Please read the following checklist before
submitting your pull request.

---

## General

-   [ ] I have read the [contributing guide](https://docs.scvi-tools.org/en/stable/contributing/index.html)
-   [ ] I have verified that there are no other pull requests open for the same fix or feature

## Description

-   [ ] I have linked the relevant issue(s) and/or included a description of the changes to this section
-   [ ] If the changes fully address an issue, I have added `Fixes #<issue number>` to the PR description

## Documentation

-   [ ] I have added appropriate comments and documentation where necessary

## Formatting

-   [ ] My tutorial has only one top-level (`#`) header

## Reproducibility

-   [ ] My tutorial works on Google Colab
-   [ ] My tutorial sets `scvi.settings.seed = 0` at the beginning of the notebook
-   [ ] My tutorial has been run and includes outputs (e.g. plots, tables)

## Other

-   [ ] Counts and normalized data should co-exist in the datasets, see the [API overview](https://docs.scvi-tools.org/en/stable/tutorials/notebooks/api_overview.html) for an example
-   [ ] Normalization should be counts per median library size and then log1p transformed -- if not, a reason should be given
