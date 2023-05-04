package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.config;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.*;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.http.HttpMethod;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

@Configuration
public class MyDataRestConfig implements RepositoryRestConfigurer{

    @Override
    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors){

        HttpMethod[] theUnsupportedActions = {
                HttpMethod.PUT,
                HttpMethod.PATCH,
                HttpMethod.DELETE,
                HttpMethod.GET
        };

        disableHttpMethods(Color.class, config, theUnsupportedActions);
        disableHttpMethods(Imagen.class, config, theUnsupportedActions);
        disableHttpMethods(Productocolor.class, config, theUnsupportedActions);
        disableHttpMethods(Producto.class, config, theUnsupportedActions);
        disableHttpMethods(Modelo.class, config, theUnsupportedActions);
        disableHttpMethods(Tipo.class, config, theUnsupportedActions);
        disableHttpMethods(Medida.class, config, theUnsupportedActions);



    }

    private void disableHttpMethods(Class aClass, RepositoryRestConfiguration config, HttpMethod[] theUnsupportedActions) {
        config.getExposureConfiguration()
                .forDomainType(aClass)
                .withItemExposure((metdata, httpMethods) -> httpMethods.disable(theUnsupportedActions))
                .withCollectionExposure((metdata, httpMethods) -> httpMethods.disable(theUnsupportedActions));
    }

}
