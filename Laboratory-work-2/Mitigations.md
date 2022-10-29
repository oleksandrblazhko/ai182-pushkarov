| № загрози | MTMT-рекомендації з усунення загроз |
|---|:-:|
| 1 | Implement implicit jailbreak or rooting detection. Refer: https://aka.ms/tmtauthz#rooting-detection |
| 2 | Implement proper authorization mechanism in ASP.NET Web API. Refer: https://aka.ms/tmtauthz#authz-aspnet |
| 3 | Ensure that proper exception handling is done in ASP.NET Web API. Refer: https://aka.ms/tmtxmgmt#exception |
| 4 | Implement Certificate Pinning. Refer: https://aka.ms/tmtcommsec#cert-pinning |
| 5 | Force all traffic to Web APIs over HTTPS connection. Refer: https://aka.ms/tmtcommsec#webapi-https |
| 6 | Encrypt sensitive or PII data written to phones local storage. Refer: https://aka.ms/tmtdata#pii-phones |
| 7 | Encrypt sections of Web API's configuration files that contain sensitive data. Refer: https://aka.ms/tmtconfigmgmt#config-sensitive |
| 8 | Ensure that auditing and logging is enforced on Web API. Refer: https://aka.ms/tmtauditlog#logging-web-api |
| 9 | Use ADAL libraries to manage token requests from OAuth2 clients to AAD (or on-premises AD). Refer: https://aka.ms/tmtauthn#adal-oauth2 |
| 10 | Ensure that standard authentication techniques are used to secure Web APIs. Refer: https://aka.ms/tmtauthn#authn-secure-api |
| 11 | Ensure that model validation is done on Web API methods. Refer: https://aka.ms/tmtinputval#validation-api  Implement input validation on all string type parameters accepted by Web API methods. Refer: https://aka.ms/tmtinputval#string-api |
| 12 | Obfuscate generated binaries before distributing to end users. Refer: https://aka.ms/tmtdata#binaries-end |
| 13 | Ensure that type-safe parameters are used in Web API for data access. Refer: https://aka.ms/tmtinputval#typesafe-api |
