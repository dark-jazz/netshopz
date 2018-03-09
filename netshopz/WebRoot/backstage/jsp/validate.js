/**
 * Created by Administrator on 2017/12/29.
 */

$.extend($.fn.validatebox.defaults.rules, {

    Mobile: {//value值为文本框中的值
        validator: function (value) {
            var reg = /^1[3|4|5|8|9]\d{9}$/;
            return reg.test(value);
        },
        message: '你输入11位正确的手机号',
}

})


