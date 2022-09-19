# data-platform-business-partner-sql 
data-platform-business-partner-sql  は、周辺業務システムと連携されたBP（ビジネスパートナ）データを保存するSQLテーブルを作成するためのレポジトリです。  
data-platform-business-partner-sql  は、そのままクラウド環境におけるアプリケーションにも、適用可能です。  

## 前提条件  
data-platform-business-partner-sql  は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview 

## sqlの設定ファイル  
data-platform-business-partner-sql には、sqlの設定ファイルとして、以下のファイルが含まれます。 

* data-platform-business-partner-sql-general-data.sql （データ連携基盤 ビジネスパートナ - 一般データ）
* data-platform-business-partner-sql-role-data.sql（データ連携基盤 ビジネスパートナ - ロールデータ）  
* data-platform-business-partner-sql-address-data.sql（データ連携基盤 ビジネスパートナ - 住所データ）
* data-platform-business-partner-sql-bank-data.sql （データ連携基盤 ビジネスパートナ - 銀行データ）
* data-platform-business-partner-contact-data.sql （データ連携基盤　ビジネスパートナ - コンタクトデータ）
* data-platform-business-partner-sql-customer-data.sql （データ連携基盤 ビジネスパートナ - 得意先データ）
* data-platform-business-partner-sql-customer-sales-area-data.sql（データ連携基盤 ビジネスパートナ - 得意先 販売組織データ）
* data-platform-business-partner-sql-customer-partner-function-data.sql（データ連携基盤 ビジネスパートナ - 得意先 取引先機能データ）
* data-platform-business-partner-sql-customer-company-data.sql（データ連携基盤 ビジネスパートナ - 得意先 会社コードデータ）   
* data-platform-business-partner-sql-supplier-data.sql （データ連携基盤 ビジネスパートナ - 仕入先データ）
* data-platform-business-partner-sql-supplier-purchasing-organization-data.sql（データ連携基盤 ビジネスパートナ - 仕入先 購買組織データ）
* data-platform-business-partner-sql-supplier-partner-function-data.sql （データ連携基盤 ビジネスパートナ - 仕入先 取引先機能データ）
* data-platform-business-partner-sql-supplier-company-data.sql（データ連携基盤 ビジネスパートナ - 仕入先 会社コードデータ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法  
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  