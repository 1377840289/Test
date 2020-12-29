import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import Login from '@/components/Login'
import Table from '@/components/nav1/Table'
import add from '@/components/nav1/add'
import edit from '@/components/nav1/edit'
import Form from '@/components/nav2/Form'
import Test from '@/components/nav3/Test'
import User from '@/components/nav3/User'
//
Vue.use(Router)

export default new Router({
    routes: [{
            path: '/login',
            name: 'Login',
            component: Login,
        },
        {
            path: '/',
            component: Home,
        },
        {
            path: '/',
            name: '导航一',
            component: Home,

            children: [
                { path: '/table', component: Table, name: '商品列表 ' }
            ]
        },
        {
            path: '/',
            name: '导航一',
            component: Home,

            children: [
                { path: '/edit', component: edit, name: '商品编辑 ' }
            ]
        },
        {
            path: '/',
            name: '导航一',
            component: Home,

            children: [
                { path: '/add', component: add, name: '商品添加 ' }
            ]
        },
        {
            path: '/',
            name: '导航二',
            component: Home,
            children: [
                { path: '/form', component: Form, name: 'form' }
            ]
        },
        {
            path: '/',
            name: '导航三',
            component: Home,
            children: [
                { path: '/test', component: Test, name: 'test' },
                { path: '/user', component: User, name: 'user' }
            ]
        }
    ]
})