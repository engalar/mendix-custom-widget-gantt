# 重命名

[参考](https://github.com/engalar/mendix-custom-widget-radar/commit/07fd0dfb69b781c0b31cdb5502678304c954383c)

# 试用

```
git clone https://gitee.com/engalar/mendix-custom-widget-template.git --depth=1 ./dummy && cd ./dummy && git clone https://gitee.com/engalar/mendix-testproject-800.git --depth=1 ./tests/testProject && rd /s /q  .\tests\testProject\.git && xcopy dummy .\tests\testProject /E /Y && start tests/testProject/testProject.mpr
```

# 开发

```
git clone --recurse-submodules https://gitee.com/engalar/mendix-custom-widget-template.git.&& npm run m && npm run x && npm run testProject && npm run start
```
