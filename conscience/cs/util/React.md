# React 开发手册

## reference

- [React-vim env configuration](https://getaround.tech/setting-up-vim-for-react/)
- [Emmet-vim tutorial](https://blog.zfanw.com/zencoding-vim-tutorial-chinese/)
- [TypeScript-React](https://typescript.bootcss.com/tutorials/react-&-webpack.html)

## .eslintrc.js

### JavaScript

```js
module.exports = {
    "root": true,
    "parserOptions": {
        "parser": 'babel-eslint',
         "sourceType": 'module'
    },
    "extends": [
        "eslint:recommended",
        "plugin:react/recommended",
        "eslint-config-airbnb",
    ],
    "plugins": [
        "react",
    ],
    "rules": {
        "react/jsx-filename-extension": [1, { "extensions": [".js", ".jsx"] }],
        "react/prefer-stateless-function": "off"
    },
};
```

## 开发环境

本地开发环境配置.

### TypeScript

```npm
npm install -g typescript
```

对于使用 create-react-app 脚本构建的项目:

```shell
create-react-app ${my-app} --scripts-version=react-scripts-ts
```

### JavaScript

```shell
yarn add --dev eslint babel-eslint eslint-plugin-react
eslint --init
yarn add --dev prettier eslint-config-prettier eslint-plugin-prettier
```
