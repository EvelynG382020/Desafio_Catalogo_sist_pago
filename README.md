Desafio Catalogo Sist de pago usando polimorfismo entre las tablas para saber relacionar y acceder a éstas.
● Implementar un catálogo de productos que no sea estático. Cada producto debe estar categorizado por dos subtipos principales: Digital y Físico. Un producto digital contiene sólo una foto y los productos físicos pueden tener muchas.
● Registrar los pagos. Los pagos se hacen a través de diferentes plataformas: Stripe, Paypal y Transbank. Al pagar con Transbank puede ser con tarjeta de crédito, webpay o oneclick.
Crear una aplicación en Rails que contenga:
1. Las migraciones y modelos para manejar los tipos de productos.
2. Las migraciones y modelos para manejar los medios de pago.
3. Un formulario para simular los medios de pago. Implementarás un modelo Orden de
Compra (básico) para poder asociarlo al pago.
    Los modelos polimorficos serán: Table Products, se añade una columna Category polymorphic para categorizar en dos subtipos Digital y Fisico, y un producto Digital puede tener solo una foto y la Fisica varias. Los modelos Digital y Physical tendrán acceso a la table Images por ser polymorfica. Por tanto se crea Table Images para crear imageable polymorphic y así se accedan a ésta. Table Payment, lo mismo payable polymorphics para que los tipos de pagos puedan acceder a esta tabla, los tipos de pagos son Stripe, Paypal y Transbank. Table Transbanks, transbankable, polymorphic para que puedan acceder a ésta los tipos de medios de pago de Transbank como lo son webpay, creditcard, onclick.
    Cada vez que una tabla es polymorphic, en sus modelos se debe relacionar así: Model Product: belongs_to :category, polymorphic: true y las tablas que acceden o se relacionan con ésta en sus modelos debe quedar has_may o has_one: products, as: :category (que son Digital y Physical) Model Payment: belongs_to :payable, polymorphic: true y las tablas que acceden o se relaciona con ésta en sus modelos debe quedar has_many o has_one: payments, as: :payable (Stripe, Paypal, Transbank) Model Transbank: belongs_to :transbankable, polymorphic: true y las tablas que acceden o se relaciona con ésta en sus modelos debe quedar has_many o has_one: transbanks, as: :transbankable (Webpay, Creditcard, Onclick)
    
     REVISA EL LINK PARA LA PARTE II DEL DESAFIO ANIMALES Y MEJORAR EL CODIGO UTILIZANDO POLIMORFISMO
     
https://github.com/EvelynG382020/Desafio_parteII_pets_polymorphic


