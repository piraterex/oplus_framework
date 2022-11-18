.class public abstract Landroid/service/search/SearchUiService;
.super Landroid/app/Service;
.source "SearchUiService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/search/SearchUiService$CallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.search.SearchUiService"

.field private static final blacklist TAG:Ljava/lang/String; = "SearchUiService"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterface:Landroid/service/search/ISearchUiService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/search/SearchUiService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoDestroy(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/search/SearchUiService;->doDestroy(Landroid/app/search/SearchSessionId;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    new-instance v0, Landroid/service/search/SearchUiService$1;

    invoke-direct {v0, p0}, Landroid/service/search/SearchUiService$1;-><init>(Landroid/service/search/SearchUiService;)V

    iput-object v0, p0, Landroid/service/search/SearchUiService;->mInterface:Landroid/service/search/ISearchUiService;

    return-void
.end method

.method private blacklist doDestroy(Landroid/app/search/SearchSessionId;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/app/search/SearchSessionId;

    .line 165
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 166
    invoke-virtual {p0, p1}, Landroid/service/search/SearchUiService;->onDestroy(Landroid/app/search/SearchSessionId;)V

    .line 167
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 118
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.search.SearchUiService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/service/search/SearchUiService;->mInterface:Landroid/service/search/ISearchUiService;

    invoke-interface {v0}, Landroid/service/search/ISearchUiService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.search.SearchUiService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchUiService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()V
    .locals 4

    .line 111
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/search/SearchUiService;->mHandler:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method public greylist onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V
    .locals 0
    .param p1, "context"    # Landroid/app/search/SearchContext;
    .param p2, "sessionId"    # Landroid/app/search/SearchSessionId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    return-void
.end method

.method public abstract whitelist onDestroy(Landroid/app/search/SearchSessionId;)V
.end method

.method public abstract whitelist onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
.end method

.method public abstract whitelist onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/search/SearchSessionId;",
            "Landroid/app/search/Query;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/search/SearchTarget;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public whitelist onSearchSessionCreated(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V
    .locals 0
    .param p1, "context"    # Landroid/app/search/SearchContext;
    .param p2, "sessionId"    # Landroid/app/search/SearchSessionId;

    .line 143
    return-void
.end method
