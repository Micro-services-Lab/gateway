
```flowchart
flowchart TD
    C["Client"] --> G["API Gateway"]
    G --> A["Auth Service"]
    G --> U["User Service"]
    A --> AD[("Auth Database")]
    U --> UD[("User Database")]
    A -. "UserCreated event later" .-> R["RabbitMQ"]
    R -.-> U
    R -.-> N["Notification Service"]

```
### Registration
```
POST /api/auth/register
        ↓
API Gateway
        ↓
Auth Service creates account
        ↓
Auth Service requests profile creation from User Service
        ↓
Auth Service returns token and user information
```

### Example request:

```
{
  "email": "anower@example.com",
  "password": "StrongPassword123",
  "first_name": "Anower",
  "last_name": "Hossain"
}

```
