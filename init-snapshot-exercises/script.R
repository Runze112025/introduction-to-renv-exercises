# 使用 library() 加载整个包
library(ggplot2)
library(dplyr)

# 使用加载后的函数（不需要加包名）
data(mpg)
mpg %>%
  dplyr::filter(class == "compact") %>%
  dplyr::group_by(manufacturer) %>%
  dplyr::summarise(mean_hwy = mean(hwy)) %>%
  print()

# 使用 ggplot2 绘图（不加包名，因为已经 library(ggplot2)）
ggplot(mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point()

# 使用命名空间方式调用函数（不加载包）
plotly::ggplotly(ggplot(mpg, aes(displ, hwy)) + geom_point())

# 使用 readr::read_csv() 读取数据
df <- readr::read_csv("https://raw.githubusercontent.com/mwaskom/seaborn-data/master/iris.csv")
print(head(df))
