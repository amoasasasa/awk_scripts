OUTPUTS:
Unique ip addresses from logfile.

To find ipv4 and ipv6 ip addresses, i used two regular expressions. To get unique ip , stored them in associative array. 

<img width="255" alt="image" src="https://github.com/user-attachments/assets/12de2a6f-103f-4625-9ea9-8724a1175241" />

Usernames

To find usernames, i used match function in awk. Checked everyline for field start with " user" and ends with 1 or more number with trailing space. 

<img width="230" alt="image" src="https://github.com/user-attachments/assets/cce5c62f-3ba8-4837-b745-edd0cc26889f" />

Http status code count

Status codes have fix position in log. Created associative array with key as status code and value as count. Displayed them in end using for loop.

<img width="255" alt="image" src="https://github.com/user-attachments/assets/99de2d67-65bb-4d14-b993-d8a96e62a87f" />

Failed login attempts 

Checked log file for lines that are ending with 403 codes. then extracted timestamp field and printed it.

<img width="296" alt="image" src="https://github.com/user-attachments/assets/3cf62541-6ce0-4547-b42a-3c5330683092" />

Summary report

<img width="256" alt="image" src="https://github.com/user-attachments/assets/4cf307b6-bbdb-4e43-b32e-ca4be50c8c7c" />

