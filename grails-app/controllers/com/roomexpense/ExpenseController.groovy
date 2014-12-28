package com.roomexpense

class ExpenseController {

    def index() {
        if (params.personalDetailId) {
            PersonalDetail personalDetail = PersonalDetail.findById(params.personalDetailId)
            [personalDetail: personalDetail]
        }
    }
}
