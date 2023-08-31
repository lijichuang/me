---
title: 基本数据管理(1)
author: 李玉闯
date: '2023-09-01'
categories:
  - R
tags:
  - NCBI
---

## 数据处理------tidyverse 中的 dplyr 包

dplyr定义了数据处理的规范，其中主要包括以下10个函数：

-   **mutate()**

-   **select()**

-   **filter()**

-   **groupby()**

-   **rename()**

-   **summarise()**

-   **left_join()**

-   **right_join()**

-   **full_join()**

### mutate() 创建新列

#### Description

<div>

mutate() creates new columns that are functions of existing variables. It can also modify (if the name is the same as an existing column) and delete columns (by setting their value to NULL).

</div>

#### Usage

```         
mutate(.data, ...)
## S3 method for class 'data.frame'
mutate(
  .data,
  ...,
  .by = NULL,
  .keep = c("all", "used", "unused", "none"),
  .before = NULL,
  .after = NULL
)
```

#### Arguments

+-------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `.data`           | A data frame, data frame extension (e.g. a tibble), or a lazy data frame (e.g. from dbplyr or dtplyr). See *Methods*, below, for more details.                                                                                                                                                                                                                              |
+-------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `...`             | \<[`data-masking`](http://127.0.0.1:42713/help/library/rlang/help/args_data_masking)\> Name-value pairs. The name gives the name of the column in the output.                                                                                                                                                                                                               |
|                   |                                                                                                                                                                                                                                                                                                                                                                             |
|                   | The value can be:                                                                                                                                                                                                                                                                                                                                                           |
|                   |                                                                                                                                                                                                                                                                                                                                                                             |
|                   | -   A vector of length 1, which will be recycled to the correct length.                                                                                                                                                                                                                                                                                                     |
|                   |                                                                                                                                                                                                                                                                                                                                                                             |
|                   | -   A vector the same length as the current group (or the whole data frame if ungrouped).                                                                                                                                                                                                                                                                                   |
|                   |                                                                                                                                                                                                                                                                                                                                                                             |
|                   | -   `NULL`, to remove the column.                                                                                                                                                                                                                                                                                                                                           |
|                   |                                                                                                                                                                                                                                                                                                                                                                             |
|                   | -   A data frame or tibble, to create multiple columns in the output.                                                                                                                                                                                                                                                                                                       |
+-------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `.by`             | \<[`tidy-select`](http://127.0.0.1:42713/help/library/dplyr/help/dplyr_tidy_select)\> Optionally, a selection of columns to group by for just this operation, functioning as an alternative to [`group_by()`](http://127.0.0.1:42713/help/library/dplyr/help/group_by). For details and examples, see [?dplyr_by](http://127.0.0.1:42713/help/library/dplyr/help/dplyr_by). |
+-------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `.keep`           | Control which columns from `.data` are retained in the output. Grouping columns and columns created by `...` are always kept.                                                                                                                                                                                                                                               |
|                   |                                                                                                                                                                                                                                                                                                                                                                             |
|                   | -   `"all"` retains all columns from `.data`. This is the default.                                                                                                                                                                                                                                                                                                          |
|                   |                                                                                                                                                                                                                                                                                                                                                                             |
|                   | -   `"used"` retains only the columns used in `...` to create new columns. This is useful for checking your work, as it displays inputs and outputs side-by-side.                                                                                                                                                                                                           |
|                   |                                                                                                                                                                                                                                                                                                                                                                             |
|                   | -   `"unused"` retains only the columns *not* used in `...` to create new columns. This is useful if you generate new columns, but no longer need the columns used to generate them.                                                                                                                                                                                        |
|                   |                                                                                                                                                                                                                                                                                                                                                                             |
|                   | -   `"none"` doesn't retain any extra columns from `.data`. Only the grouping variables and columns created by `...` are kept.                                                                                                                                                                                                                                              |
+-------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| `.before, .after` | \<[`tidy-select`](http://127.0.0.1:42713/help/library/dplyr/help/dplyr_tidy_select)\> Optionally, control where new columns should appear (the default is to add to the right hand side). See [`relocate()`](http://127.0.0.1:42713/help/library/dplyr/help/relocate) for more details.                                                                                     |
+-------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

#### Value

An object of the same type as `.data`. The output has the following properties:

-   Columns from `.data` will be preserved according to the `.keep` argument.

-   Existing columns that are modified by `...` will always be returned in their original location.

-   New columns created through `...` will be placed according to the `.before` and `.after` arguments.

-   The number of rows is not affected.

-   Columns given the value `NULL` will be removed.

-   Groups will be recomputed if a grouping variable is mutated.

-   Data frame attributes are preserved.

#### Useful mutate functions

-   [`+`](http://127.0.0.1:42713/help/library/dplyr/help/%2B), [`-`](http://127.0.0.1:42713/help/library/dplyr/help/-), [`log()`](http://127.0.0.1:42713/help/library/dplyr/help/log), etc., for their usual mathematical meanings

-   [`lead()`](http://127.0.0.1:42713/help/library/dplyr/help/lead), [`lag()`](http://127.0.0.1:42713/help/library/dplyr/help/lag)

-   [`dense_rank()`](http://127.0.0.1:42713/help/library/dplyr/help/dense_rank), [`min_rank()`](http://127.0.0.1:42713/help/library/dplyr/help/min_rank), [`percent_rank()`](http://127.0.0.1:42713/help/library/dplyr/help/percent_rank), [`row_number()`](http://127.0.0.1:42713/help/library/dplyr/help/row_number), [`cume_dist()`](http://127.0.0.1:42713/help/library/dplyr/help/cume_dist), [`ntile()`](http://127.0.0.1:42713/help/library/dplyr/help/ntile)

-   [`cumsum()`](http://127.0.0.1:42713/help/library/dplyr/help/cumsum), [`cummean()`](http://127.0.0.1:42713/help/library/dplyr/help/cummean), [`cummin()`](http://127.0.0.1:42713/help/library/dplyr/help/cummin), [`cummax()`](http://127.0.0.1:42713/help/library/dplyr/help/cummax), [`cumany()`](http://127.0.0.1:42713/help/library/dplyr/help/cumany), [`cumall()`](http://127.0.0.1:42713/help/library/dplyr/help/cumall)

-   [`na_if()`](http://127.0.0.1:42713/help/library/dplyr/help/na_if), [`coalesce()`](http://127.0.0.1:42713/help/library/dplyr/help/coalesce)

[`if_else()`](http://127.0.0.1:42713/help/library/dplyr/help/if_else), [`recode()`](http://127.0.0.1:42713/help/library/dplyr/help/recode), [`case_when()`](http://127.0.0.1:42713/help/library/dplyr/help/case_when)
