run: main.sql
	sudo mysql -u root <./main.sql
main.sql: base.sql query.sql
	cat ./base.sql ./query.sql >./main.sql
base.sql: main.sh input.txt
	./main.sh ./input.txt >./base.sql
clean:
	rm ./base.sql ./main.sql
