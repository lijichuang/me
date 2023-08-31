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
