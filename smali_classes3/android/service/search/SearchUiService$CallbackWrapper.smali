.class final Landroid/service/search/SearchUiService$CallbackWrapper;
.super Ljava/lang/Object;
.source "SearchUiService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/search/SearchUiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/List<",
        "Landroid/app/search/SearchTarget;",
        ">;>;"
    }
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/app/search/ISearchCallback;


# direct methods
.method constructor blacklist <init>(Landroid/app/search/ISearchCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/search/ISearchCallback;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mCallback:Landroid/app/search/ISearchCallback;

    .line 181
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0

    .line 175
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/service/search/SearchUiService$CallbackWrapper;->accept(Ljava/util/List;)V

    return-void
.end method

.method public blacklist accept(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/search/SearchTarget;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p1, "searchTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/search/SearchTarget;>;"
    :try_start_0
    iget-object v0, p0, Landroid/service/search/SearchUiService$CallbackWrapper;->mCallback:Landroid/app/search/ISearchCallback;

    if-eqz v0, :cond_0

    .line 190
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Landroid/app/search/ISearchCallback;->onResult(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchUiService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
