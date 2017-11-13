CREATE procedure DP
(@valor money)
as
begin
	select * from dbo.Producto
	where PTotal>@valor
end
exec DP 20

CREATE procedure IP
(@valor1 int)
as
begin
	select * from dbo.Inventario
	where Cantidad>@valor1
end
exec IP 100

CREATE procedure PDO
(@valor2 varchar(50))
as
begin
	select * from dbo.Orden
	where Producto like @valor2
end
exec PDO 'tenis'

CREATE procedure PS
(@valor3 varchar(100))
as
begin
	UPDATE dbo.Proveedores
	Set Provedores=@valor3
	where Proveedor='LaPaz'
end
exec PS 'Sucursal LaPaz'

CREATE procedure DP2
(@valor4 money)
as
begin
	UPDATE dbo.Producto
	set PTotal=@valor4
	where tipo='zapato'
end
exec DP2 30.00

CREATE function f1(@valor1 int, @valor2 int)
returns int
as
begin
	return @valor1*@valor2
end
select dbo.f1(5, 20)

CREATE trigger t1
on dbo.Producto
after update
as
begin
	select *
	from inserted
	select *
	from deleted
end

select * from producto
update producto set precio=800.00
where nombre='adidas'

create trigger t2 on producto
instead of update
as
begin
update producto
set precio = 700.00 where precio=650.00
end 
update producto 
set precio = 500.00 where precio=200.00
select * from Producto