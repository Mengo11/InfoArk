import 'package:flutter/material.dart';
import '../../data//models/ark_item.dart';
import '../../data/items_data.dart';
import '../../screens/Menucalculadora.dart';  // Importa CalculatorMenuPage

// Main screen for the resource calculator
class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String searchQuery = '';
  final List<SelectedItem> selectedItems = [];

  // agrega un item a la lista de seleccionados
  void addItem(ArkItem item) {
    if (!selectedItems.any((i) => i.item.name == item.name)) {
      setState(() {
        selectedItems.add(SelectedItem(item: item));
      });
    }
  }

  // Update the quantity of an item
  void updateQuantity(SelectedItem item, int newQty) {
    setState(() {
      item.quantity = newQty.clamp(1, 999);
    });
  }

  // Remove an item from the selected list
  void removeItem(SelectedItem item) {
    setState(() {
      selectedItems.remove(item);
    });
  }

  // Calculate total resources needed
  void calculateResources() {
    if (selectedItems.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Select at least one item')),
      );
      return;
    }

    final resourcesByItem = <String, Map<String, Resource>>{};
    final totalResources = <String, Resource>{};

    // Helper function to add resources recursively
    void addResources(ArkItem item, int quantity, String itemName) {
      final itemResources = resourcesByItem.putIfAbsent(itemName, () => {});
      for (var res in item.resources) {
        final isCraftable = arkItems.firstWhere(
              (arkItem) => arkItem.name == res.name,
          orElse: () => ArkItem(name: '', image: '', resources: []),
        );
        if (isCraftable.name.isNotEmpty) {
          addResources(isCraftable, res.quantity * quantity, itemName);
        } else {
          final totalQty = res.quantity * quantity;
          itemResources[res.name] = Resource(
            name: res.name,
            image: res.image,
            quantity: (itemResources[res.name]?.quantity ?? 0) + totalQty,
          );
          totalResources[res.name] = Resource(
            name: res.name,
            image: res.image,
            quantity: (totalResources[res.name]?.quantity ?? 0) + totalQty,
          );
        }
      }
    }

    for (var selected in selectedItems) {
      addResources(selected.item, selected.quantity, '${selected.item.name} x${selected.quantity}');
    }

    // Show dialog with resource breakdown
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Required Materials'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView(
            children: [
              // List resources per item
              for (var entry in resourcesByItem.entries) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    entry.key,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                for (var res in entry.value.values)
                  ListTile(
                    leading: Image.asset(
                      'assets/images/Fabricados/${res.image}',
                      width: 30,
                      errorBuilder: (_, __, ___) => const Icon(Icons.error),
                    ),
                    title: Text(res.name),
                    trailing: Text('${res.quantity}'),
                  ),
                const Divider(),
              ],
              // Show total resources
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Total Resources',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              for (var res in totalResources.values)
                ListTile(
                  leading: Image.asset(
                    'assets/images/Recurso/${res.image}',
                    width: 30,
                    errorBuilder: (_, __, ___) => const Icon(Icons.error),
                  ),
                  title: Text(res.name),
                  trailing: Text('${res.quantity}'),
                ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Filter items based on search query
    final filteredItems = searchQuery.isNotEmpty
        ? arkItems.where((item) => item.name.toLowerCase().contains(searchQuery.toLowerCase())).toList()
        : [];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resource Calculator'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const CalculatorMenuPage()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Search bar
            TextField(
              onChanged: (value) => setState(() => searchQuery = value),
              decoration: InputDecoration(
                hintText: 'Search item...',
                filled: true,
                fillColor: Colors.grey[800],
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Search results
            if (searchQuery.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: filteredItems.length,
                  itemBuilder: (_, index) {
                    final item = filteredItems[index];
                    return Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/images/Fabricados/${item.image}',
                          width: 40,
                          errorBuilder: (_, __, ___) => const Icon(Icons.error),
                        ),
                        title: Text(item.name),
                        onTap: () => addItem(item),
                      ),
                    );
                  },
                ),
              ),
            // Selected items
            if (selectedItems.isNotEmpty) ...[
              const Divider(height: 32),
              const Text(
                'Selected Items',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  itemCount: selectedItems.length,
                  itemBuilder: (_, index) {
                    final selected = selectedItems[index];
                    return Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        leading: Image.asset(
                          'assets/images/Recurso/${selected.item.image}',
                          width: 40,
                          errorBuilder: (_, __, ___) => const Icon(Icons.error),
                        ),
                        title: Text(selected.item.name),
                        subtitle: Text('Quantity: ${selected.quantity}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () => updateQuantity(selected, selected.quantity - 1),
                            ),
                            Text('${selected.quantity}'),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () => updateQuantity(selected, selected.quantity + 1),
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () => removeItem(selected),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              // Calculate button
              ElevatedButton.icon(
                onPressed: calculateResources,
                icon: const Icon(Icons.calculate),
                label: const Text('Calculate Materials'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class SelectedItem {
  final ArkItem item;
  int quantity;

  SelectedItem({required this.item, this.quantity = 1});
}