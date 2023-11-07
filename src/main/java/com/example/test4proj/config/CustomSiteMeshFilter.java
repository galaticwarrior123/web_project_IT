package com.example.test4proj.config;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

public class CustomSiteMeshFilter extends ConfigurableSiteMeshFilter {
    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
        builder.addDecoratorPath("/user/article/*","/WEB-INF/views/decorators/admin.jsp");
        builder.addDecoratorPath("/user/*","/WEB-INF/views/decorators/user.jsp");
        builder.addDecoratorPath("/login/*","/WEB-INF/views/decorators/login.jsp");
        builder.addDecoratorPath("/register/*","/WEB-INF/views/decorators/register.jsp");
        builder.addDecoratorPath("/*","/WEB-INF/views/decorators/main.jsp");
    }

}