DROP TABLE IF EXISTS UAC_APP_PAGE_GROUP;
DROP TABLE IF EXISTS UAC_APP_PAGE;
DROP TABLE IF EXISTS UAC_APP_PAGE_GROUP_REL
DROP TABLE IF EXISTS UAC_APP_TRANS_GROUP;
DROP TABLE IF EXISTS UAC_APP_TRANS;
DROP TABLE IF EXISTS UAC_APP_TRANS_GROUP_REL

CREATE TABLE UAC_APP_PAGE
(
    PAGE_URL    VARCHAR(256) NOT NULL COMMENT '页面地址',
    CHANNEL_ID  VARCHAR(64)  NOT NULL COMMENT '渠道编号',
    APP_ID      BIGINT       NOT NULL COMMENT '应用ID',
    PAGE_NAME   VARCHAR(256) DEFAULT '' COMMENT '页面名称',
    PAGE_DESC   VARCHAR(256) DEFAULT '' COMMENT '页面描述',
    CREATE_TIME DATETIME     DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (PAGE_URL, CHANNEL_ID, APP_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_bin COMMENT='页面信息表';

-- ----------------------------
-- 18、UAC_APP_PAGE_GROUP(页面组表)
-- ----------------------------
CREATE TABLE UAC_APP_PAGE_GROUP
(
    GROUP_ID     VARCHAR(256) NOT NULL COMMENT '页面组ID',
    APP_ID       BIGINT       NOT NULL COMMENT '应用ID',
    GROUP_NAME   VARCHAR(256) NOT NULL COMMENT '页面组名称',
    GROUP_DESC   VARCHAR(256) NOT NULL COMMENT '页面组描述',
    GROUP_STATUS CHAR(1)  DEFAULT '1' COMMENT '页面组状态:1-开启,0-关闭',
    CREATE_BY    VARCHAR(256) NOT NULL COMMENT '创建人',
    CREATE_TIME  DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (GROUP_ID, APP_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_bin COMMENT='页面组表';


CREATE TABLE UAC_APP_PAGE_GROUP_REL
(
    PAGE_URL    VARCHAR(256) NOT NULL COMMENT '页面地址',
    CHANNEL_ID  VARCHAR(64)  NOT NULL COMMENT '渠道编号',
    GROUP_ID    VARCHAR(256) NOT NULL COMMENT '页面组ID',
    APP_ID      BIGINT       NOT NULL COMMENT '应用ID',
    CREATE_TIME DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (PAGE_URL, CHANNEL_ID, GROUP_ID, APP_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_bin COMMENT='页面组关联表';

CREATE TABLE UAC_APP_TRANS
(
    TRANS_URL         VARCHAR(256) NOT NULL COMMENT '交易地址',
    CHANNEL_ID        VARCHAR(64)  NOT NULL COMMENT '渠道编号',
    APP_ID            BIGINT       NOT NULL COMMENT '应用ID',
    TRANS_NAME        VARCHAR(256) DEFAULT '' COMMENT '交易名称',
    AMOUNT_MAP_EL     VARCHAR(64)  NOT NULL COMMENT '金额映射表达式',
    AUTHEN_MAP_EL     VARCHAR(64)  NOT NULL COMMENT '认证映射表达式',
    CREATE_TIME       DATETIME     DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (TRANS_URL,CHANNEL_ID, APP_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_bin COMMENT='交易信息表';

-- ----------------------------
-- 18、UAC_APP_PAGE_GROUP(页面组表)
-- ----------------------------
CREATE TABLE UAC_APP_TRANS_GROUP
(
    GROUP_ID     VARCHAR(256) NOT NULL COMMENT '交易组ID',
    APP_ID       BIGINT       NOT NULL COMMENT '应用ID',
    GROUP_NAME   VARCHAR(256) NOT NULL COMMENT '交易组名称',
    GROUP_DESC   VARCHAR(256) NOT NULL COMMENT '交易组描述',
    GROUP_STATUS CHAR(1)  DEFAULT '1' COMMENT '交易组状态:1-开启,0-关闭',
    CREATE_BY    VARCHAR(256) NOT NULL COMMENT '创建人',
    CREATE_TIME  DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (GROUP_ID, APP_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_bin COMMENT='交易组表';


CREATE TABLE UAC_APP_TRANS_GROUP_REL
(
    TRANS_URL    VARCHAR(256) NOT NULL COMMENT '交易地址',
    CHANNEL_ID  VARCHAR(64)  NOT NULL COMMENT '渠道编号',
    GROUP_ID    VARCHAR(256) NOT NULL COMMENT '交易组ID',
    APP_ID      BIGINT       NOT NULL COMMENT '应用ID',
    CREATE_TIME DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (TRANS_URL, CHANNEL_ID, GROUP_ID, APP_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_bin COMMENT='交易组关联表';