
select b.book_id, a.author_id 
from book b left join book_author ba 
on b.book_id = ba.book_id left join author a 
on ba.author_id = a.author_id