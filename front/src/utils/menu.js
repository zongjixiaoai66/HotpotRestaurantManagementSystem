const menu = {
    list() {
        return [
    {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"菜品管理",
                        "menuJump":"列表",
                        "tableName":"caipin"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"菜品评价管理",
                        "menuJump":"列表",
                        "tableName":"caipinCommentback"
                    }
                    ,
                    {
                        "buttons":[
                            "订单",
                            "查看",
                            "删除"
                        ],
                        "menu":"菜品订单管理",
                        "menuJump":"列表",
                        "tableName":"caipinOrder"
                    }
                ],
                "menu":"菜品管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"菜品类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryCaipin"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"公告类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryNews"
                    }
                ],
                "menu":"基础数据管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"论坛管理",
                        "menuJump":"列表",
                        "tableName":"forum"
                    }
                ],
                "menu":"论坛管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告信息管理",
                        "menuJump":"列表",
                        "tableName":"news"
                    }
                ],
                "menu":"公告信息管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"会员管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"会员管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"轮播图管理",
                        "menuJump":"列表",
                        "tableName":"config"
                    }
                ],
                "menu":"轮播图信息"
            }
        ],
        "frontMenu":[],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    },
	{
	    "backMenu":[
	        {
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                    ],
	                    "menu":"菜品管理",
	                    "menuJump":"列表",
	                    "tableName":"caipin"
	                }
	                ,
	                {
	                    "buttons":[
	                        "查看",
	                        "删除"
	                    ],
	                    "menu":"菜品评价管理",
	                    "menuJump":"列表",
	                    "tableName":"caipinCommentback"
	                }
	                ,
	                {
	                    "buttons":[
	                        "订单",
	                        "查看",
	                    ],
	                    "menu":"菜品订单管理",
	                    "menuJump":"列表",
	                    "tableName":"caipinOrder"
	                }
	            ],
	            "menu":"菜品管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "新增",
	                        "删除"
	                    ],
	                    "menu":"论坛管理",
	                    "menuJump":"列表",
	                    "tableName":"forum"
	                }
	            ],
	            "menu":"论坛管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                    ],
	                    "menu":"公告信息管理",
	                    "menuJump":"列表",
	                    "tableName":"news"
	                }
	            ],
	            "menu":"公告信息管理"
	        }
	    ],
	    "frontMenu":[],
	    "hasBackLogin":"是",
	    "hasBackRegister":"否",
	    "hasFrontLogin":"否",
	    "hasFrontRegister":"否",
	    "roleName":"会员",
	    "tableName":"yonghu"
	}
]
    }
}
export default menu;
