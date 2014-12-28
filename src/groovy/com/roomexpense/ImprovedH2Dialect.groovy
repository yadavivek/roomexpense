package com.roomexpense

import org.hibernate.dialect.H2Dialect

/**
 * Created by vivek on 5/11/14.
 */
public class ImprovedH2Dialect extends H2Dialect {
    @Override
    public String getDropSequenceString(String sequenceName) {
        return "drop sequence if exists " + sequenceName;
    }

    @Override
    public boolean dropConstraints() {
        return false;
    }
}
