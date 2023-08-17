DROP TABLE if EXISTS test_demo;
CREATE TABLE test_demo
(
    id          bigint(0)    NOT NULL COMMENT '主键',
    tenant_id   varchar(20)  NULL DEFAULT '000000' COMMENT '租户编号',
    dept_id     bigint(0)    NULL DEFAULT NULL COMMENT '部门id',
    user_id     bigint(0)    NULL DEFAULT NULL COMMENT '用户id',
    order_num   int(0)       NULL DEFAULT 0 COMMENT '排序号',
    test_key    varchar(255) NULL DEFAULT NULL COMMENT 'key键',
    value       varchar(255) NULL DEFAULT NULL COMMENT '值',
    version     int(0)       NULL DEFAULT 0 COMMENT '版本',
    create_dept bigint(0)    NULL DEFAULT NULL COMMENT '创建部门',
    create_time datetime(0)  NULL DEFAULT NULL COMMENT '创建时间',
    create_by   bigint(0)    NULL DEFAULT NULL COMMENT '创建人',
    update_time datetime(0)  NULL DEFAULT NULL COMMENT '更新时间',
    update_by   bigint(0)    NULL DEFAULT NULL COMMENT '更新人',
    del_flag    int(0)       NULL DEFAULT 0 COMMENT '删除标志',
    PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB COMMENT = '测试单表';

DROP TABLE if EXISTS test_tree;
CREATE TABLE test_tree
(
    id          bigint(0)    NOT NULL COMMENT '主键',
    tenant_id   varchar(20)  NULL DEFAULT '000000' COMMENT '租户编号',
    parent_id   bigint(0)    NULL DEFAULT 0 COMMENT '父id',
    dept_id     bigint(0)    NULL DEFAULT NULL COMMENT '部门id',
    user_id     bigint(0)    NULL DEFAULT NULL COMMENT '用户id',
    tree_name   varchar(255) NULL DEFAULT NULL COMMENT '值',
    version     int(0)       NULL DEFAULT 0 COMMENT '版本',
    create_dept bigint(0)    NULL DEFAULT NULL COMMENT '创建部门',
    create_time datetime(0)  NULL DEFAULT NULL COMMENT '创建时间',
    create_by   bigint(0)    NULL DEFAULT NULL COMMENT '创建人',
    update_time datetime(0)  NULL DEFAULT NULL COMMENT '更新时间',
    update_by   bigint(0)    NULL DEFAULT NULL COMMENT '更新人',
    del_flag    int(0)       NULL DEFAULT 0 COMMENT '删除标志',
    PRIMARY KEY (id) USING BTREE
) ENGINE = InnoDB COMMENT = '测试树表';


INSERT INTO test_demo(id, tenant_id, dept_id, user_id, order_num, test_key, value, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (1, '000000', 102, 4, 1, '测试数据权限', '测试', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_demo(id, tenant_id, dept_id, user_id, order_num, test_key, value, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (2, '000000', 102, 3, 2, '子节点1', '111', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_demo(id, tenant_id, dept_id, user_id, order_num, test_key, value, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (3, '000000', 102, 3, 3, '子节点2', '222', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_demo(id, tenant_id, dept_id, user_id, order_num, test_key, value, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (4, '000000', 108, 4, 4, '测试数据', 'demo', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_demo(id, tenant_id, dept_id, user_id, order_num, test_key, value, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (5, '000000', 108, 3, 13, '子节点11', '1111', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_demo(id, tenant_id, dept_id, user_id, order_num, test_key, value, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (6, '000000', 108, 3, 12, '子节点22', '2222', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_demo(id, tenant_id, dept_id, user_id, order_num, test_key, value, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (7, '000000', 108, 3, 11, '子节点33', '3333', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_demo(id, tenant_id, dept_id, user_id, order_num, test_key, value, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (8, '000000', 108, 3, 10, '子节点44', '4444', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_demo(id, tenant_id, dept_id, user_id, order_num, test_key, value, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (9, '000000', 108, 3, 9, '子节点55', '5555', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_demo(id, tenant_id, dept_id, user_id, order_num, test_key, value, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (10, '000000', 108, 3, 8, '子节点66', '6666', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_demo(id, tenant_id, dept_id, user_id, order_num, test_key, value, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (11, '000000', 108, 3, 7, '子节点77', '7777', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_demo(id, tenant_id, dept_id, user_id, order_num, test_key, value, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (12, '000000', 108, 3, 6, '子节点88', '8888', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_demo(id, tenant_id, dept_id, user_id, order_num, test_key, value, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (13, '000000', 108, 3, 5, '子节点99', '9999', 0, 103, sysdate(), 1, NULL, NULL, 0);

INSERT INTO test_tree(id, tenant_id, parent_id, dept_id, user_id, tree_name, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (1, '000000', 0, 102, 4, '测试数据权限', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_tree(id, tenant_id, parent_id, dept_id, user_id, tree_name, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (2, '000000', 1, 102, 3, '子节点1', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_tree(id, tenant_id, parent_id, dept_id, user_id, tree_name, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (3, '000000', 2, 102, 3, '子节点2', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_tree(id, tenant_id, parent_id, dept_id, user_id, tree_name, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (4, '000000', 0, 108, 4, '测试树1', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_tree(id, tenant_id, parent_id, dept_id, user_id, tree_name, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (5, '000000', 4, 108, 3, '子节点11', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_tree(id, tenant_id, parent_id, dept_id, user_id, tree_name, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (6, '000000', 4, 108, 3, '子节点22', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_tree(id, tenant_id, parent_id, dept_id, user_id, tree_name, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (7, '000000', 4, 108, 3, '子节点33', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_tree(id, tenant_id, parent_id, dept_id, user_id, tree_name, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (8, '000000', 5, 108, 3, '子节点44', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_tree(id, tenant_id, parent_id, dept_id, user_id, tree_name, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (9, '000000', 6, 108, 3, '子节点55', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_tree(id, tenant_id, parent_id, dept_id, user_id, tree_name, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (10, '000000', 7, 108, 3, '子节点66', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_tree(id, tenant_id, parent_id, dept_id, user_id, tree_name, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (11, '000000', 7, 108, 3, '子节点77', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_tree(id, tenant_id, parent_id, dept_id, user_id, tree_name, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (12, '000000', 10, 108, 3, '子节点88', 0, 103, sysdate(), 1, NULL, NULL, 0);
INSERT INTO test_tree(id, tenant_id, parent_id, dept_id, user_id, tree_name, version, create_dept, create_time, create_by, update_time, update_by, del_flag) VALUES (13, '000000', 10, 108, 3, '子节点99', 0, 103, sysdate(), 1, NULL, NULL, 0);
