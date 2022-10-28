### Аналіз функціональних та нефункціональних вимог

| №<br>загрози | Назва зв’язку | STRIDE-клас загрози | Назва загрози | Опис загрози |
|--------------|:-------------:|:-------------------:|:-------------:|:------------:|
| 1 | SyncReader-GoogleTranslate-Request | Repudiation | External Entity Google Translate Potentially Denies Receiving Data | Google Translate claims that it did not receive data from a process on the other side of the trust boundary. Consider using logging or auditing to record the source, time, and summary of the received data. |
| 2 | SyncReader-GoogleTranslate-Request | Denial Of Service | Data Flow UDP Is Potentially Interrupted | An external agent interrupts data flowing across a trust boundary in either direction. |
| 3 | SyncReader-GoogleTranslate-Response | Repudiation | External Entity Mobile Client SyncReader Potentially Denies Receiving Data | Mobile Client SyncReader claims that it did not receive data from a process on the other side of the trust boundary. Consider using logging or auditing to record the source, time, and summary of the received data. |
| 4 | SyncReader-GoogleTranslate-Response | Denial Of Service | Data Flow SyncReader-GoogleTranslate-Request Is Potentially Interrupted | An external agent interrupts data flowing across a trust boundary in either direction. |
