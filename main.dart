void main() { 
// Создание списка товаров 
List<String> products = [ 
 'Ноутбук',
 'Телефон',
 'Наушники',
 'Клавиатура',
 'Мышь', ];
// Создание Map с ценами 
Map<String, int> prices = { 
 'Ноутбук': 80000,
 'Телефон': 50000,
 'Клавиатура': 3000,
 'Наушники' : 5000,
 'Мышь': 2000, }; 
// Создание Set с категориями 
Set<String> categories = {
 'електроника',
 'Аксессуары',
 'Компьютеры', };
// Вывод всех товаров через for-in 
print('===== СПИСОК ТОВАРОВ =====');
for (var product in products) 
{ print(product); }
// Цикл for с порядковым номером 
print('\n===== НУМЕРАЦИЯ ТОВАРОВ =====');
for (int i = 0; i < products.length; i++) { 
    print('${i + 1}. ${products[i]}'); }
// Подсчёт количества, суммы и средней цены 
int total = 0;
for (var price in prices.values) { 
    total += price; 
    }
double average = total / prices.length;
print('\n===== СТАТИСТИКА ====='); 
print('Количество товаров: ${products.length}'); 
print('Сумма всех цен: $total сом'); 
print('Средняя цена: $average сом');
// Цикл while: число от 1 до 10
print('\n===== ЦИКЛ WHILE =====');
int number = 1;
while (number <= 10) { 
    print(number); 
    number++; 
   }
// Цикл while:четные число от 1 до 20 
int ewenNumber = 1;
while (ewenNumber<= 20) {
    if (ewenNumber % 2 == 0) {
    }
    ewenNumber++;
}
// Поиск товара с помощью break 
print('\n===== ПОИСК ТОВАРА =====');
String searchProduct = 'Наушники'; 
bool found = false;

for (var product in products) { 
    if (product == searchProduct) { 
        print('Товар найден: $product'); 
        found = true; 
        break;
         }
     }
if (!found) { 
    print('Товар не найден'); 
}
// Пропуск товаров с ценой меньше 5000 
print('\n===== CONTINUE =====');
for (var product in products) { 
    int price = prices[product]!;
if (price < 5000) {
  continue;
}

print('$product — $price сом');
}
// Вывод товаров и цен из Map 
print('\n===== ТОВАРЫ И ЦЕНЫ =====');
for (var entry in prices.entries) { 
    print('${entry.key} — ${entry.value} сом'); }
 
// Итоговая статистика 
print('\n===== ИТОГОВАЯ СТАТИСТИКА =====');
print('Количество товаров: ${products.length}'); 
print('Количество категорий: ${categories.length}'); 
print('Общая стоимость товаров: $total сом'); 
print('Средняя цена товара: $average сом');
// Самый дорогой и самый дешёвый товар 
String mostExpensive = products.first; 
String cheapest = products.first;
for (var product in products) { 
    if (prices[product]! > prices[mostExpensive]!) { 
    mostExpensive = product; 
    }
if (prices[product]! < prices[cheapest]!) {
  cheapest = product;
 }
}
print('Самый дорогой товар: $mostExpensive'); 
print('Самый дешёвый товар: $cheapest');

// Вывод категорий 
print('\n===== КАТЕГОРИИ =====');
for (var category in categories) { print(category); }
}