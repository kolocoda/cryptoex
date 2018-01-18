package com.ugarsoft.cryptoex.util;

public enum ViewEnums {
	LOGIN_VIEW("partial/user/login"),
	REGISTER_VIEW("partial/user/register");
	
	private String assetName;

    private ViewEnums(String assetName) {
        this.assetName = assetName;
    }

    @Override
    public String toString() {
        return assetName;
    }
}
