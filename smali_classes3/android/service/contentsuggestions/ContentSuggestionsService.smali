.class public abstract Landroid/service/contentsuggestions/ContentSuggestionsService;
.super Landroid/app/Service;
.source "ContentSuggestionsService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.contentsuggestions.ContentSuggestionsService"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterface:Landroid/service/contentsuggestions/IContentSuggestionsService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/contentsuggestions/ContentSuggestionsService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwrapClassificationCallback(Landroid/service/contentsuggestions/ContentSuggestionsService;Landroid/app/contentsuggestions/IClassificationsCallback;)Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/contentsuggestions/ContentSuggestionsService;->wrapClassificationCallback(Landroid/app/contentsuggestions/IClassificationsCallback;)Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwrapSelectionsCallback(Landroid/service/contentsuggestions/ContentSuggestionsService;Landroid/app/contentsuggestions/ISelectionsCallback;)Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/contentsuggestions/ContentSuggestionsService;->wrapSelectionsCallback(Landroid/app/contentsuggestions/ISelectionsCallback;)Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 49
    const-class v0, Landroid/service/contentsuggestions/ContentSuggestionsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/contentsuggestions/ContentSuggestionsService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    new-instance v0, Landroid/service/contentsuggestions/ContentSuggestionsService$1;

    invoke-direct {v0, p0}, Landroid/service/contentsuggestions/ContentSuggestionsService$1;-><init>(Landroid/service/contentsuggestions/ContentSuggestionsService;)V

    iput-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService;->mInterface:Landroid/service/contentsuggestions/IContentSuggestionsService;

    return-void
.end method

.method static synthetic blacklist lambda$wrapClassificationCallback$1(Landroid/app/contentsuggestions/IClassificationsCallback;ILjava/util/List;)V
    .locals 4
    .param p0, "callback"    # Landroid/app/contentsuggestions/IClassificationsCallback;
    .param p1, "statusCode"    # I
    .param p2, "classifications"    # Ljava/util/List;

    .line 179
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/contentsuggestions/IClassificationsCallback;->onContentClassificationsAvailable(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/service/contentsuggestions/ContentSuggestionsService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$wrapSelectionsCallback$0(Landroid/app/contentsuggestions/ISelectionsCallback;ILjava/util/List;)V
    .locals 4
    .param p0, "callback"    # Landroid/app/contentsuggestions/ISelectionsCallback;
    .param p1, "statusCode"    # I
    .param p2, "selections"    # Ljava/util/List;

    .line 168
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/contentsuggestions/ISelectionsCallback;->onContentSelectionsAvailable(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/service/contentsuggestions/ContentSuggestionsService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private blacklist wrapClassificationCallback(Landroid/app/contentsuggestions/IClassificationsCallback;)Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;
    .locals 1
    .param p1, "callback"    # Landroid/app/contentsuggestions/IClassificationsCallback;

    .line 177
    new-instance v0, Landroid/service/contentsuggestions/ContentSuggestionsService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/service/contentsuggestions/ContentSuggestionsService$$ExternalSyntheticLambda0;-><init>(Landroid/app/contentsuggestions/IClassificationsCallback;)V

    return-object v0
.end method

.method private blacklist wrapSelectionsCallback(Landroid/app/contentsuggestions/ISelectionsCallback;)Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;
    .locals 1
    .param p1, "callback"    # Landroid/app/contentsuggestions/ISelectionsCallback;

    .line 166
    new-instance v0, Landroid/service/contentsuggestions/ContentSuggestionsService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/service/contentsuggestions/ContentSuggestionsService$$ExternalSyntheticLambda1;-><init>(Landroid/app/contentsuggestions/ISelectionsCallback;)V

    return-object v0
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 129
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.contentsuggestions.ContentSuggestionsService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService;->mInterface:Landroid/service/contentsuggestions/IContentSuggestionsService;

    invoke-interface {v0}, Landroid/service/contentsuggestions/IContentSuggestionsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    sget-object v0, Landroid/service/contentsuggestions/ContentSuggestionsService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to bind to wrong intent (should be android.service.contentsuggestions.ContentSuggestionsService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist onClassifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;)V
.end method

.method public whitelist onCreate()V
    .locals 4

    .line 122
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/contentsuggestions/ContentSuggestionsService;->mHandler:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method public abstract whitelist onNotifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract whitelist onProcessContextImage(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V
.end method

.method public abstract whitelist onSuggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;)V
.end method
