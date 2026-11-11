-- =====================================================================
-- V4: datos iniciales de categorias y productos
-- =====================================================================

insert into categorias (nombre, descripcion, estado, fecha_creacion)
values ('Analgésicos', 'Medicamentos para aliviar el dolor', true, systimestamp);

insert into categorias (nombre, descripcion, estado, fecha_creacion)
values ('Antibióticos', 'Medicamentos para combatir infecciones bacterianas', true, systimestamp);

insert into categorias (nombre, descripcion, estado, fecha_creacion)
values ('Antiinflamatorios', 'Medicamentos para reducir la inflamación', true, systimestamp);

insert into categorias (nombre, descripcion, estado, fecha_creacion)
values ('Vitaminas y Suplementos', 'Complementos nutricionales y vitamínicos', true, systimestamp);

-- Productos iniciales
insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Paracetamol 500mg', 5.50, 100, true, id, systimestamp
from categorias where nombre = 'Analgésicos';

insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Ibuprofeno 400mg', 8.00, 50, true, id, systimestamp
from categorias where nombre = 'Antiinflamatorios';

insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Amoxicilina 500mg', 12.50, 30, true, id, systimestamp
from categorias where nombre = 'Antibióticos';

insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Vitamina C 1000mg', 15.00, 80, true, id, systimestamp
from categorias where nombre = 'Vitaminas y Suplementos';

insert into productos (nombre, precio, stock, estado, categoria_id, fecha_creacion)
select 'Omeprazol 20mg', 10.00, 45, true, id, systimestamp
from categorias where nombre = 'Analgésicos';
