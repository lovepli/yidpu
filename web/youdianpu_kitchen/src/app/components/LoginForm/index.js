import React, { Component, Fragment } from 'react';
import { Button, Icon, Form, Input, Alert } from 'antd';

import jQuery from 'jquery';
require('virtual-keyboard/dist/css/keyboard-basic.min.css')
require('virtual-keyboard');
require('virtual-keyboard/dist/js/jquery.keyboard.extension-typing.min.js');

import styles from './index.less';

const FormItem = Form.Item;

class LoginForm extends Component {

    constructor(props) {
        super(props);
    }

    componentDidMount() {
        jQuery('#codeInput').keyboard({
            openOn : null,
            usePreview: false, // disabled for contenteditable
            stayOpen : true,
            autoAccept: true,
            maxLength: 4,
            layout : 'qwerty',
            display: {
                accept: '输入完毕',
                enter: '回车'
            }
        }).addTyping();
        jQuery('#password').keyboard({
            openOn : null,
            usePreview: false, // disabled for contenteditable
            stayOpen : true,
            autoAccept: true,
            layout : 'qwerty',
            display: {
                accept: '输入完毕',
                enter: '回车'
            }
        }).addTyping();
        jQuery('#username').keyboard({
            openOn : null,
            stayOpen : true,
            usePreview: false, // disabled for contenteditable
            useCombos: false,
            autoAccept: true,
            layout: 'qwerty',
            display: {
                accept: '输入完毕',
                enter: '回车'
            },
            accepted: (e, keyboard, el) => {
                console.log(e);
                console.log(keyboard);
                console.log(el.value);
            }
        }).addTyping();
    }

    handleSubmit = (e) => {
        e.preventDefault();
        this.props.form.validateFields((err, values) => {
            if (!err) {
                this.props.onSubmit(values);
            }
        });
    }

    handleUserNameClick = () => {
        const kb = jQuery('#username').getkeyboard();
        // close the keyboard if the keyboard is visible and the button is clicked a second time
        if ( kb.isOpen ) {
            kb.close();
        } else {
            kb.reveal();
        }
    }

    handlePasswordClick = () => {
        const kb = jQuery('#password').getkeyboard();
        // close the keyboard if the keyboard is visible and the button is clicked a second time
        if ( kb.isOpen ) {
            kb.close();
        } else {
            kb.reveal();
        }
    }

    handleCodeClick = () => {
        const kb = jQuery('#codeInput').getkeyboard();
        // close the keyboard if the keyboard is visible and the button is clicked a second time
        if ( kb.isOpen ) {
            kb.close();
        } else {
            kb.reveal();
        }
    }

    render() {
        const { getFieldDecorator } = this.props.form;
        return (
            <Form onSubmit={this.handleSubmit} className={styles['login-form']}>
                {this.props.errorMessage ? <Alert message={this.props.errorMessage} type="error" showIcon className={styles['alert']}/> : null}
                <FormItem>
                    {getFieldDecorator('username', {
                        rules: [{ required: true, message: '请输入用户名或者手机号!' }],
                    })(
                        <Input id="username" size="large" prefix={<Icon type="user" style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="用户名/手机号" 
                            suffix={<img src="/images/keyboard.svg"
                            style={{ color: 'rgba(0,0,0,.25)', cursor: 'pointer' }}
                            onClick={this.handleUserNameClick}/>}
                        />
                    )}
                </FormItem>
                <FormItem>
                    {getFieldDecorator('password', {
                        rules: [{ required: true, message: '请输入密码!' }],
                    })(
                        <Input id="password" size="large" prefix={<Icon type="lock" style={{ color: 'rgba(0,0,0,.25)' }} />} type="password" placeholder="密码" 
                            suffix={<img src="/images/keyboard.svg"
                            style={{ color: 'rgba(0,0,0,.25)', cursor: 'pointer' }}
                            onClick={this.handlePasswordClick}/>}
                        />
                    )}
                </FormItem>
                <FormItem>
                    {getFieldDecorator('code', {
                        rules: [{ required: true, message: '请输入验证码!' }],
                    })(
                        <div>
                            <Input id="codeInput" size="large" style={{width: 200}} prefix={<Icon type="code" style={{ color: 'rgba(0,0,0,.25)'}} />} placeholder="验证码" maxLength="4"
                                suffix={<img src="/images/keyboard.svg"
                                style={{ color: 'rgba(0,0,0,.25)', cursor: 'pointer' }}
                                onClick={this.handleCodeClick}/>}
                            />
                            <img style={{paddingBottom: 5, marginLeft: 4, marginRight: 4}} src={`${this.props.validateCodeURL}?time=${this.props.time}`}/><a href="#" onClick={this.props.refreshValidateCode}>换一个</a>
                        </div>
                    )}
                </FormItem>
                <FormItem>
                    {/* getFieldDecorator('remember', {
                        valuePropName: 'checked',
                        initialValue: true,
                    })(
                        <Checkbox>自动登录</Checkbox>
                    ) */}
                    <Button loading={this.props.loginLoading} type="primary" htmlType="submit" className={styles['login-form-button']}>登录</Button>
                    <br/>
                    <a className={styles["login-form-forgot"]} href="">忘记密码</a>
                </FormItem>
            </Form>
        );
    }

}

const WrappedLoginForm = Form.create()(LoginForm);
export default WrappedLoginForm;