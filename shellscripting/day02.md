<!-- Loops in shell scripting -->
### For Loops

A `for` loop in shell scripting allows you to iterate over a list of items.

**Basic Syntax:**
```bash
for item in list
do
    command
done
```

**Example:**
```bash
for i in 1 2 3 4 5
do
    echo "Number: $i"
done
```

You can also use brace expansion or command substitution:
```bash
for i in {1..5}
do
    echo "Number: $i"
done
```

**Iterating over files:**
```bash
for file in *.txt
do
    echo "Processing $file"
done
```