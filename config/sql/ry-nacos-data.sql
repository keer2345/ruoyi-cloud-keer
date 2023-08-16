insert into tenant_info(id, kp, tenant_id, tenant_name, tenant_desc, create_source, gmt_create, gmt_modified) values
(1, '1', 'dev', 'dev', '开发环境', NULL, 1641741261189, 1641741261189),
(2, '1', 'prod', 'prod', '生产环境', NULL, 1641741270448, 1641741287236);


INSERT INTO `config_info` (`id`, `data_id`, `group_id`, `content`, `md5`, `gmt_create`, `gmt_modified`, `src_user`, `src_ip`, `app_name`, `tenant_id`, `c_desc`, `c_use`, `effect`, `type`, `c_schema`, `encrypted_data_key`) VALUES
(100, 'application-common-dev.yml', 'RUOYI_CLOUD_KEER', '# yml ...', '075f20e4f8aad7700cc353b9af37beda', '2023-08-15 14:21:13', '2023-08-15 14:21:13', NULL, '182.89.56.23', '', 'dev', '通用配置基础配置', NULL, NULL, 'yaml', NULL, ''),
(200, 'ruoyi-monitor-dev.yml', 'RUOYI_CLOUD_KEER', '# yml ...', '7a93ce64aff47472713f9f3bbf5d63ea', '2023-08-15 13:37:14', '2023-08-16 07:55:05', 'nacos', '182.89.56.23', '', 'dev', '监控中心', '', '', 'yaml', '', '');
