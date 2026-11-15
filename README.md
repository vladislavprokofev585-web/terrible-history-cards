# terrible-history-cards
Картинки и конвейер для Instagram-аккаунта @terrible_history (Metricool brandId 8125700).

- `cards/istoriya_NN.png` - готовые карточки 1080x1350, публичные ссылки: https://raw.githubusercontent.com/vladislavprokofev585-web/terrible-history-cards/main/cards/istoriya_NN.png
- `queue.json` - очередь постов. Поле `scheduled` = дата (YYYY-MM-DD), на которую пост уже поставлен в Metricool; `null` = ещё не запланирован.
- `src/stories.js` - тексты историй (массив, номер истории = позиция, начиная с 1).
- `src/cards.html` - шаблон карточки (белый фон, подпись @terrible_history), шрифт подбирается автоматически.
- `src/render.sh` - рендер карточек через Chrome: `bash src/render.sh 31 32`.
