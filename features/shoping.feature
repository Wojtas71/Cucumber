Feature: Wyszukiwanie i zakup "Płynu Ludwik 5l" na allegro.pl

Scenario: Wyszukiwanie "Płynu Ludwik 5l"
Given Użytkownik znajduje się na stronie głównej allegro.pl
When Użytkownik wpisuje "Płyn Ludwik 5l" w pasek wyszukiwania
    And Użytkownik naciska przycisk "Szukaj"    
Then Użytkownik widzi listę wyników wyszukiwania dla "Płyn Ludwik 5l"

Scenario: Dodanie "Płynu Ludwik 5l" do koszyka
Given Użytkownik znalazł produkt "Płyn Ludwik 5l" na liście wyników wyszukiwania
When Użytkownik klika na nazwę produktu, aby przejść do strony szczegółów produktu
    And Użytkownik wybiera odpowiednią ilość produktu
    And Użytkownik dodaje produkt do koszyka
Then Produkt "Płyn Ludwik 5l" jest dodany do koszyka użytkownika

Scenario: Przejście do procesu płatności
Given Produkt "Płyn Ludwik 5l" został dodany do koszyka użytkownika
When Użytkownik przechodzi do koszyka
    And Użytkownik naciska przycisk "Dostawa i płatność"
Then Użytkownik zostaje przekierowany do procesu płatności

Scenario: Walidacja zakupu
Given Użytkownik przeszedł przez proces płatności i dokonał zakupu
When Użytkownik otrzymuje potwierdzenie zakupu na swojej skrzynce pocztowej
Then Użytkownik sprawdza swój email w celu potwierdzenia zakupu
    And Użytkownik sprawdza zawartość emaila w poszukiwaniu potwierdzenia zakupu
    And Użytkownik sprawdza czy numer zamówienia się zgadza