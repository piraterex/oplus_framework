.class public Landroid/telecom/PhoneAccountSuggestionService;
.super Landroid/app/Service;
.source "PhoneAccountSuggestionService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.PhoneAccountSuggestionService"


# instance fields
.field private final blacklist mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInterface:Lcom/android/internal/telecom/IPhoneAccountSuggestionService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackMap(Landroid/telecom/PhoneAccountSuggestionService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/telecom/PhoneAccountSuggestionService;->mCallbackMap:Ljava/util/Map;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Landroid/telecom/PhoneAccountSuggestionService$1;

    invoke-direct {v0, p0}, Landroid/telecom/PhoneAccountSuggestionService$1;-><init>(Landroid/telecom/PhoneAccountSuggestionService;)V

    iput-object v0, p0, Landroid/telecom/PhoneAccountSuggestionService;->mInterface:Lcom/android/internal/telecom/IPhoneAccountSuggestionService;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/PhoneAccountSuggestionService;->mCallbackMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public whitelist onAccountSuggestionRequest(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .line 96
    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Landroid/telecom/PhoneAccountSuggestionService;->mInterface:Lcom/android/internal/telecom/IPhoneAccountSuggestionService;

    invoke-interface {v0}, Lcom/android/internal/telecom/IPhoneAccountSuggestionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist suggestPhoneAccounts(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountSuggestion;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p2, "suggestions":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountSuggestion;>;"
    iget-object v0, p0, Landroid/telecom/PhoneAccountSuggestionService;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback;

    .line 111
    .local v0, "callback":Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 112
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "No suggestions requested for the number %s"

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return-void

    .line 116
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback;->suggestPhoneAccounts(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Landroid/os/RemoteException;
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Remote exception calling suggestPhoneAccounts"

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
