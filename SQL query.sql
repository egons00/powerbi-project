SELECT  sod.SalesOrderID    
       ,sod.ProductID
       ,sod.LineTotal
       ,sod.ModifiedDate
       ,st.TerritoryID      
       ,st."GROUP"              
       ,st.Name
       ,st.SalesYTD
       ,st.SalesLastYear              
       ,p.Color
       ,p.StandardCost
FROM Sales.SalesOrderHeader soh
FULL JOIN Sales.SalesOrderDetail sod
ON soh.SalesOrderID = sod.SalesOrderID
FULL JOIN Production.ProductSubcategory psc
ON sod.ProductID = psc.ProductSubcategoryID
FULL JOIN Production.ProductCategory pc
ON psc.ProductCategoryID = pc.ProductCategoryID
FULL JOIN Sales.SalesTerritory st
ON soh.TerritoryID = st.TerritoryID
FULL JOIN Production.Product p
ON sod.ProductID = p.ProductID