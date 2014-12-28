package com.roomexpense

class ExpenseTagLib {
    static defaultEncodeAs = [taglib:'html']
    static namespace = "exp"
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]

    def totalExpense = {attrs->
        PersonalDetail personalDetail = attrs.personalDetail
        List<Expense> expenses = personalDetail.expenses as List
        BigDecimal total = 0.0
        expenses.each { expense->
            total += expense.value
        }
        out << total
    }
}
